using DalWebSite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using website;

namespace pezeshkaneSalamat_wf.panel
{
    public partial class _default : System.Web.UI.Page
    {
        ClassControl _ClassControl = new ClassControl();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            if (CheekTxt(TxtUser.Text) && CheekTxt(TxtPass.Text))
            {
                TblDoctor _TblDoctor = new TblDoctor(TblDoctor.Columns.DUsername, TxtUser.Text);
                if (_TblDoctor.IsLoaded)
                {
                    //if (_TblDoctor.Password == ClassControl.encryptString(TxtPass.Text))
                    if (_TblDoctor.DPassword == TxtPass.Text)
                    {
                        Session["doctorUser"] = _TblDoctor.DUsername.ToString();
                        Response.Redirect("reserveList.aspx");
                    }
                    else
                    {
                        err.Text = "نام کاربری یا رمز عبور اشتباه است.";
                        err.Visible = true;
                    }
                }
                else
                {
                    err.Text = "نام کاربری یا رمز عبور اشتباه است.";
                    err.Visible = true;
                }
            }
            else
            {
                err.Text = "کاراکتر غیر مجاز !!!!!!!!!!!!!";
                err.Visible = true;
            }
        }

        private bool CheekTxt(string txt)
        {
            if (ClassControl.checkChar(txt))
            {
                return true;
            }
            return false;
        }
    }
}