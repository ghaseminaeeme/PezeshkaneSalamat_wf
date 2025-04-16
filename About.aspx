<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="pezeshkaneSalamat_wf.About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div data-elementor-type="single-post" data-elementor-id="1023" class="elementor elementor-1023 pzy-loop-item post-5142 post type-post status-publish format-standard hentry category-1" data-elementor-post-type="elementor_library">
        <div class="elementor-element elementor-element-11d27f7 e-flex e-con-boxed e-con e-parent e-lazyloaded" data-id="11d27f7" data-element_type="container">
            <div class="e-con-inner">
                <div class="elementor-element elementor-element-ba164f6 elementor-widget elementor-widget-pzy_breadcrumb" data-id="ba164f6" data-element_type="widget" data-widget_type="pzy_breadcrumb.default">
                    <div class="elementor-widget-container">
                        <ul id="breadcrumbs" class="pzy-breadcrumb-list">
                            <li class="pzy-breadcrumb-list-item"><a href="/">صفحه اصلی</a></li>
                            <li class="pzy-breadcrumb-separator">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left">
                                    <polyline points="15 18 9 12 15 6"></polyline></svg></li>
                            <li class="pzy-breadcrumb-list-item"><span class="pzy-breadcrumb-current-item">درباره ما </span></li>
                        </ul>

                    </div>
                </div>



                <div class="elementor-element elementor-element-09ea0bd e-con-full e-flex e-con e-child">
                    <div class="elementor-element elementor-element-c6ef506 e-con-full e-flex e-con e-child" data-id="c6ef506" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                        <div class="elementor-element elementor-element-6a6da74 elementor-widget elementor-widget-theme-post-title elementor-page-title elementor-widget-heading" data-id="6a6da74" data-element_type="widget" data-widget_type="theme-post-title.default">
                            <div class="elementor-widget-container">
                                <h1 class="elementor-heading-title elementor-size-default">درباره پزشکان سلامت بیشتر بدانید! </h1>
                            </div>
                        </div>

                    </div>
                    <div class="elementor-element elementor-element-782d964 e-con-full e-flex e-con e-child" data-id="782d964" data-element_type="container">
                    </div>
                    <div class="elementor-element elementor-element-47ce196 e-con-full e-flex e-con e-child" data-id="47ce196" data-element_type="container">
                        <div class="elementor-element elementor-element-ee72e84 blog-single-content elementor-widget elementor-widget-theme-post-content" data-id="ee72e84" data-element_type="widget" data-widget_type="theme-post-content.default">
                            <div class="elementor-widget-container">
                                <div data-elementor-type="wp-post" data-elementor-id="5142" class="elementor elementor-5142" data-elementor-post-type="post">
                                    <div class="elementor-element elementor-element-27a50db7 e-flex e-con-boxed e-con e-parent e-lazyloaded" data-id="27a50db7" data-element_type="container">
                                        <div class="e-con-inner">
                                            <div class="elementor-element elementor-element-20bd3157 elementor-widget elementor-widget-text-editor" data-id="20bd3157" data-element_type="widget" data-widget_type="text-editor.default">
                                                <div class="elementor-widget-container about-content">

                                                    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlAbout">
                                                        <ItemTemplate>
                                                            <%#Eval("aDescription") %>
                                                        </ItemTemplate>
                                                    </asp:FormView>
                                                </div>
                                            </div>
                                            <asp:SqlDataSource ID="SqlAbout" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>"
                                                SelectCommand="SELECT [id], [aDescription], [aTel], [aMobile], [aEmail], [aTelegram], [aInstagram], [aAparat], 
                                                            [aWhatsapp], [aWorkTime], [aImg1], [aImg2], [aFooterText], [aAddress] 
                                                            FROM [TblAbout] WHERE ([id] = @id)">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="1" Name="id" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
