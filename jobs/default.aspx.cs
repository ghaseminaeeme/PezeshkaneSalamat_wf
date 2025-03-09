using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pezeshkaneSalamat_wf.jobs
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Literal litTitle = (Literal)Master.FindControl("litTitle");
                Literal litMetaTags = (Literal)Master.FindControl("litMetaTags");

                if (litTitle != null)
                    litTitle.Text = "پزشکان سلامت | سامانه جامع پزشکان";

                if (litMetaTags != null)
                {
                    litMetaTags.Text = $@"
                   
                    <meta property='og:type' content='website' />
                    <meta property='og:title' content='پزشکان سلامت | سامانه جامع پزشکان' />
                    <meta property='og:description' content=' سایت جامع معرفی بهترین پزشکان و نوبت دهی آنلاین ' />
                    <meta property='og:image' content='/assets/img/logo.png' />
                    <meta property='og:locale' content='fa_IR' />";
                }
            }
        }
    }
}