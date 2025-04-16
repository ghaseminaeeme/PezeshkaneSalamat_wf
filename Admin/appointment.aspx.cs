using DalWebSite;
using SubSonic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using website;

namespace pezeshkaneSalamat_wf.Admin
{
    public partial class appointment : System.Web.UI.Page
    {
        ClassControl _ClassControl = new ClassControl();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["did"].ToString() != "")
            {
                TblDoctor _TblDoctor = new TblDoctor(int.Parse(Request.QueryString["did"]));
                LbSubject.Text = _TblDoctor.DName;
            }
            else
            {
                Response.Redirect("doctors.aspx");
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            suc.Visible = false;
            err.Visible = false;
            try
            {
                DateTime today = DateTime.Now;
                int shift = int.Parse(DrdShift.SelectedValue);
                int interval = Convert.ToInt32(TxtTime.Text.Trim());
                int count = int.Parse(TxtNum.Text);
                int doctorId = Convert.ToInt32(Request.QueryString["did"]);
                string startTimeStr = TxtDate.Text.Trim(); // format: "HH:mm"

                TimeSpan newStart = TimeSpan.Parse(startTimeStr);
                TimeSpan newEnd = newStart.Add(TimeSpan.FromMinutes(interval * count));

                // Get existing configs for this doctor
                var existingConfigs = new Select()
                    .From(TblAppointmentConfig.Schema)
                    .Where(TblAppointmentConfig.Columns.ADoctorId).IsEqualTo(doctorId)
                    .ExecuteTypedList<TblAppointmentConfig>();

                // 1. Check if doctor already has a config for this shift
                bool hasSameShift = existingConfigs.Any(c => c.AShift == shift);
                if (hasSameShift)
                {
                    err.InnerText = "برای این شیفت قبلاً زمان‌بندی ثبت شده است.";
                    err.Visible = true;
                    return;
                }

                // 2. Check for time conflicts
                bool hasTimeConflict = existingConfigs.Any(config =>
                {
                    try
                    {
                        if (string.IsNullOrWhiteSpace(config.AStartTime))
                            return false;

                        TimeSpan existingStart = TimeSpan.Parse(config.AStartTime);
                        TimeSpan existingEnd = existingStart.Add(TimeSpan.FromMinutes((double)(config.ATime * config.ANum)));

                        return (newStart < existingEnd && newEnd > existingStart);
                    }
                    catch (Exception ex)
                    {
                        // Log config or ex.Message here for debugging
                        return false;
                    }
                });

                if (hasTimeConflict)
                {
                    err.InnerText = "بازه زمانی وارد شده با یکی از شیفت‌های قبلی تداخل دارد.";
                    err.Visible = true;
                    return;
                }

                // ✅ No conflict, save the new configuration
                TblAppointmentConfig newConfig = new TblAppointmentConfig();
                newConfig.AActive = byte.Parse(DrdState.SelectedValue);
                newConfig.ADateTime = today;
                newConfig.ADoctorId = doctorId;
                newConfig.ANum = count;
                newConfig.AShift = shift;
                newConfig.AStartTime = startTimeStr;
                newConfig.ATime = interval;
                newConfig.Save();

                suc.Visible = true;
                err.Visible = false;


                DrdShift.ClearSelection();
                DrdState.ClearSelection();
                TxtDate.Text = "";
                TxtTime.Text = "";
                TxtNum.Text = "";
            }
            catch (Exception ex)
            {
                err.InnerText = err.InnerText + " : " + ex.Message;
                err.Visible = true;
            }

        }

        //protected void GV_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    Response.Cookies["Editid"].Value = GV.SelectedDataKey.Value.ToString();
        //    TblAppointmentConfig tbl = new TblAppointmentConfig(GV.SelectedDataKey.Value.ToString());
        //    DrdShift.SelectedValue = tbl.AShift.ToString();
        //    DrdState.SelectedValue = tbl.AActive.ToString();
        //    TxtDate.Text = tbl.AStartTime;
        //    TxtTime.Text = tbl.ATime.ToString();
        //    TxtNum.Text = tbl.ANum.ToString();

        //    btnSave.Text = "ویرایش";
        //    suc.Visible = false;
        //    err.Visible = false;
        //}


        protected void ChkDelAll_CheckedChanged(object sender, EventArgs e)
        {
            chkDeleteAll(ref GV);
        }

        public void chkDeleteAll(ref GridView GV)
        {
            if ((GV.HeaderRow.FindControl("ChkDelAll") as CheckBox).Checked)
                foreach (GridViewRow item in GV.Rows)
                    (item.FindControl("chkDelete") as CheckBox).Checked = true;
            else
                foreach (GridViewRow item in GV.Rows)
                    (item.FindControl("chkDelete") as CheckBox).Checked = false;
        }

        protected void BtnDel_Click(object sender, EventArgs e)
        {
            
            if ((GV.HeaderRow.FindControl("ChkDelAll") as CheckBox).Checked)
            {              
                    foreach (GridViewRow item in GV.Rows)
                {
                    CodingHorror horror = new CodingHorror();
                    string SQL = "delete from TblAppointmentConfig where id=" + GV.DataKeys[item.RowIndex].Value.ToString();
                    horror.ExecuteScalar<string>(SQL);
                }
            }
            else
                foreach (GridViewRow item in GV.Rows)
                    if ((item.FindControl("chkDelete") as CheckBox).Checked)
                    {
                        CodingHorror horror = new CodingHorror();
                        string SQL = "delete from TblAppointmentConfig where id=" + GV.DataKeys[item.RowIndex].Value.ToString();
                        horror.ExecuteScalar<string>(SQL);
                    }
            GV.DataBind();
        }
    }
}