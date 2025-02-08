using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DalWebSite;

namespace pezeshkaneSalamat_wf.Admin
{
    public partial class about : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TblAbout _TblAbout = new TblAbout(1);
                TxtDes.Text = _TblAbout.ADescription;
                TxtAparat.Text = _TblAbout.AAparat;
                TxtEmail.Text = _TblAbout.AEmail;
                TxtIns.Text = _TblAbout.AInstagram;
                TxtMob.Text = _TblAbout.AMobile;
                TxtTel.Text = _TblAbout.ATel;
                TxtTlg.Text = _TblAbout.ATelegram;
                TxtWts.Text = _TblAbout.AWhatsapp;
                TxtFooter.Text = _TblAbout.AFooterText;
                TxtAdrs.Text = _TblAbout.AAddress;

            }

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            suc.Visible = false;
            err.Visible = false;
            try
            {
                TblAbout _TblAbout = new TblAbout(1);
                _TblAbout.ADescription = TxtDes.Text;
                _TblAbout.AAparat = TxtAparat.Text;
                _TblAbout.AEmail = TxtEmail.Text;
                _TblAbout.AInstagram = TxtIns.Text;
                _TblAbout.AMobile = TxtMob.Text;
                _TblAbout.ATel = TxtTel.Text;
                _TblAbout.ATelegram = TxtTlg.Text;
                _TblAbout.AWhatsapp = TxtWts.Text;
                _TblAbout.AFooterText = TxtFooter.Text;
                _TblAbout.AAddress = TxtAdrs.Text;

                _TblAbout.Save();
                suc.Visible = true;
            }
            catch (Exception)
            {
                err.Visible = true;
            }
        }


    }
}