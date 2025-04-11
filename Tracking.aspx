<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Tracking.aspx.cs" Inherits="pezeshkaneSalamat_wf.Tracking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <div class="elementor-element elementor-element-9c7195c elementor-widget elementor-widget-pzy_breadcrumb" data-id="9c7195c" data-element_type="widget" data-widget_type="pzy_breadcrumb.default">
                        <div class="elementor-widget-container">
                            <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDoctor" CssClass="w-100">
                                <ItemTemplate>
                                    <ul id="breadcrumbs" class="pzy-breadcrumb-list">
                                        <li class="pzy-breadcrumb-list-item"><a href="/"> خانه </a></li>
                                        <li class='pzy-breadcrumb-separator'><i data-feather="chevron-left"></i></li>
                                        <li class="pzy-breadcrumb-list-item"><span class="pzy-breadcrumb-current-item">
                                            <h3><%#Eval("dName") %></h3>
                                        </span></li>
                                    </ul>
                                </ItemTemplate>
                            </asp:FormView>

                            <asp:SqlDataSource ID="SqlDoctor" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>"
                                SelectCommand="selectDoctorDetail" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="0" Name="id" QueryStringField="did" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                        </div>
                    </div>

        <div class="tracking">

            <h4 class="title mb-3">پیگیری نوبت دکتر </h4>

            <asp:Panel ID="Panel2" runat="server" DefaultButton="btnSave" class="form contact-us-form">
                <asp:Label ID="error" runat="server" Text="متاسفانه خطایی رخ داد. لطفا مجددا سعی نمایید" CssClass="lb-err" Visible="false"></asp:Label>
                <asp:Label ID="success" runat="server" Text="نوبت با موفقیت کنسل شد. " CssClass="lb-suc" Visible="false"></asp:Label>

                <div class="form-group">
                    <label for="username">کد رزرو خود را وارد کنید.</label>
                    <asp:TextBox ID="TxtCode" runat="server" placeholder="کد رزرو" class="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="v1" CssClass="validator" runat="server" ErrorMessage="کد رزرو الزامی است." ControlToValidate="TxtCode" ValidationGroup="save"></asp:RequiredFieldValidator>
                </div>
                <asp:Button ID="btnSave" runat="server" Text="پیگیری نوبت" class="btn btn-dark btn-rounded" ValidationGroup="save" OnClick="btnSave_Click" />


            </asp:Panel>

            <asp:Panel ID="Panel1" runat="server" CssClass="trackingReserve" Visible="false">
                <asp:HiddenField ID="HiddenField1" runat="server" />
                <p>
                    <strong>زمان: </strong>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </p>
                <p>
                    <strong>وضعیت: </strong>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </p>
                <asp:Button ID="btnDel" runat="server" Text="حذف نوبت" class="btn btn-dark btn-rounded" ValidationGroup="save" OnClick="btnDel_Click" OnClientClick="return confirm('آیا از حذف نوبت اطمینان دارید؟')" />

            </asp:Panel>
        </div>
    </main>
</asp:Content>
