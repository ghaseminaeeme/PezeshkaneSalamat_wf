<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="appointmentConfig.aspx.cs" Inherits="pezeshkaneSalamat_wf.Admin.appointmentConfig" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>مدیریت پزشکان سلامت </title>

    <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/yourcode.js"></script>
    <link href="/fonts/web-fonts-with-css/css/fontawesome.min.css" rel="stylesheet" />
    <link href="/fonts/web-fonts-with-css/css/fontawesome-all.min.css" rel="stylesheet" />
    <link href="/fonts/web-fonts-with-css/css/fa-solid.min.css" rel="stylesheet" />
    <link href="/fonts/web-fonts-with-css/css/fa-regular.min.css" rel="stylesheet" />
    <link href="/fonts/web-fonts-with-css/css/fa-brands.min.css" rel="stylesheet" />
    <link rel='stylesheet' href='/css/icons.css' type='text/css' media='all' />
    <!--CUSTOM BASIC STYLES-->
    <link href="assets/css/basic.css" rel="stylesheet" />
    <!--CUSTOM MAIN STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link href="assets/css/persian.css" rel="stylesheet" />

    <link rel="stylesheet" type="text/css" href="assets/DateTimePicker/calendar/customize.css">
    <link rel="stylesheet" type="text/css" href="assets/DateTimePicker/calendar/calendar-blue.css">
    <script src="assets/DateTimePicker/jquery-3.3.1.min.js"></script>
    <script src="assets/DateTimePicker/bootstrap.min.js"></script>
    <script src="assets/DateTimePicker/jalali.js"></script>
    <script src="assets/DateTimePicker/calendar.js"></script>
    <script src="assets/DateTimePicker/calendar-setup.js"></script>
    <script src="assets/DateTimePicker/calendar-dari.js"></script>
    <script async defer src="https://buttons.github.io/buttons.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div id="wrapper">
            <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">&nbsp; </a>
                </div>

                <div class="header-right">
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" CssClass="msg-count">
                        <ItemTemplate>
                            <a href="mssages.aspx" class="btn btn-info" title="پیام های جدید"><b><%#Eval("newMsg") %> </b>
                                <i class="fa fa-envelope fa-2x"></i></a>
                        </ItemTemplate>
                    </asp:FormView>
                    <%-- <a href="message-task.html" class="btn btn-primary" title="New Task"><b>40 </b><i
                        class="fa fa-bars fa-2x"></i></a>--%>
                    <asp:LinkButton ID="LinkButton1" runat="server" class="btn btn-danger" title="خروج" OnClick="LbSignOut_Click"><i class="fa fa-arrow-right fa-2x"></i></asp:LinkButton>
                    <asp:Label ID="LbUser" runat="server" Text=""></asp:Label>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>"
                    SelectCommand="selectSummery" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
            </nav>
            <!-- /. NAV TOP  -->
            <nav class="navbar-default navbar-side" role="navigation">
                <div class="sidebar-collapse">
                    <ul class="nav" id="main-menu">
                        <li>
                            <div class="user-img-div">
                                <img src="/images/logo45.png" class="img-thumbnail" />

                                <div class="inner-text nav-title">
                                    <a href="/Default.aspx" target="_blank">پزشکان سلامت </a>
                                    <br>
                                </div>
                            </div>
                        </li>


                        <li>
                            <a class="active-menu" href="home.aspx"><i class="fa fa-home "></i>داشبورد</a>
                        </li>
                        <li>
                            <a href="doctors.aspx"><i class="fa fa-stethoscope"></i>پزشکان</a>
                        </li>
                        <li>
                            <a href="addDoctor.aspx"><i class="fa fa-edit"></i>افزودن پزشک</a>
                        </li>
                        <li>
                            <a href="branch.aspx"><i class="fa fa-tag"></i>تخصص ها </a>
                        </li>

                        <li>
                            <a href="mssages.aspx"><i class="fa fa-envelope"></i>پیام ها </a>
                        </li>
                        <li>
                            <a href="banner.aspx"><i class="fa fa-photo"></i>بنر اصلی </a>
                        </li>
                        <li>
                            <a href="smallBanner.aspx"><i class="fa fa-adv-camera"></i>بنر کوچک </a>
                        </li>

                        <li>
                            <a href="city.aspx?sid=0"><i class="fa fa-map-marker"></i>شهرها</a>
                        </li>
                        <li>
                            <a href="blog.aspx"><i class="fa fa-edit"></i>مطالب</a>
                        </li>
                        <li>
                            <a href="about.aspx"><i class="fa fa-info"></i>درباره ما </a>
                        </li>

                        <li>
                            <a href="images.aspx"><i class="fa fa-picture-o"></i>آپلود تصاویر </a>
                        </li>
                        <%-- <li>
                            <a href="#.aspx"><i class="fa fa-cogs"></i>تنظیمات </a>
                        </li>--%>
                        <li>
                            <a href="password.aspx"><i class="fa fa-key"></i>تغییر رمز</a>
                        </li>
                    </ul>

                </div>

            </nav>
            <div id="page-wrapper">
                <div id="page-inner">


                    <div class="row">
                        <div class="col-md-12">
                            <h1 class="page-head-line">تنظیمات نوبت دهی پزشک: 
                <asp:Label ID="LbSubject" runat="server" Text="Label"></asp:Label></h1>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel-body">
                                <div class="alert alert-danger" runat="server" id="err" visible="false">
                                    متاسفانه خطایی رخ داده است! لطفا مجددا سعی نمایید.
                                </div>
                                <div class="alert alert-success" runat="server" id="suc" visible="false">
                                    عملیات با موفقیت انجام شد.
                                </div>

                                <div class="form-group col-md-4 col-xs-12 pull-right">
                                    <label>انتخاب شیفت</label>
                                    <asp:DropDownList ID="DrdShift" runat="server" class="form-control form-control-md">
                                        <asp:ListItem Value="1" Text="شیفت اول"></asp:ListItem>
                                        <asp:ListItem Value="2" Text="شیفت دوم"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <hr />
                                <div class="form-group col-md-4 col-xs-12 pull-right">
                                    <label>تاریخ و ساعت شروع نوبت</label>

                                    <asp:TextBox ID="TxtDate" runat="server" class="form-control farsi-input farsi-font" placeholder="تاریخ شمسی و ساعت قالب ۲۴ ساعته"></asp:TextBox>
                                    <div class="input-group-btn">
                                        <button id="date_btn_two" class="btn btn-info" type="submit">
                                            <i class="fa fa-calendar"></i>
                                        </button>
                                    </div>
                                </div>
                                <hr>
                                <div class="form-group col-md-4 col-xs-12 pull-right">
                                    <label>تعداد</label>
                                    <asp:TextBox ID="TxtNum" class="form-control" runat="server"></asp:TextBox>
                                </div>
                                <hr>
                                <div class="form-group col-md-4 col-xs-12 pull-right">
                                    <label>زمان هر ملاقات به دقیقه</label>
                                    <asp:TextBox ID="TxtTime" class="form-control" runat="server" MaxLength="300"></asp:TextBox>
                                </div>
                                <hr />
                                <div class="form-group col-md-4 col-xs-12 pull-right">
                                    <label>وضعیت</label>
                                    <asp:DropDownList ID="DrdState" runat="server" class="form-control form-control-md">
                                        <asp:ListItem Value="1" Text="فعال"></asp:ListItem>
                                        <asp:ListItem Value="0" Text="غیر فعال"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <hr />
                                <div class="form-group col-md-12">
                                    <asp:Button ID="btnSave" runat="server" Text="ذخـــیره" class="btn btn-info pull-right" OnClick="btnSave_Click" />
                                </div>
                                <hr>
                            </div>
                            <!-- /. PAGE INNER  -->
                        </div>
                        <!-- /. PAGE WRAPPER  -->
                    </div>
                    <!-- /. WRAPPER  -->
                    <div id="footer-sec">
                        &copy; پزشکان سلامت
                    </div>
                    <!-- /. FOOTER  -->
                    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
                    <!-- JQUERY SCRIPTS -->
                    <script src="assets/js/jquery-1.10.2.js"></script>
                    <!-- BOOTSTRAP SCRIPTS -->
                    <script src="assets/js/bootstrap.js"></script>
                    <!-- METISMENU SCRIPTS -->
                    <script src="assets/js/jquery.metisMenu.js"></script>
                    <!-- CUSTOM SCRIPTS -->
                    <script src="assets/js/custom.js"></script>

                </div>
            </div>

            <script type="text/javascript">
                Calendar.setup({
                    inputField: "TxtDate",   // id of the input field
                    button: "date_btn_two",   // trigger for the calendar (button ID)
                   // ifFormat: "%Y/%m/%d %H:%M",       // format of the input field
                    ifFormat: "%H:%M",
                    showsTime: true,
                    dateType: 'jalali',
                    timeFormat: "24",
                    weekNumbers: false
                });
            </script>

            <script src="assets/DateTimePicker/jquery.min.js"></script>
            <script src="assets/DateTimePicker/swiper-bundle.min.js"></script>
            <script src="assets/DateTimePicker/jquery.magnific-popup.min.js"></script>
            <script src="assets/DateTimePicker/main.min.js"></script>
    </form>
</body>
</html>
