<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite1.Master" AutoEventWireup="true" CodeBehind="password.aspx.cs" Inherits="pezeshkaneSalamat_wf.Admin.password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="row">
        <div class="col-md-12">
            <h1 class="page-head-line">تغییر رمز </h1>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="panel-body">


                <!--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$-->
                <div class="alert alert-success" id="suc" runat="server" visible="false">
                    <asp:Label ID="lbSuc" runat="server" Text="عملیات با موفقیت انجام شد"></asp:Label>
                </div>
                <div class="alert alert-danger" id="err" runat="server" visible="false">
                    <asp:Label ID="lbErr" runat="server" Text="متاسفانه عملیات انجام نشد لطفا مجددا سعی نمایید"></asp:Label>
                </div>
                <div class="alert alert-danger" id="war" runat="server" visible="false">
                    <asp:Label ID="lbMsg" runat="server" Text="رمز فعلی اشتباه است"></asp:Label>
                </div>
                <!--$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$-->
                <div class="form-panel">
                    <div class="form-horizontal style-form">
                        <div class="form-group">

                            <label>رمز فعلی</label>
                            <asp:TextBox ID="TxtCurrent" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="v1" runat="server" ErrorMessage="**" ControlToValidate="TxtCurrent" CssClass="valid" ValidationGroup="save"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="REV1" CssClass="valid" runat="server" ControlToValidate="TxtPass" ValidationGroup="save" ValidationExpression="[a-zA-Z0-9!@&*_.,]{3,15}"
                                ErrorMessage=" (!@&*_.,)رمز عبور باید شامل حداقل 3 و حداکثر 15 کاراکتر باشد. شامل اعداد ، حروف انگلیسی و علائم "></asp:RegularExpressionValidator>
                        </div>

                        <div class="form-group">
                            <label>رمز جدید</label>
                            <asp:TextBox ID="TxtPass" runat="server" class="form-control" TextMode="Password" MaxLength="12"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="v2" runat="server" ErrorMessage="**" ControlToValidate="TxtPass" CssClass="valid" ValidationGroup="save"></asp:RequiredFieldValidator>
                        </div>

                        <div class="form-group">
                            <label>تکرار رمز</label>
                            <asp:TextBox ID="TxtRePass" runat="server" class="form-control" TextMode="Password" MaxLength="12"></asp:TextBox>
                            <asp:CompareValidator ID="v3" runat="server" ErrorMessage="تکرار رمز اشتباه است" ControlToValidate="TxtRePass" ControlToCompare="TxtPass" CssClass="valid" ValidationGroup="save"></asp:CompareValidator>
                        </div>
                        <asp:Button ID="btnSave" class="btn btn-theme" runat="server" Text="ذخـــیره" OnClick="btnSave_Click" ValidationGroup="save" />
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
