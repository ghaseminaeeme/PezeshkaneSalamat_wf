<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite1.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="pezeshkaneSalamat_wf.Admin.test" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DropDownList ID="drdCity" runat="server" class="search-dropdown searchable-dropdown" AppendDataBoundItems="true" DataSourceID="SqlCity" DataTextField="cName" DataValueField="id">
        <asp:ListItem Value="0" Text="شهر"></asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlCity" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>" SelectCommand="SELECT [id], [cName] FROM [TblCity] WHERE ([cIsDeleted] &lt;&gt; @cIsDeleted) ORDER BY [cName]">
        <SelectParameters>
            <asp:Parameter DefaultValue="true" Name="cIsDeleted" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
