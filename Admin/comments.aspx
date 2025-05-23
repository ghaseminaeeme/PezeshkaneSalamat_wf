<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite1.Master" AutoEventWireup="true" CodeBehind="comments.aspx.cs" Inherits="pezeshkaneSalamat_wf.Admin.comments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h1 class="page-head-line">شهرها</h1>
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

                 <div class="form-group col-md-12 col-xs-12 pull-right">
                    <asp:Label ID="lbStatus" runat="server" Text=""></asp:Label>
                     </div>
                <div class="form-group col-md-12 col-xs-12 pull-right">
                    <label>نام </label>
                    <asp:Label ID="lbName" runat="server" Text=""></asp:Label>
                </div>
                <div class="form-group col-md-12 col-xs-12 pull-right">
                    <label>تاریخ ثبت </label>
                    <asp:Label ID="lbDate" runat="server" Text=""></asp:Label>
                </div>

                <div class="form-group col-md-12 col-xs-12 pull-right">
                    <label>نام دکتر </label>
                    <asp:Label ID="lbDoctor" runat="server" Text=""></asp:Label>
                </div>

                <div class="form-group col-md-12 col-xs-12 pull-right">
                    <label>متن پیام </label>
                    <asp:TextBox ID="TxtComment" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>

                <div class="form-group col-md-4 col-xs-12 pull-right">
                    <label>تایید </label>
                    <asp:DropDownList ID="DrdDisplayStatus" runat="server" CssClass="form-control">
                        <asp:ListItem Text="تایید نشده" Value="0"></asp:ListItem>
                        <asp:ListItem Text="تایید شده" Value="1"></asp:ListItem>
                    </asp:DropDownList>
                </div>


                <hr>
                <div class="form-group col-md-12">
                    <asp:Button ID="btnSave" runat="server" Text="ذخـــیره" class="btn btn-info pull-right" OnClick="btnSave_Click" />
                </div>
                <hr>
        </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="panel-body">
                <div class="grid-list">
                    <%--                     <div class="form-group col-md-4 col-xs-12 pull-right">
                        <label>فیلتر بر اساس استان</label>
                        <asp:DropDownList ID="DrdFilter" runat="server" DataSourceID="SqlState" DataTextField="sName" DataValueField="id"
                            CssClass="form-control" AutoPostBack="true" AppendDataBoundItems="true">
                            <asp:ListItem Value="0" Text="همه موارد"></asp:ListItem>
                        </asp:DropDownList>
                    </div>--%>
                    <!---------------------------------------------- -->
                    <asp:Button ID="BtnDel" runat="server" CssClass="btn btn-theme BtnDel pull-left" Text="حذف ردیفهای انتخاب شده"
                        OnClick="BtnDel_Click"
                        OnClientClick="return confirm('آیا از حذف موارد انتخابی مطمئن هستید؟');" />
                    <!------------------------------------------------  -->
                    <asp:GridView ID="GV" runat="server"
                        AutoGenerateColumns="False" DataKeyNames="id"
                        PageSize="15" PagerStyle-CssClass="pgr" AllowPaging="True"
                        class="table table-striped table-advance table-hover" DataSourceID="SqlAll"
                        OnSelectedIndexChanged="GV_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="name" HeaderText="نام " SortExpression="name"></asp:BoundField>
                            <asp:BoundField DataField="doctorName" HeaderText="پزشک" SortExpression="doctorName"></asp:BoundField>
                            <asp:BoundField DataField="PersianDateTime" HeaderText="تاریخ " SortExpression="PersianDateTime"></asp:BoundField>
                            <asp:BoundField DataField="statusDes" HeaderText="وضعیت" SortExpression="statusDes"></asp:BoundField>
                            <asp:BoundField DataField="displayStatusDes" HeaderText="وضعیت نمایش " SortExpression="displayStatusDes"></asp:BoundField>

                            <asp:CommandField ShowSelectButton="True" HeaderText="نمایش" ControlStyle-CssClass="btn btn-danger btn-xs fa fa-trash-o" SelectText="">
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
                        SelectCommand="admin_getComment" SelectCommandType="StoredProcedure">
                        <%-- <SelectParameters>
                            <asp:ControlParameter ControlID="DrdFilter" Name="doctorId" PropertyName="SelectedValue" Type="Int32" DefaultValue="0" />
                        </SelectParameters>--%>
                    </asp:SqlDataSource>


                </div>

            </div>
        </div>
    </div>
</asp:Content>
