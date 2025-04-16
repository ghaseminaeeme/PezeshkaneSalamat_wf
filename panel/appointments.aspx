<%@ Page Title="" Language="C#" MasterPageFile="~/panel/panelMaster.Master" AutoEventWireup="true" CodeBehind="appointments.aspx.cs" Inherits="pezeshkaneSalamat_wf.panel.appointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h1 class="page-head-line">لیست نوبت های یک هفته</h1>
            <span>در صورتی که زمانی را نمی توانید خدمات ارائه دهید، آن نوبت را باطل کنید، تا امکان رزرو نداشته باشد.</span>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="panel-body">
                <div class="alert alert-danger" runat="server" id="err" visible="false">
                    متاسفانه خطایی رخ داده است! لطفا مجددا سعی نمایید.
                </div>
                <div class="alert alert-success" runat="server" id="suc" visible="false">
                    نوبت با موفقیت باطل شد.
                </div>


                <!--*****************************************-->
                <div class="grid-list panel-appointment">
                    <!---------------------------------------------- -->
                    <asp:Button ID="BtnDel" runat="server" CssClass="btn btn-theme BtnDel" Text="ابطال نوبتهای انتخاب شده" OnClick="BtnDel_Click"
                        OnClientClick="return confirm('آیا از ابطال موارد انتخابی اطمینان دارید؟');" />
                    <!------------------------------------------------  -->
                    <asp:GridView ID="GV" runat="server"
                        AutoGenerateColumns="False" DataKeyNames="AppointmentTime"
                        PageSize="15" PagerStyle-CssClass="pgr" AllowPaging="True"
                        class="table table-striped table-advance table-hover" DataSourceID="SqlAll">
                        <Columns>
                             <asp:BoundField DataField="pDate" HeaderText="تاریخ" SortExpression="pDate"></asp:BoundField>
                            <asp:BoundField DataField="PersianDateTime" HeaderText="زمان" SortExpression="PersianDateTime"></asp:BoundField>
                            <asp:BoundField DataField="statusDes" HeaderText="وضعیت" SortExpression="statusDes"></asp:BoundField>
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
                        SelectCommand="panel_getAppointment" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:SessionParameter Name="doctorId" SessionField="doctorId" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
