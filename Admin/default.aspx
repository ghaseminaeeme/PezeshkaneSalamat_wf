<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="pezeshkaneSalamat_wf.Admin._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl">
<head runat="server">
    <title>ورود به پنل مدیریت پزشکان سلامت</title>
    <link href="assets/css/login.css" rel="stylesheet" />
</head>
<body class="rtl page-template page-template-elementor_canvas page page-id-304 theme-pezeshkyar woocommerce-js e-wc-info-notice elementor-default elementor-template-canvas elementor-kit-146 elementor-page elementor-page-304 e--ua-blink e--ua-chrome e--ua-webkit">
    <form id="form1" runat="server">

        <div data-elementor-type="wp-page" data-elementor-id="304" class="elementor elementor-304" data-elementor-post-type="page">
            <div class="elementor-element elementor-element-f959313 e-flex e-con-boxed e-con e-parent e-lazyloaded" data-id="f959313" data-element_type="container">
                <div class="e-con-inner">
                    <div class="elementor-element elementor-element-14722ac e-con-full e-flex e-con e-child" data-id="14722ac" data-element_type="container">
                        <div class="elementor-element elementor-element-2d7ce53 e-con-full e-flex e-con e-child" data-id="2d7ce53" data-element_type="container">
                            <div class="elementor-element elementor-element-e53412e elementor-widget__width-initial elementor-widget elementor-widget-shortcode" data-id="e53412e" data-element_type="widget" data-widget_type="shortcode.default">
                                <div class="elementor-widget-container">
                                    <div class="elementor-shortcode">
                                        <div class="pzy-account-form-box-wrapper">
                                            <div class="woocommerce-notices-wrapper">

                                                <ul class="woocommerce-error" role="alert" tabindex="-1">
                                                    <li>
                                                        <asp:Label ID="err" runat="server" Text="Label" Visible="false"> <strong>خطا:</strong> 	
                                                        </asp:Label>
                                                    </li>
                                                </ul>

                                            </div>

                                            <div class="pzy-account-forms" id="customer_login">

                                                <div class="pzy-account-form pzy-wc-login">

                                                    <h2>ورود به پورتال</h2>

                                                    <h5>لطفا نام کاربری و رمز عبور خود را جهت ورود به پنل کاربری خود وارد کنید.</h5>
                                                    <asp:Panel ID="Panel1" runat="server" DefaultButton="BtnLogin">
                                                        <div class="form">
                                                            <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                                <asp:TextBox ID="TxtUser" runat="server" CssClass="woocommerce-Input woocommerce-Input--text input-text" placeholder="نام کاربری "></asp:TextBox>
                                                            </p>
                                                            <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                                <asp:TextBox ID="TxtPass" runat="server" CssClass="woocommerce-Input woocommerce-Input--text input-text" placeholder="گذرواژه" TextMode="Password"></asp:TextBox>
                                                                <span class="show-password-input"></span>
                                                            </p>


                                                            <div class="pzy-start-buttons">
                                                                <asp:LinkButton ID="BtnLogin" runat="server" OnClick="BtnLogin_Click" CssClass="woocommerce-button button woocommerce-form-login__submit">ورود</asp:LinkButton>
                                                            </div>

                                                        </div>
                                                    </asp:Panel>

                                                    <div class="pzy-buttons">
                                                        <a href="/default.aspx">بازگشت به صفحه اصلی</a>
                                                    </div>



                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-84c05af e-con-full e-flex e-con e-child" data-id="84c05af" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;position&quot;:&quot;absolute&quot;}">
                            <div class="elementor-element elementor-element-1bf1b2d e-con-full e-flex e-con e-child" data-id="1bf1b2d" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;position&quot;:&quot;absolute&quot;}">
                            </div>
                            <div class="elementor-element elementor-element-551510d elementor-absolute e-transform elementor-widget elementor-widget-image" data-id="551510d" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;,&quot;_transform_translateY_effect&quot;:{&quot;unit&quot;:&quot;%&quot;,&quot;size&quot;:-50,&quot;sizes&quot;:[]},&quot;_transform_translateY_effect_tablet&quot;:{&quot;unit&quot;:&quot;%&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;_transform_translateY_effect_mobile&quot;:{&quot;unit&quot;:&quot;%&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;_transform_translateX_effect&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;_transform_translateX_effect_tablet&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;_transform_translateX_effect_mobile_extra&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;_transform_translateX_effect_mobile&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;_transform_translateY_effect_mobile_extra&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]}}" data-widget_type="image.default" style="display: none;">
                                <div class="elementor-widget-container">
                                    <img decoding="async" width="189" height="45" src="https://pezeshk-yar.ir/wp-content/uploads/2024/08/auth-Logo.png" class="attachment-large size-large wp-image-3329" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </form>
</body>
</html>
