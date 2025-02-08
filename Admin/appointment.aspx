<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite1.Master" AutoEventWireup="true" CodeBehind="appointment.aspx.cs" Inherits="pezeshkaneSalamat_wf.Admin.appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="assets/DateTimePicker/calendar/customize.css">
    <link rel="stylesheet" type="text/css" href="assets/DateTimePicker/calendar/calendar-blue.css">
    <script src="assets/DateTimePicker/jquery-3.3.1.min.js"></script>
    <script src="assets/DateTimePicker/bootstrap.min.js"></script>
    <script src="assets/DateTimePicker/jalali.js"></script>
    <script src="assets/DateTimePicker/calendar.js"></script>
    <script src="assets/DateTimePicker/calendar-setup.js"></script>
    <script src="assets/DateTimePicker/calendar-dari.js"></script>
    <script async defer src="https://buttons.github.io/buttons.js"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

                <div class="form-group col-md-6 col-xs-12 pull-right">
                    <label>انتخاب شیفت</label>
                    <asp:DropDownList ID="DrdShift" runat="server" class="form-control form-control-md">
                        <asp:ListItem Value="1" Text="شیفت اول"></asp:ListItem>
                        <asp:ListItem Value="2" Text="شیفت دوم"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <hr>
                <div class="form-group col-md-6 col-xs-12 pull-right">
                    <label>تاریخ و ساعت شروع نوبت</label>
                    <%--<asp:TextBox runat="server" ID="TxtDate" onclick="PersianDatePicker.Show(this);" class="form-control"></asp:TextBox>--%>

                    <asp:TextBox ID="TxtDate" runat="server" class="form-control farsi-input farsi-font" placeholder="تاریخ شمسی و ساعت قالب ۲۴ ساعته"></asp:TextBox>
                    <div class="input-group-btn">
                        <button id="date_btn_two" class="btn btn-info" type="submit">
                            <i class="fa fa-calendar"></i>
                        </button>
                    </div>
                </div>
                <hr>
                <div class="form-group col-md-6 col-xs-12 pull-right">
                    <label>تعداد</label>
                    <asp:TextBox ID="TxtNum" class="form-control" runat="server"></asp:TextBox>
                </div>
                <hr>
                <div class="form-group col-md-12 col-xs-12 pull-right">
                    <label>زمان هر ملاقات به دقیقه</label>
                    <asp:TextBox ID="TxtTime" class="form-control" runat="server" MaxLength="300"></asp:TextBox>
                </div>
                <hr />
                <div class="form-group col-md-12">
                    <asp:Button ID="btnSave" runat="server" Text="ذخـــیره" class="btn btn-info pull-right" OnClick="btnSave_Click" />
                </div>
                <hr>

                <!--*****************************************-->
                <div class="grid-list">
                    <!---------------------------------------------- -->
                    <asp:Button ID="BtnDel" runat="server" CssClass="btn btn-theme BtnDel" Text="حذف ردیفهای انتخاب شده"
                        OnClick="BtnDel_Click"
                        OnClientClick="return confirm('آیا از حذف موارد انتخابی مطمئن هستید؟');" />
                    <!------------------------------------------------  -->
                    <asp:GridView ID="GV" runat="server"
                        AutoGenerateColumns="False" DataKeyNames="id"
                        PageSize="15" PagerStyle-CssClass="pgr" AllowPaging="True"
                        class="table table-striped table-advance table-hover" DataSourceID="SqlAll"
                        OnSelectedIndexChanged="GV_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="Row" HeaderText="ردیف" SortExpression="Row"></asp:BoundField>
                            <asp:BoundField DataField="bSubject" HeaderText="عـنوان" SortExpression="bSubject"></asp:BoundField>
                            <asp:CommandField ShowSelectButton="True" HeaderText="ویرایش" ControlStyle-CssClass="btn btn-danger btn-xs fa fa-trash-o" SelectText="">
                                <ControlStyle CssClass="btn btn-success btn-xs fa fa-pencil"></ControlStyle>
                            </asp:CommandField>
                            <asp:TemplateField>
                                <HeaderTemplate>
                                    <asp:CheckBox ID="ChkDelAll" runat="server" OnCheckedChanged="ChkDelAll_CheckedChanged" />
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="chkDelete" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

                        <EmptyDataTemplate>
                            <asp:Label ID="Label8" runat="server" Text="هیچ داده ای برای نمایش موجود نیست"></asp:Label>
                        </EmptyDataTemplate>

                        <PagerStyle CssClass="pgr"></PagerStyle>
                    </asp:GridView>


                    <asp:SqlDataSource ID="SqlAll" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>"
                        SelectCommand="SELECT [id], ROW_NUMBER() OVER (ORDER BY id desc) Row, [bSubject] 
                        FROM [TblBranch] WHERE ([bIsDeleted] &lt;&gt; 1) ORDER BY [id] DESC"></asp:SqlDataSource>
                </div>

            </div>
        </div>
    </div>


        <script type="text/javascript">
        Calendar.setup({
            inputField: "TxtDate",   // id of the input field
            button: "date_btn_two",   // trigger for the calendar (button ID)
            ifFormat: "%Y/%m/%d %H:%M",       // format of the input field
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

</asp:Content>
