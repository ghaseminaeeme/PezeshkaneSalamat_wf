using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DalWebSite;
using website;
using System.Globalization;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using SubSonic;

namespace pezeshkaneSalamat_wf.TempFiles
{
    public partial class doctorDetail_back_2 : System.Web.UI.Page
    {
        ClassControl cc = new ClassControl();
        private int doctorID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Get the slug from the route data
                string slug = Page.RouteData.Values["slug"] as string;

                if (!string.IsNullOrEmpty(slug))
                {
                    string decodedSlug = Server.UrlDecode(slug);

                    // Fetch the doctor's ID using the slug
                    doctorID = GetDoctorIDBySlug(decodedSlug);

                    if (doctorID > 0)
                    {
                        ViewState["DoctorID"] = doctorID;
                        // Set the doctorID in the route data
                        Page.RouteData.Values["doctorID"] = doctorID;

                        // Bind the data to the SqlDataSource
                        SqlDoctor.SelectParameters["id"].DefaultValue = doctorID.ToString();
                        SqlDoctor.DataBind();

                        SqlImages.SelectParameters["doctorId"].DefaultValue = doctorID.ToString();
                        SqlImages.DataBind();

                        SqlRelatedDoctors.SelectParameters["doctorId"].DefaultValue = doctorID.ToString();
                        SqlRelatedDoctors.DataBind();


                        // title and  graph tags
                        TblDoctor _TblDoctor = new TblDoctor(doctorID);
                        Literal litTitle = (Literal)Master.FindControl("litTitle");
                        Literal litMetaTags = (Literal)Master.FindControl("litMetaTags");

                        string doctorUrl = "https://pezeshkanesalamat.ir/job/" + decodedSlug;

                        if (litTitle != null)
                            litTitle.Text = _TblDoctor.DName + " | پزشکان سلامت";

                        if (litMetaTags != null)
                        {
                            litMetaTags.Text = $@"
                             <meta property='og:url' content='{doctorUrl}' />
                             <meta property='og:type' content='website' />
                             <meta property='og:title' content='{_TblDoctor.DName} | پزشکان سلامت' />
                             <meta property='og:description' content='{_TblDoctor.DSpecialty}' />
                             <meta property='og:image' content='{_TblDoctor.DImg}' />
                             <meta property='og:locale' content='fa_IR' />";
                        }
                        // end of graph tags

                        LoadAppointmentDates();
                    }
                    else
                    {
                        // Handle invalid slug
                        Response.Redirect("~/404.aspx");
                    }
                }
            }
            else
            {
                // Retrieve doctorID from ViewState on postbacks
                if (ViewState["DoctorID"] != null)
                {
                    doctorID = (int)ViewState["DoctorID"];
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

        private TblDoctor GetDoctorByID(int doctor_id)
        {
            return new Select()
                .From<TblDoctor>()
                .Where(TblDoctor.IdColumn).IsEqualTo(doctor_id)
                .ExecuteSingle<TblDoctor>();
        }



        private void LoadAppointmentDates()
        {
            // int doctorId = Request.QueryString["did"] != null ? Convert.ToInt32(Request.QueryString["did"]) : 0;
            int doctorId = ViewState["DoctorID"] != null ? (int)ViewState["DoctorID"] : 0;
            DataSet ds = GetAppointmentsFromDB(doctorId);

            // Bind first result set (Dates) to Repeater1
            Repeater1.DataSource = ds.Tables[0];
            Repeater1.DataBind();

            // Select first date and load its times
            if (ds.Tables[0].Rows.Count > 0)
            {
                string firstDate = ds.Tables[0].Rows[0]["AppointmentDate"].ToString();
                HiddenSelectedDate.Value = firstDate;
                LoadAppointmentTimes(firstDate);
                lblNoDatesMessage.Visible = false;
                Button3.Visible = true;
            }

            else
            {
                lblNoDatesMessage.Visible = true;
                RepeaterTimes.DataSource = null;
                RepeaterTimes.DataBind();
                Button3.Visible = false;
            }
        }

        private void LoadAppointmentTimes(string selectedDate)
        {
            // int doctorId = Request.QueryString["did"] != null ? Convert.ToInt32(Request.QueryString["did"]) : 0;

            int doctorId = ViewState["DoctorID"] != null ? (int)ViewState["DoctorID"] : 0;
            DataSet ds = GetAppointmentsFromDB(doctorId);

            // Filter the second result set (Times) for the selected date
            DataTable allTimes = ds.Tables[1];
            DataView filteredTimes = new DataView(allTimes);
            filteredTimes.RowFilter = $"AppointmentDate = '{selectedDate}'";

            RepeaterTimes.DataSource = filteredTimes;
            RepeaterTimes.DataBind();
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "SelectDate")
            {
                string selectedDate = e.CommandArgument.ToString();
                HiddenSelectedDate.Value = selectedDate;
                LoadAppointmentTimes(selectedDate);
                // Repeater1.DataBind();
            }
        }

        private DataSet GetAppointmentsFromDB(int doctor_id)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DbWebSiteConnectionString"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                using (SqlCommand cmd = new SqlCommand("psDb_user.GetDoctorAppointments", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@doctorId", doctor_id);

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    conn.Open();
                    da.Fill(ds);
                    conn.Close();

                    return ds;
                }
            }
        }

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                // Get the AppointmentDate from the data item
                DateTime appointmentDate = Convert.ToDateTime(DataBinder.Eval(e.Item.DataItem, "AppointmentDate"));

                // Convert it to Persian date
                string persianDate = ToPersianDate(appointmentDate);

                // Find the LinkButton and update its text
                // LinkButton btn = (LinkButton)e.Item.FindControl("LinkButton1");
                Button btn = (Button)e.Item.FindControl("Button2");
                if (btn != null)
                {
                    btn.Text = persianDate;
                }
            }
        }

        private string ToPersianDate(DateTime date)
        {
            PersianCalendar persianCalendar = new PersianCalendar();
            int year = persianCalendar.GetYear(date);
            int month = persianCalendar.GetMonth(date);
            int day = persianCalendar.GetDayOfMonth(date);
            DayOfWeek dayOfWeek = persianCalendar.GetDayOfWeek(date);

            string[] persianMonths = { "فروردین", "اردیبهشت", "خرداد", "تیر", "مرداد", "شهریور", "مهر", "آبان", "آذر", "دی", "بهمن", "اسفند" };
            string[] persianDays = { "یکشنبه", "دوشنبه", "سه‌شنبه", "چهارشنبه", "پنج‌شنبه", "جمعه", "شنبه" };

            return $"{persianDays[(int)dayOfWeek]} {day} {persianMonths[month - 1]}";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}