using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DalWebSite;


namespace pezeshkaneSalamat_wf.Admin
{
    public partial class map : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["did"].ToString() != "")
                {
                    TblDoctor _TblDoctor = new TblDoctor(int.Parse(Request.QueryString["did"]));
                    LbDoctorName.Text = _TblDoctor.DName;
                    if (_TblDoctor.DLat != null && _TblDoctor.DLong != null)
                    {
                        hfLatitude.Value = _TblDoctor.DLat.ToString();
                        hfLongitude.Value = _TblDoctor.DLong.ToString();
                    }
                }
                else
                {
                    Response.Redirect("doctors.aspx");
                }
            }
        }

        protected void btnSaveLocation_Click(object sender, EventArgs e)
        {
            suc.Visible = false;
            err.Visible = false;
            try
            {
                double lat = Convert.ToDouble(hfLatitude.Value);
                double lng = Convert.ToDouble(hfLongitude.Value);

                TblDoctor _TblDoctor = new TblDoctor(int.Parse(Request.QueryString["did"]));
                _TblDoctor.DLat = lat;
                _TblDoctor.DLong = lng;
                _TblDoctor.Save();
                suc.Visible = true;
            }
            catch (Exception)
            {
                err.Visible = true;
            }
        }

        protected void btnDel_Click(object sender, EventArgs e)
        {
            suc.Visible = false;
            err.Visible = false;
            try
            {
                TblDoctor _TblDoctor = new TblDoctor(int.Parse(Request.QueryString["did"]));
                _TblDoctor.DLat = null;
                _TblDoctor.DLong = null;
                _TblDoctor.Save();
                suc.Visible = true;
            }
            catch (Exception ex)
            {
                err.InnerText = err.InnerText + " ," + ex.Message;
                err.Visible = true;
            }
        }
    }
}