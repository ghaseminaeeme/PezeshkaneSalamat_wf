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
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            suc.Visible = false;
            err.Visible = false;
            int Id = _ClassControl.New("TblBranch");
            try
            {
                if (btnSave.Text == "ذخـــیره")
                {
                    TblBranch _TblBranch = new TblBranch();
                   // _TblBranch.BSubject = TxtSub.Text;
                    _TblBranch.BIsDeleted = false;


                  //  _TblBranch.Save();
                    GV.DataBind();
                    suc.Visible = true;

                }
                else
                {
                    TblBranch _TblBranch = new TblBranch(Request.Cookies["Editid"].Value);
                //    _TblBranch.BSubject = TxtSub.Text;
                    _TblBranch.Save();
                    GV.DataBind();
                    suc.Visible = true;
                    btnSave.Text = "ذخـــیره";

                }
              //  TxtSub.Text = "";
            }
            catch (Exception)
            {
                err.Visible = true;
            }

        }

        protected void GV_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Cookies["Editid"].Value = GV.SelectedDataKey.Value.ToString();
            TblBranch _TblBranch = new TblBranch(GV.SelectedDataKey.Value.ToString());
         //   TxtSub.Text = _TblBranch.BSubject;

            btnSave.Text = "ویرایش";
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
                    string SQL = "update TblBranch set bIsDeleted=1 where id=" + GV.DataKeys[item.RowIndex].Value.ToString();
                    horror.ExecuteScalar<string>(SQL);
                }
            }
            else
                foreach (GridViewRow item in GV.Rows)
                    if ((item.FindControl("chkDelete") as CheckBox).Checked)
                    {
                        CodingHorror horror = new CodingHorror();
                        string SQL = "update TblBranch set bIsDeleted=1 where id=" + GV.DataKeys[item.RowIndex].Value.ToString();
                        horror.ExecuteScalar<string>(SQL);
                    }
            GV.DataBind();
        }
    }
}