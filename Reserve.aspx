<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reserve.aspx.cs" Inherits="pezeshkaneSalamat_wf.Reserve" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <main>
         <div class="reserve">
             <p class="">
                کاربر گرامی رزرو شما با موفقیت انجام شد. کد رزرو شما : <asp:Label ID="Label1" runat="server" Text=""></asp:Label> <br />
                 لطفا این کد را در جایی یادداشت کرده و هنگام مراجعه به پزشک ارائه دهید.
             </p>

         </div>
         </main>
</asp:Content>
