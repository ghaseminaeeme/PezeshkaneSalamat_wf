using DalWebSite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using website;

namespace pezeshkaneSalamat_wf.Admin
{
    public partial class password : System.Web.UI.Page
    {
        ClassControl _ClassControl = new ClassControl();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            suc.Visible = false;
            err.Visible = false;
            war.Visible = false;
            try
            {
                if (CheekTxt(TxtCurrent.Text) && CheekTxt(TxtPass.Text) && CheekTxt(TxtRePass.Text))
                {
                    if (Session["usr"] != null)
                    {
                        TblUser _TblUser = new TblUser(TblUser.Columns.Username, Session["usr"]);
                        if (_TblUser.IsLoaded)
                        {
                            if (_TblUser.Password == TxtCurrent.Text)
                            {
                                _TblUser.Password = TxtPass.Text;
                                _TblUser.Save();
                                suc.Visible = true;
                            }
                            else
                            {
                                war.Visible = true;
                            }
                        }
                        else
                            Response.Redirect("Default.aspx");
                    }
                    else
                        Response.Redirect("Default.aspx");
                }
            }

            catch (Exception)
            {
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