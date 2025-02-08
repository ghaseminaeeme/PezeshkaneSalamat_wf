using DalWebSite;
using ImageResizer;
using ImageResizer.Configuration;
using SubSonic;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using website;

namespace pezeshkaneSalamat_wf.Admin
{
    public partial class smallBanner : System.Web.UI.Page
    {
        ClassControl _ClassControl = new ClassControl();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            suc.Visible = false;
            err.Visible = false;
            int Id = _ClassControl.New("TblSmallBanner");
            try
            {
                if (btnSave.Text == "ذخـــیره")
                {
                    TblSmallBanner _TblSmallBanner = new TblSmallBanner();
                    _TblSmallBanner.Link = TxtLink.Text;
                    _TblSmallBanner.Active = Convert.ToByte(DrdActive.SelectedValue);

                    if (Fu1.FileName != "")
                    {
                        string filename = Fu1.FileName;
                        string ext = Path.GetExtension(Fu1.PostedFile.FileName);
                        Fu1.SaveAs(Server.MapPath("../Upload/Ad/SB-" + Id + ext));
                        _TblSmallBanner.Image = ("/Upload/Ad/SB-" + Id + ext);
                    }

                    _TblSmallBanner.Save();
                    GV.DataBind();
                    suc.Visible = true;

                }
                else
                {
                    TblSmallBanner _TblSmallBanner = new TblSmallBanner(Request.Cookies["Editid"].Value);
                    _TblSmallBanner.Link = TxtLink.Text;
                    _TblSmallBanner.Active = Convert.ToByte(DrdActive.SelectedValue);

                    if (Fu1.FileName != "")
                    {
                        string filename = Fu1.FileName;
                        string ext = Path.GetExtension(Fu1.PostedFile.FileName);
                        Fu1.SaveAs(Server.MapPath("../upload/Ad/SB-" + Request.Cookies["Editid"].Value + ext));
                        _TblSmallBanner.Image = ("/upload/Ad/SB-" + Request.Cookies["Editid"].Value + ext);
                    }

                    _TblSmallBanner.Save();
                    GV.DataBind();
                    suc.Visible = true;
                    btnSave.Text = "ذخـــیره";

                }
                TxtLink.Text = "";
                Image1.ImageUrl = "";
                DrdActive.ClearSelection();
            }
            catch (Exception)
            {
                err.Visible = true;
            }

        }

        protected void GV_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Cookies["Editid"].Value = GV.SelectedDataKey.Value.ToString();
            TblSmallBanner _TblSmallBanner = new TblSmallBanner(GV.SelectedDataKey.Value.ToString());
            TxtLink.Text = _TblSmallBanner.Link;
            DrdActive.SelectedValue = _TblSmallBanner.Active.ToString();
            Image1.ImageUrl = _TblSmallBanner.Image;
            btnSave.Text = "ویرایش";
            suc.Visible = false;
            err.Visible = false;
        }

        public string UploadFiles(string width, string height, string SavePath, int fu)
        {
            string settingsForImages = "maxwidth=" + width + "&maxheight=" + height + "&format=jpg" + "&crop=auto";
            if (!IsPostBack) return "";
            Guid lastUpload = Guid.Empty;

            HttpPostedFile file = HttpContext.Current.Request.Files[fu];
            if (file.ContentLength > 0)
            {

                if (Config.Current.Pipeline.IsAcceptedImageType(file.FileName) && settingsForImages != null)
                {

                    ResizeSettings resizeCropSettings = new ResizeSettings(settingsForImages);

                    using (MemoryStream ms = new MemoryStream())
                    {
                        FileStream newPic = new FileStream(Server.MapPath(@SavePath), FileMode.Create);
                        ImageBuilder.Current.Build(file, newPic, resizeCropSettings);
                        byte[] data = new Byte[ms.Length];
                        file.InputStream.Read(data, 0, int.Parse(ms.Length.ToString()));
                        newPic.Write(data, 0, int.Parse(ms.Length.ToString()));
                        newPic.Close();
                    }
                }
            }
            return @SavePath;

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
                    string SQL = "delete from TblSmallBanner where id=" + GV.DataKeys[item.RowIndex].Value.ToString();
                    horror.ExecuteScalar<string>(SQL);
                }
            }
            else
                foreach (GridViewRow item in GV.Rows)
                    if ((item.FindControl("chkDelete") as CheckBox).Checked)
                    {
                        CodingHorror horror = new CodingHorror();
                        string SQL = "delete from TblSmallBanner where id=" + GV.DataKeys[item.RowIndex].Value.ToString();
                        horror.ExecuteScalar<string>(SQL);
                    }
            GV.DataBind();
        }
    }
}