using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pezeshkaneSalamat_wf
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Cookies["name"].Value = txtSearch.Text;
            Response.Redirect("Doctors.aspx?city=" + drdCity.SelectedValue + "&branch=" + drdBranch.SelectedValue);
        }
    }
}