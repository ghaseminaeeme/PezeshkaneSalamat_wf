using SubSonic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DalWebSite;

namespace pezeshkaneSalamat_wf
{
    public partial class DoctorDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Get the slug from the route data
                string slug = Page.RouteData.Values["slug"] as string;

                if (!string.IsNullOrEmpty(slug))
                {
                    // Decode the slug (e.g., convert %d8%af%da%a9%d8%aa%d8%b1 to دکتر)
                    string decodedSlug = Server.UrlDecode(slug);

                    // Fetch the doctor's ID using the slug
                    int doctorID = GetDoctorIDBySlug(decodedSlug);

                    if (doctorID > 0)
                    {
                        // Set the doctorID in the route data
                        Page.RouteData.Values["doctorID"] = doctorID;

                        // Bind the data to the SqlDataSource
                        SqlDoctor.SelectParameters["id"].DefaultValue = doctorID.ToString();
                        SqlDoctor.DataBind();

                        SqlImages.SelectParameters["dDoctorFk"].DefaultValue = doctorID.ToString();
                        SqlImages.DataBind();
                    }
                    else
                    {
                        // Handle invalid slug
                        Response.Redirect("~/404.aspx");
                    }
                }
            }
        }


        private int GetDoctorIDBySlug(string slug)
        {
            // Encode the slug to match the format in the database
            string encodedSlug = Server.UrlEncode(slug);

            // Fetch the doctor's ID from the database using the encoded slug
            var doctor = new Select()
                .From<TblDoctor>()
                .Where(TblDoctor.Columns.DUrl).IsEqualTo(encodedSlug)
                .ExecuteSingle<TblDoctor>();

            return doctor != null ? doctor.Id : 0;
        }

        private TblDoctor GetDoctorByID(int doctorID)
        {
            return new Select()
                .From<TblDoctor>()
                .Where(TblDoctor.IdColumn).IsEqualTo(doctorID)
                .ExecuteSingle<TblDoctor>();
        }


    }
}