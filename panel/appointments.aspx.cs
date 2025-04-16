using SubSonic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pezeshkaneSalamat_wf.panel
{
    public partial class appointments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
            err.Visible = false;
            suc.Visible = false;
            try
            {
                var doctorId = Convert.ToInt32(Session["doctorId"]);

                if ((GV.HeaderRow.FindControl("ChkDelAll") as CheckBox).Checked)
                {
                    foreach (GridViewRow item in GV.Rows)
                    {
                        var rDatetime = Convert.ToDateTime(GV.DataKeys[item.RowIndex].Value);
                        var rStatus = 3;
                        var rSaveDate = DateTime.Now;

                        string rName = "ابطال نوبت";

                        string SQL = $"INSERT INTO TblReserve (rDoctorId, rDatetime, rStatus, rSaveDate, rName) VALUES " +
                                     $"({doctorId}, '{rDatetime:yyyy-MM-dd HH:mm:ss}', {rStatus}, '{rSaveDate:yyyy-MM-dd HH:mm:ss}', N'{rName}')";

                        CodingHorror horror = new CodingHorror();
                        horror.ExecuteScalar<string>(SQL);
                    }
                }
                else
                {
                    foreach (GridViewRow item in GV.Rows)
                    {
                        if ((item.FindControl("chkDelete") as CheckBox).Checked)
                        {
                            var rDatetime = Convert.ToDateTime(GV.DataKeys[item.RowIndex].Value);
                            var rStatus = 3;
                            var rSaveDate = DateTime.Now;

                            string rName = "ابطال نوبت";

                            string SQL = $"INSERT INTO TblReserve (rDoctorId, rDatetime, rStatus, rSaveDate, rName) VALUES " +
                                         $"({doctorId}, '{rDatetime:yyyy-MM-dd HH:mm:ss}', {rStatus}, '{rSaveDate:yyyy-MM-dd HH:mm:ss}', N'{rName}')";

                            CodingHorror horror = new CodingHorror();
                            horror.ExecuteScalar<string>(SQL);
                        }
                    }
                }

                GV.DataBind();
                suc.Visible = true;
            }
            catch (Exception ex)
            {                
                err.Visible = true;

            }
        }

    }
}