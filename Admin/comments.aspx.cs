using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using website;
using DalWebSite;
using SubSonic;

namespace pezeshkaneSalamat_wf.Admin
{
    public partial class comments : System.Web.UI.Page
    {
        ClassControl _ClassControl = new ClassControl();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            suc.Visible = false;
            err.Visible = false;
            try
            {
                TblComment _TblComment = new TblComment(Request.Cookies["Editid"].Value);

                _TblComment.DisplayStatus = byte.Parse(DrdDisplayStatus.SelectedValue);
                _TblComment.Comment = TxtComment.Text;
                _TblComment.Save();
                GV.DataBind();
                suc.Visible = true;
                btnSave.Text = "ذخـــیره";

                lbDate.Text = "";
                lbName.Text = "";
                lbStatus.Text = "";
                lbDoctor.Text = "";
                lbDate.Text = "";
                TxtComment.Text = "";
            }
            catch (Exception)
            {
                err.Visible = true;
            }

        }

        protected void GV_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Cookies["Editid"].Value = GV.SelectedDataKey.Value.ToString();
            TblComment _TblComment = new TblComment(GV.SelectedDataKey.Value.ToString());
            TblDoctor _TblDoctor = new TblDoctor(_TblComment.DoctorId);
            lbStatus.Text = _TblComment.Status == 1 ? "دیده شده" : "جدید";
            lbStatus.Text = _TblComment.Status == 1 ? "تایید شده" : "تایید نشده";
            lbDate.Text = _TblComment.SaveDate.ToString();
            lbName.Text = _TblComment.Name;
            lbDoctor.Text = _TblDoctor.DName;
            TxtComment.Text = _TblComment.Comment;
            DrdDisplayStatus.SelectedValue = _TblComment.DisplayStatus.ToString();

            _TblComment.Status = 1;
            suc.Visible = false;
            err.Visible = false;
        }

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
                    string SQL = "update TblCity set cIsDeleted = 1 where id=" + GV.DataKeys[item.RowIndex].Value.ToString();
                    horror.ExecuteScalar<string>(SQL);
                }
            }
            else
                foreach (GridViewRow item in GV.Rows)
                    if ((item.FindControl("chkDelete") as CheckBox).Checked)
                    {
                        CodingHorror horror = new CodingHorror();
                        string SQL = "update TblCity set cIsDeleted = 1 where id=" + GV.DataKeys[item.RowIndex].Value.ToString();
                        horror.ExecuteScalar<string>(SQL);
                    }
            GV.DataBind();
        }
    }
}