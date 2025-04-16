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
                <asp:Label ID="LbSubject" runat="server" Text="Label"></asp:Label>

            </h1>
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
                    <label>ساعت شروع نوبت</label>
                    <asp:TextBox ID="TxtDate" runat="server" class="form-control" placeholder="ساعت قالب ۲۴ ساعته" TextMode="Time"></asp:TextBox>
                </div>
                <hr />
                <div class="form-group col-md-4 col-xs-12 pull-right">
                    <label>تعداد</label>
                    <asp:TextBox ID="TxtNum" class="form-control" runat="server"></asp:TextBox>
                </div>
                <hr />
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
                <hr />
            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>


    <div class="row">
        <div class="col-md-12">
            <div class="panel-body">
                <div class="grid-list">

                    <!---------------------------------------------- -->
                    <asp:Button ID="BtnDel" runat="server" CssClass="btn btn-theme BtnDel pull-left" Text="حذف ردیفهای انتخاب شده"
                        OnClick="BtnDel_Click"
                        OnClientClick="return confirm('آیا از حذف موارد انتخابی مطمئن هستید؟');" />
                    <!------------------------------------------------  -->
                    <asp:GridView ID="GV" runat="server"
                        AutoGenerateColumns="False" DataKeyNames="id"
                        PageSize="15" PagerStyle-CssClass="pgr" AllowPaging="True"
                        class="table table-striped table-advance table-hover" DataSourceID="SqlAll">
                        <Columns>
                            <asp:BoundField DataField="aShift" HeaderText="شیفت" SortExpression="aShift"></asp:BoundField>
                            <asp:BoundField DataField="aStartTime" HeaderText="ساعت شروع" SortExpression="aStartTime"></asp:BoundField>
                            <asp:BoundField DataField="aTime" HeaderText="مدت هر نوبت" SortExpression="aTime"></asp:BoundField>
                            <asp:BoundField DataField="aNum" HeaderText="تعداد نوبت" SortExpression="aNum"></asp:BoundField>
                            <asp:BoundField DataField="activeDes" HeaderText="وضعیت" SortExpression="activeDes"></asp:BoundField>
                            <%-- <asp:CommandField ShowSelectButton="True" HeaderText="ویرایش" ControlStyle-CssClass="btn btn-danger btn-xs fa fa-trash-o" SelectText="">
                                <ControlStyle CssClass="btn btn-success btn-xs fa fa-pencil"></ControlStyle>
                            </asp:CommandField>--%>

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
                        SelectCommand="SELECT [id], [aShift], [aDate], [aStartTime], [aTime], [aNum], [aDoctorId], [aDateTime], [aActive] 
                        , case aActive when 1 then N'فعال' else N'غیر فعال' end as activeDes
                        FROM [TblAppointmentConfig] WHERE ([aDoctorId] = @aDoctorId)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="aDoctorId" QueryStringField="did" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>


                </div>

            </div>
        </div>
    </div>


</asp:Content>
