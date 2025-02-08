<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite1.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="pezeshkaneSalamat_wf.Admin.dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="row">
        <div class="col-md-12">
            <h1 class="page-head-line">داشبورد</h1>
            <!-- <h1 class="page-subhead-line">This is dummy text , you can replace it with your original text. </h1> -->
        </div>
    </div>
    <!-- /. ROW  -->
    <div class="row">
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource1" CssClass="width100">
            <ItemTemplate>
                <div class="col-md-4 col-xs-12 pull-right">
                    <div class="main-box mb-red">
                        <a href="mssages.aspx">
                            <i class="fa fa-bolt fa-5x"></i>
                            <h5>تعداد پیام های خوانده نشده</h5>
                            <h3><%#Eval("newMsg") %></h3>
                        </a>
                    </div>
                </div>
                <div class="col-md-4 col-xs-12 pull-right">
                    <div class="main-box mb-dull">
                        <a href="adversList.aspx">
                            <i class="fa fa-plug fa-5x"></i>
                            <h5>مقالات ثبت شده</h5>
                            <h3><%#Eval("blog") %></h3>
                        </a>
                    </div>
                </div>
                <div class="col-md-4 col-xs-12 pull-right">
                    <div class="main-box mb-pink">
                        <a href="doctors.aspx">
                            <i class="fa fa-dollar fa-5x"></i>
                            <h5>پزشکان در حال انقضا</h5>
                            <h3><%#Eval("expiredDoctor") %></h3>
                        </a>
                    </div>
                </div>
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>"
            SelectCommand="selectSummery" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

    </div>
  
    <div class="col-md-12">
        <div class="panel panel-primary">
            <!-- Default panel contents -->
            <div class="panel-heading">لیست پزشکان در حال انقضا</div>

            <!-- Table -->
            <table class="table tbl">
                <thead>
                    <tr>
                        <th>نام</th>
                        <th>موبایل</th>
                        <th>تاریخ انقضا</th>
                        <th>وضعیت</th>
                        <th>جزئیات</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDoctors">
                        <ItemTemplate>
                            <tr class="list-group-item-text">
                                <td><%#Eval("dName") %></td>
                                <td><%#Eval("dMobile") %></td>
                                <td><%#Eval("dEndDate") %></td>
                                <td><%#Eval("status") %> </td>
                                <td><a href="editDoctor.aspx?did=<%#Eval("id") %>">جزئیات</a></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
            <asp:SqlDataSource ID="SqlDoctors" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>"
                SelectCommand="SELECT top(6) dbo.TblDoctors.id, dbo.TblDoctors.dName, dbo.TblDoctors.dEndDate, dbo.TblDoctors.dMobile , 
                case dbo.TblDoctors.dStatus when 0 then N'غیر فعال'  when 1 then N'فعال' end as status 
                    FROM [TblDoctors] INNER JOIN dbo.TblBranch ON dbo.TblDoctors.dBranchFk = dbo.TblBranch.id 
                        INNER JOIN dbo.TblCity ON dbo.TblDoctors.dCityFk = dbo.TblCity.id 
                WHERE ([dIsDeleted] &lt;&gt; @dIsDeleted) AND ((dbo.TblCity.cIsDeleted &lt;&gt; 1) and (dbo.TblBranch.bIsDeleted  &lt;&gt; 1) )ORDER BY [dEndDate]">
                <SelectParameters>
                    <asp:Parameter DefaultValue="true" Name="dIsDeleted" Type="Boolean" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
