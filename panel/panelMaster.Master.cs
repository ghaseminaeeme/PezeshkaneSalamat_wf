using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DalWebSite;

namespace pezeshkaneSalamat_wf.panel
{
    public partial class panelMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["doctorId"] == null || (Session["doctorId"]).ToString() == "")
            {
                Response.Redirect("default.aspx");
            }
            else
            {
                TblDoctor _TblDoctor = new TblDoctor(Convert.ToInt32( Session["doctorId"]));
                if (_TblDoctor.IsLoaded)
                {
                    LbUser.Text = _TblDoctor.DName;
                }
            }

        }

        protected void LbSignOut_Click(object sender, EventArgs e)
        {
            HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            HttpContext.Current.Response.Cache.SetNoServerCaching();
            HttpContext.Current.Response.Cache.SetNoStore();
            Session.Abandon();
            Session.Clear();
            Response.Redirect("/Default.aspx");

        }
    }
}