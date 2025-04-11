using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DalWebSite;

namespace pezeshkaneSalamat_wf.Admin
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSaveLocation_Click(object sender, EventArgs e)
        {
            suc.Visible = false;
            err.Visible = false;
            try
            {
                double lat = Convert.ToDouble(hfLatitude.Value);
                double lng = Convert.ToDouble(hfLongitude.Value);

                TblTemp _TblTemp = new TblTemp();
                _TblTemp.Latitude = lat;
                _TblTemp.Longitude = lng;
                _TblTemp.Save();
            }
            catch (Exception)
            {
                err.Visible = true;
            }
        }
    }
}