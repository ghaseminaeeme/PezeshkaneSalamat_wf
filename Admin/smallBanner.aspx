<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite1.Master" AutoEventWireup="true" CodeBehind="smallBanner.aspx.cs" Inherits="pezeshkaneSalamat_wf.Admin.smallBanner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="row">
        <div class="col-md-12">
            <h1 class="page-head-line">مدیریت بنرهای کوچک وسط صفحه اصلی</h1>
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
               
                <div class="form-group col-md-3 col-xs-12 pull-right">
                    <label>وضعیت نمایش</label>
                    <asp:DropDownList ID="DrdActive" runat="server" CssClass="form-control">
                        <asp:ListItem Value="1" Text="فعال"></asp:ListItem>
                        <asp:ListItem Value="0" Text="غیر فعال"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group col-md-6 col-xs-12 pull-right">
                    <label>لینک</label>
                    <asp:TextBox ID="TxtLink" class="form-control" runat="server"></asp:TextBox>
                    <p class="help-block">آدرس لینک را کامل بنویسد. مثال: https://doctoryab-iran.com/Doctors.aspx </p>
                </div>
                <hr />
                <div class="form-group">
                    <label>تصویر</label>
                    <asp:FileUpload ID="Fu1" runat="server" accept="image/*" onchange="loadFile(event)" />
                    <img id="output" style="width: 100px; height: 55px; margin-top: 5px;" /><asp:Image ID="Image1" runat="server" Style="width: 100px; height: 55px; margin-top: 5px;" />
                    <span class="help-block">سایز مناسب عکس 450*650 پیکسل و با رزولوشن 72  می باشد</span>
                </div>
                <div class="form-group col-md-12">
                    <asp:Button ID="btnSave" runat="server" Text="ذخـــیره" class="btn btn-info pull-right" OnClick="btnSave_Click" />
                </div>
                <hr>

                <!--*****************************************-->
                <script>
                    var loadFile = function (event) {
                        var reader = new FileReader();
                        reader.onload = function () {
                            var output = document.getElementById('output');
                            output.src = reader.result;
                        };
                        reader.readAsDataURL(event.target.files[0]);
                    };
                </script>
                <!--*****************************************-->
                <div class="grid-list">
                    <div class="form-group col-md-12 col-xs-12 pull-right">
                        <label>وضعیت</label>
                        <asp:DropDownList ID="DrdFilterStatus" runat="server"
                            CssClass="form-control" AppendDataBoundItems="true" AutoPostBack="true">
                            <asp:ListItem Value="2" Text="همه بنر ها"></asp:ListItem>
                             <asp:ListItem Value="1" Text="فعال"></asp:ListItem>
                             <asp:ListItem Value="0" Text="غیر فعال"></asp:ListItem>
                        </asp:DropDownList>
                       
                    </div>
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
                            <asp:ImageField DataImageUrlField="image" HeaderText="تصویر">
                                <ControlStyle Width="50%" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                            </asp:ImageField>
                            <asp:BoundField DataField="Subject" HeaderText="عـنوان" SortExpression="Subject"></asp:BoundField>
                            <asp:BoundField DataField="active" HeaderText="وضعیت" SortExpression="active"></asp:BoundField>
                            <asp:CommandField ShowSelectButton="True" HeaderText="ویرایش" ControlStyle-CssClass="btn btn-danger btn-xs fa fa-pencil" SelectText="">
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
                        SelectCommand="SELECT [id], ROW_NUMBER() OVER (ORDER BY id DESC) Row, [subject], [active], [image] ,
                        case [active] when 1 then N'فعال'  when 0 then N'غیر فعال' end as active
                        FROM [TblSmallBanner] 
                        WHERE ([active] = @active) OR (@active = 2) ORDER BY [id] DESC">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DrdFilterStatus" Name="active" PropertyName="SelectedValue" DefaultValue="1" Type="Byte" />
                        </SelectParameters>
                    </asp:SqlDataSource>


                </div>

            </div>
        </div>
    </div>
</asp:Content>
