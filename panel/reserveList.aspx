<%@ Page Title="" Language="C#" MasterPageFile="~/panel/panelMaster.Master" AutoEventWireup="true" CodeBehind="reserveList.aspx.cs" Inherits="pezeshkaneSalamat_wf.panel.reserveList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="row">
        <div class="col-md-12">
            <h1 class="page-head-line">لیست پزشکان</h1>
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
              

                <!--*****************************************-->
                <div class="grid-list">
                    <!---------------------------------------------- -->
                  <%--  <asp:Button ID="BtnDel" runat="server" CssClass="btn btn-theme BtnDel" Text="حذف ردیفهای انتخاب شده" OnClick="BtnDel_Click"
                        OnClientClick="return confirm('آیا از حذف موارد انتخابی مطمئن هستید؟');" />--%>
                    <!------------------------------------------------  -->
                    <asp:GridView ID="GV" runat="server"
                        AutoGenerateColumns="False" DataKeyNames="id"
                        PageSize="15" PagerStyle-CssClass="pgr" AllowPaging="True"
                        class="table table-striped table-advance table-hover" DataSourceID="SqlAll">
                        <Columns>
                            <asp:BoundField DataField="rName" HeaderText="نام" SortExpression="rName"></asp:BoundField>
                            <asp:BoundField DataField="rPhonenumber" HeaderText="موبایل" SortExpression="rPhonenumber"></asp:BoundField>
                            <asp:BoundField DataField="rTrackingCode" HeaderText="کد پیگیری" SortExpression="rTrackingCode"></asp:BoundField>
                            <asp:BoundField DataField="persianDate" HeaderText="تاریخ و ساعت" SortExpression="persianDate"></asp:BoundField>
                            
                        </Columns>

                        <EmptyDataTemplate>
                            <asp:Label ID="Label8" runat="server" Text="هیچ داده ای برای نمایش موجود نیست"></asp:Label>
                        </EmptyDataTemplate>

                        <PagerStyle CssClass="pgr"></PagerStyle>
                    </asp:GridView>


                    <asp:SqlDataSource ID="SqlAll" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>"
                        SelectCommand="panel_getReserves" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:SessionParameter Name="doctorId" SessionField="doctorUser" Type="Int32" DefaultValue="2085" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
