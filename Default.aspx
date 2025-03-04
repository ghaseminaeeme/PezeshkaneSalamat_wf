<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="pezeshkaneSalamat_wf.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--  $$$$$$$$$$$$   Slider   $$$$$$$$$$$$$ -->
    <div class="elementor-element elementor-element-d903ab8 mobile-full-container e-flex e-con-boxed e-con e-parent" data-id="d903ab8" data-element_type="container">
        <div class="e-con-inner">

            <div class="elementor-element elementor-element-d903ab8 mobile-full-container e-flex e-con-boxed e-con e-parent" data-id="d903ab8" data-element_type="container">
                <div class="e-con-inner">
                    <!--  $$$$$$$$$$$$   Big slider   $$$$$$$$$$$$$ -->

                    <div class="elementor-element elementor-element-0d66dc4 elementor-widget__width-initial home-top-slider elementor-widget elementor-widget-pzy_elementor_slider w-100" data-id="0d66dc4" data-element_type="widget" data-settings="{&quot;slides_per_view&quot;:1,&quot;pagination&quot;:&quot;yes&quot;,&quot;loop_slider&quot;:&quot;yes&quot;,&quot;autoplay&quot;:&quot;yes&quot;,&quot;customize_slides_per_view&quot;:&quot;yes&quot;,&quot;space_between&quot;:16,&quot;hide_next_button&quot;:&quot;no&quot;,&quot;hide_prev_button&quot;:&quot;no&quot;}" data-widget_type="pzy_elementor_slider.default">
                        <div class="elementor-widget-container">
                            <div class="pzy-templates-slider" style="height: 100%">
                                <div class="slider-wrapper" style="height: 100%">
                                    <div class="swiper" data-settings='{"slidesPerView":1,"spaceBetween":16,"loop":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev","enabled":false},"pagination":{"el":".swiper-pagination","type":"bullets","enabled":true},"autoplay":{"delay":8000},"rtl":true,"breakpoints":{"768":{"slidesPerView":1,"spaceBetween":16,"loop":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev","enabled":false},"pagination":{"el":".swiper-pagination","type":null,"enabled":false},"autoplay":{"delay":8000},"rtl":true},"1024":{"slidesPerView":1,"spaceBetween":16,"loop":true,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev","enabled":true},"pagination":{"el":".swiper-pagination","type":null,"enabled":false},"rtl":true}}}'>
                                        <div class="swiper-wrapper">

                                            <!-- Start Slider Item  -->
                                            <asp:Repeater ID="RepeaterBanner" runat="server" DataSourceID="SqlBanner">
                                                <ItemTemplate>

                                                    <div class="swiper-slide">
                                                        <div class="pzy-templates-slide" style="height: 100%">
                                                            <div data-elementor-type="container" data-elementor-id="1404" class="elementor elementor-1404" data-elementor-post-type="elementor_library">
                                                                <div class="elementor-element elementor-element-4e39a3d e-flex e-con-boxed e-con e-parent" data-id="4e39a3d" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                                                                    <div class="e-con-inner">
                                                                        <%--    <div class="elementor-element elementor-element-c43b1c9 e-con-full e-flex e-con e-child" data-id="c43b1c9" data-element_type="container">
                                                                           
                                                                           
                                                                        </div>--%>

                                                                        <div class="elementor-element elementor-element-1bc5ab2 e-con-full e-flex e-con e-child" data-id="1bc5ab2" data-element_type="container">
                                                                            <div class="elementor-element elementor-element-6ae606d elementor-widget-mobile__width-inherit elementor-widget elementor-widget-image" data-id="6ae606d" data-element_type="widget" data-widget_type="image.default">
                                                                                <div class="elementor-widget-container">
                                                                                    <img loading="lazy" decoding="async" src='<%#Eval("bImage") %>'
                                                                                        class="attachment-full size-full wp-image-1420" alt="" width="256" height="324" sizes="(max-width: 256px) 100vw, 256px" srcset='<%#Eval("bImage") %>' />
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>

                                                </ItemTemplate>
                                            </asp:Repeater>
                                            <!-- End Slider Item  -->
                                            <asp:SqlDataSource ID="SqlBanner" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>"
                                                SelectCommand="selectBanners" SelectCommandType="StoredProcedure"></asp:SqlDataSource>


                                        </div>
                                        <div class="swiper-pagination"></div>
                                        <div class="swiper-button-prev">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="32" height="92" viewBox="0 0 32 92" fill="none">
                                                <path id="Curve" d="M0 92L-4.02145e-06 0L-4.01833e-06 0.0714264L-3.99596e-06 0.583168C-3.55658e-06 10.635 5.97355 19.7254 15.2 23.7143L19.0176 25.4672C26.9292 29.1001 32 37.0085 32 45.7143C32 54.3985 26.877 62.2653 18.9346 65.7772L15.2 67.4286C5.94779 71.6025 -4.89099e-07 80.8107 -4.54226e-08 90.9609L0 92Z" fill="white"></path></svg>
                                        </div>
                                        <div class="swiper-button-next">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="32" height="92" viewBox="0 0 32 92" fill="none">
                                                <path id="Curve" d="M0 92L-4.02145e-06 0L-4.01833e-06 0.0714264L-3.99596e-06 0.583168C-3.55658e-06 10.635 5.97355 19.7254 15.2 23.7143L19.0176 25.4672C26.9292 29.1001 32 37.0085 32 45.7143C32 54.3985 26.877 62.2653 18.9346 65.7772L15.2 67.4286C5.94779 71.6025 -4.89099e-07 80.8107 -4.54226e-08 90.9609L0 92Z" fill="white"></path></svg>
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

    <!--  $$$$$$$$$$$$   SEARCH   $$$$$$$$$$$$$ -->
    <div class="w-100 elementor-element elementor-element-b0348d5 elementor-widget__width-initial elementor-hidden-mobile elementor-search-form--skin-classic elementor-search-form--button-type-icon elementor-widget elementor-widget-search-form" data-id="b0348d5" data-element_type="widget" data-settings="{&quot;skin&quot;:&quot;classic&quot;}" data-widget_type="search-form.default">
        <div class="elementor-widget-container w-100 ">
            <div class="custom-search-bar">
                <div class="elementor-search-form">
                    <div class="search-fields">
                        <%-- <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSearch" CssClass="w-100">--%>
                        <!-- City Dropdown -->
                        <asp:DropDownList ID="drdCity" runat="server" class="search-dropdown" AppendDataBoundItems="true" DataSourceID="SqlCity" DataTextField="cName" DataValueField="id">
                            <asp:ListItem Value="0" Text="شهر"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlCity" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>" SelectCommand="SELECT [id], [cName] FROM [TblCity] WHERE ([cIsDeleted] &lt;&gt; @cIsDeleted) ORDER BY [cName]">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="true" Name="cIsDeleted" Type="Boolean" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                        <!-- Category Dropdown -->

                        <asp:DropDownList ID="drdBranch" runat="server" AppendDataBoundItems="True" DataSourceID="SqlBranch" DataTextField="bSubject" DataValueField="id" CssClass="search-dropdown">
                            <asp:ListItem Value="0" Text="انتخاب تخصص"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlBranch" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>" SelectCommand="SELECT [id], [bSubject] FROM [TblBranch] WHERE ([bIsDeleted] &lt;&gt; @bIsDeleted) ORDER BY [bSubject]">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="true" Name="bIsDeleted" Type="Boolean" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                        <!-- Doctor Name Input -->
                        <asp:TextBox ID="txtSearch" runat="server" class="search-input" placeholder="نام پزشک را وارد کنید"></asp:TextBox>

                        <!-- Search Button -->
                        <asp:LinkButton ID="btnSearch" runat="server" class="header-search-button" aria-label="جستجو" OnClick="btnSearch_Click">
                             <svg class="fa fa-search e-font-icon-svg e-fas-search" viewBox="0 0 512 512" xmlns="http://www.w3.org/2000/svg">
                                 <path d="M505 442.7L405.3 343c-4.5-4.5-10.6-7-17-7H372c27.6-35.3 44-79.7 44-128C416 93.1 322.9 0 208 0S0 93.1 0 208s93.1 208 208 208c48.3 0 92.7-16.4 128-44v16.3c0 6.4 2.5 12.5 7 17l99.7 99.7c9.4 9.4 24.6 9.4 33.9 0l28.3-28.3c9.4-9.4 9.4-24.6.1-34zM208 336c-70.7 0-128-57.2-128-128 0-70.7 57.2-128 128-128 70.7 0 128 57.2 128 128 0 70.7-57.2 128-128 128z"></path>
                            </svg>
                        </asp:LinkButton>
                        <%--</asp:Panel>--%>
                    </div>
                </div>
            </div>

            <%--<div class="contact-info">
        <p class="rmp-heading rmp-heading--title"> برای ثبت در سامانه پزشکان سلامت با شماره <a href="tel:+989106340472">  09106340472 </a> تماس بگیرید.</p>
    </div>--%>
        </div>
    </div>


    <div class="elementor-element elementor-element-952f120 e-flex e-con-boxed e-con e-parent e-lazyloaded txt-center" data-id="952f120" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
        <div class="e-con-inner">
            <div class="elementor-element elementor-element-bc38e5a e-con-full e-flex e-con e-child" data-id="bc38e5a" data-element_type="container">
                <div class="elementor-element elementor-element-f6e7b9b e-con-full pzy-position-relative e-flex e-con e-child" data-id="f6e7b9b" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                    <div class="elementor-element elementor-element-6ac79a4 elementor-position-right elementor-vertical-align-middle elementor-mobile-position-right elementor-view-default elementor-widget elementor-widget-icon-box" data-id="6ac79a4" data-element_type="widget" data-widget_type="icon-box.default">
                        <div class="elementor-widget-container">
                            <div class="elementor-icon-box-wrapper">

                                <div class="elementor-icon-box-icon">
                                    <span class="elementor-icon">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                            <g id="shopping-bag">
                                                <path id="Icon" d="M2.5 5.00001L5 1.66667H15L17.5 5.00001M2.5 5.00001V16.6667C2.5 17.1087 2.67559 17.5326 2.98816 17.8452C3.30072 18.1577 3.72464 18.3333 4.16667 18.3333H15.8333C16.2754 18.3333 16.6993 18.1577 17.0118 17.8452C17.3244 17.5326 17.5 17.1087 17.5 16.6667V5.00001M2.5 5.00001H17.5M13.3333 8.33334C13.3333 9.21739 12.9821 10.0652 12.357 10.6904C11.7319 11.3155 10.8841 11.6667 10 11.6667C9.11594 11.6667 8.2681 11.3155 7.64298 10.6904C7.01786 10.0652 6.66667 9.21739 6.66667 8.33334" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                            </g></svg>
                                    </span>
                                </div>

                                <div class="elementor-icon-box-content">

                                    <h3 class="elementor-icon-box-title">
                                        <span> برای ثبت در سامانه پزشکان سلامت با شماره <a href="tel:+989106340472">  09106340472 </a> تماس بگیرید </span>
                                    </h3>


                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--  $$$$$$$$$$$$   LIST   $$$$$$$$$$$$$ -->
    <div class="elementor-element elementor-element-e695999 e-flex e-con-boxed e-con e-parent" data-id="e695999" data-element_type="container">
        <div class="e-con-inner">
            <div class="elementor-element elementor-element-1a05415 e-con-full e-flex e-con e-child" data-id="1a05415" data-element_type="container">
                <div class="elementor-element elementor-element-630ee93 elementor-position-right elementor-vertical-align-middle elementor-widget__width-auto elementor-mobile-position-right elementor-vertical-align-middle elementor-view-default elementor-widget elementor-widget-icon-box" data-id="630ee93" data-element_type="widget" data-widget_type="icon-box.default">
                    <div class="elementor-widget-container">
                        <div class="elementor-icon-box-wrapper">

                            <div class="elementor-icon-box-icon">
                                <span class="elementor-icon elementor-animation-">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                        <g id="box">
                                            <path id="Icon" d="M2.725 5.80002L10 10.0084L17.275 5.80002M10 18.4V10M17.5 13.3334V6.66669C17.4997 6.37442 17.4225 6.08736 17.2763 5.83432C17.13 5.58128 16.9198 5.37116 16.6667 5.22502L10.8333 1.89169C10.58 1.74541 10.2926 1.6684 10 1.6684C9.70744 1.6684 9.42003 1.74541 9.16667 1.89169L3.33333 5.22502C3.08022 5.37116 2.86998 5.58128 2.72372 5.83432C2.57745 6.08736 2.5003 6.37442 2.5 6.66669V13.3334C2.5003 13.6256 2.57745 13.9127 2.72372 14.1657C2.86998 14.4188 3.08022 14.6289 3.33333 14.775L9.16667 18.1084C9.42003 18.2546 9.70744 18.3316 10 18.3316C10.2926 18.3316 10.58 18.2546 10.8333 18.1084L16.6667 14.775C16.9198 14.6289 17.13 14.4188 17.2763 14.1657C17.4225 13.9127 17.4997 13.6256 17.5 13.3334Z" stroke="#0052A8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </g></svg>
                                </span>
                            </div>

                            <div class="elementor-icon-box-content">

                                <h2 class="elementor-icon-box-title">
                                    <span>متخصصین پزشکان سلامت </span>
                                </h2>

                            </div>

                        </div>
                    </div>
                </div>
                <div class="elementor-element elementor-element-12611cd elementor-hidden-mobile elementor-widget elementor-widget-pzy_divider" data-id="12611cd" data-element_type="widget" data-widget_type="pzy_divider.default">
                    <div class="elementor-widget-container">
                        <div class="pzy-divider-widget-layout pzy-d-flex pzy-justify-content-center pzy-align-items-center">
                            <div class="pzy-divider-widget-before"></div>
                            <div class="pzy-divider-widget pzy-flex-1"></div>
                            <div class="pzy-divider-widget-after"></div>

                        </div>
                    </div>
                </div>
                <div class="elementor-element elementor-element-88d0bff elementor-position-left elementor-vertical-align-middle elementor-widget__width-auto elementor-mobile-position-left elementor-view-default elementor-widget elementor-widget-icon-box" data-id="88d0bff" data-element_type="widget" data-widget_type="icon-box.default">
                    <div class="elementor-widget-container">
                        <div class="elementor-icon-box-wrapper">

                            <div class="elementor-icon-box-icon">
                                <a href="#" class="elementor-icon elementor-animation-" tabindex="-1">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                        <g id="chevron-left">
                                            <path id="Icon" d="M12.5 15L7.5 10L12.5 5" stroke="#A6AFB8" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        </g></svg>
                                </a>
                            </div>

                            <div class="elementor-icon-box-content">

                                <span class="elementor-icon-box-title">
                                    <a href="/jobs?filter-title=&filter-location=0&filter-category=0">مشاهده همه
                                    </a>
                                </span>


                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <section class="pzy-archive-content pzy-staffs-archive">
        <div class="pzy-staffs-consultation">
            <div class="pzy-services-loop">


                <asp:ListView ID="ListSpecialDoctors" runat="server" DataSourceID="SqlSpecialDoctors">
                    <ItemTemplate>
                        <article class="pzy-staff-card">
                            <div class="pzy-staff-special">

                                <svg width="16" height="16" viewBox="0 0 16 16" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <g id="Icon" clip-path="url(#clip0_2884_3321)">
                                        <path id="path961"
                                            d="M16 8C15.9851 7.44966 15.8173 6.91432 15.5155 6.45392C15.2136 5.99352 14.7895 5.62623 14.2907 5.39317C14.4798 4.87606 14.5208 4.31645 14.4091 3.77731C14.2974 3.23817 14.0375 2.7409 13.6585 2.34146C13.2591 1.96252 12.7618 1.70257 12.2227 1.59088C11.6835 1.47919 11.1239 1.52019 10.6068 1.70927C10.3745 1.20993 10.0074 0.785371 9.54684 0.483387C9.08628 0.181403 8.55056 0.0139906 8 0C7.45035 0.0136319 6.91552 0.180992 6.45615 0.483103C5.99677 0.785214 5.63123 1.20999 5.40098 1.70927C4.88269 1.51953 4.32174 1.47818 3.78123 1.58987C3.24072 1.70155 2.7421 1.96185 2.34146 2.34146C1.97043 2.74578 1.71917 3.24533 1.6158 3.78426C1.51242 4.3232 1.561 4.88026 1.7561 5.39317C1.2491 5.62027 0.815861 5.98486 0.50548 6.4456C0.195099 6.90635 0.0199899 7.44482 0 8C0.0199899 8.55518 0.195099 9.09365 0.50548 9.5544C0.815861 10.0151 1.2491 10.3797 1.7561 10.6068C1.56602 11.1232 1.52376 11.6824 1.63407 12.2215C1.74437 12.7606 2.00286 13.2583 2.38049 13.6585C2.78088 14.0359 3.27812 14.2948 3.81689 14.4064C4.35566 14.5181 4.91483 14.478 5.4322 14.2907C5.66226 14.7838 6.0235 15.204 6.4764 15.5055C6.92929 15.8069 7.45639 15.978 8 16C8.55056 15.986 9.08628 15.8186 9.54684 15.5166C10.0074 15.2146 10.3745 14.7901 10.6068 14.2907C11.1217 14.4933 11.6845 14.5411 12.2261 14.4284C12.7678 14.3156 13.2647 14.0471 13.6559 13.6559C14.0471 13.2647 14.3156 12.7678 14.4284 12.2261C14.5411 11.6845 14.4933 11.1217 14.2907 10.6068C14.7895 10.3738 15.2136 10.0065 15.5155 9.54608C15.8173 9.08568 15.9851 8.55034 16 8ZM6.86049 11.278L3.94146 8.35902L5.04195 7.21951L6.80585 8.98341L10.5522 4.90146L11.6995 5.96293L6.86049 11.278Z"
                                            fill="#1D9BF0" />
                                    </g>
                                    <defs>
                                        <clippath id="clip0_2884_3321">
                                        </clippath>
                                        <rect width="16" height="16" fill="white" />
                                    </defs>
                                </svg>
                            </div>

                            <div class="pzy-staff-avatar-box pzy-circle-avatar-box pzy-position-relative"
                                style="background: #77df9b">
                                <a href='/job/<%#Eval("dUrl") %>'
                                    class="pzy-d-block pzy-position-absolute pzy-staff-avatar-link">
                                    <img class="pzy-staff-card-avatar"
                                        src='<%#Eval("dImg") %>' alt="<%#Eval("dName") %>" />
                                </a>
                            </div>


                            <h3 class="pzy-staff-title p-16-bold">
                                <a href='/job/<%#Eval("dUrl") %>'><%#Eval("dName") %> </a>
                            </h3>
                            <h4 class="pzy-staff-subtitle"><%#Eval("cName") %></h4>

                            <h4 class="pzy-staff-subtitle"><%#Eval("bSubject") %></h4>
                            <div class="pzy-staff-point">
                                <!-- FeedbackWP Plugin - Results Widget -->
                                <%-- <div class="rmp-results-widget js-rmp-results-widget js-rmp-results-widget--131 "
                                    data-post-id="131">
                                    <div class="rmp-results-widget__visual-rating">
                                        <i
                                            class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i
                                                class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i
                                                    class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i
                                                        class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i
                                                            class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i>
                                    </div>
                                    <div class="rmp-results-widget__avg-rating">
                                        <span
                                            class="js-rmp-avg-rating">3 </span>
                                    </div>
                                    <div class="rmp-results-widget__vote-count">
                                        (<span
                                            class="js-rmp-vote-count">1</span>)
                                    </div>
                                </div>
                                <span class="t-13-regular text-gray-300">1 نظر</span>--%>
                            </div>

                            <%--      <button class="pzy-staff-consultation-request"
                                data-staff-name="دکتر مبین امین" data-staff="131">
                                <i class="pzy-staff-consultation-request-icon"
                                    data-feather="message-square"></i>
                                <span class="pzy-staff-consultation-request-title">درخواست مشاوره</span>
                            </button>--%>

                            <div class="pzy-request-staff-button-box">
                                <a class="pzy-request-staff-button" data-staff="131" href='/job/<%#Eval("dUrl") %>'>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check-circle">
                                        <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path><polyline points="22 4 12 14.01 9 11.01"></polyline></svg>
                                    ثبت نوبت                           
                                </a>
                            </div>
                        </article>

                    </ItemTemplate>
                    <EmptyDataTemplate>
                        <p>هیچ موردی یافت نشد</p>
                    </EmptyDataTemplate>
                </asp:ListView>


                <asp:SqlDataSource ID="SqlSpecialDoctors" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>"
                    SelectCommand="selectSpecialDoctors" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:QueryStringParameter DefaultValue="0" Name="city" QueryStringField="city" Type="Int32" />
                        <asp:QueryStringParameter DefaultValue="0" Name="branch" QueryStringField="branch" Type="Int32" />
                        <asp:CookieParameter DefaultValue=" " Name="name" CookieName="name" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>


            </div>


            <div class="pzy-consultation-modal pzy-modal-wrapper pzy-hide">
                <div class="pzy-modal-content">
                    <div class="pzy-modal pzy-staffs-schedule-categories-modal">
                        <div class="pzy-modal-header">
                            <p class="pzy-modal-title">
                                درخواست مشاوره
                            </p>
                            <button class="pzy-modal-close-button">
                                <svg class="pzy-input-icon"
                                    xmlns="http://www.w3.org/2000/svg" width="24"
                                    height="24" viewBox="0 0 24 24" fill="none">
                                    <path
                                        d="M9.16986 15.5801C8.97986 15.5801 8.78986 15.5101 8.63986 15.3601C8.34986 15.0701 8.34986 14.5901 8.63986 14.3001L14.2999 8.64011C14.5899 8.35011 15.0699 8.35011 15.3599 8.64011C15.6499 8.93011 15.6499 9.41011 15.3599 9.70011L9.69986 15.3601C9.55986 15.5101 9.35986 15.5801 9.16986 15.5801Z"
                                        fill="#A6AFB8" />
                                    <path
                                        d="M14.8299 15.5801C14.6399 15.5801 14.4499 15.5101 14.2999 15.3601L8.63986 9.70011C8.34986 9.41011 8.34986 8.93011 8.63986 8.64011C8.92986 8.35011 9.40986 8.35011 9.69986 8.64011L15.3599 14.3001C15.6499 14.5901 15.6499 15.0701 15.3599 15.3601C15.2099 15.5101 15.0199 15.5801 14.8299 15.5801Z"
                                        fill="#A6AFB8" />
                                    <path
                                        d="M15 22.75H9C3.57 22.75 1.25 20.43 1.25 15V9C1.25 3.57 3.57 1.25 9 1.25H15C20.43 1.25 22.75 3.57 22.75 9V15C22.75 20.43 20.43 22.75 15 22.75ZM9 2.75C4.39 2.75 2.75 4.39 2.75 9V15C2.75 19.61 4.39 21.25 9 21.25H15C19.61 21.25 21.25 19.61 21.25 15V9C21.25 4.39 19.61 2.75 15 2.75H9Z"
                                        fill="#A6AFB8" />
                                </svg>
                            </button>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </section>



    <script data-optimized="1" type="text/javascript" src="assets/js/slider1.js" id="elementor-webpack-runtime-js"></script>
    <script data-optimized="1" type="text/javascript" src="assets/js/slider2.js" id="elementor-frontend-modules-js"></script>
    <script data-optimized="1" type="text/javascript" id="elementor-frontend-js-before">
        var elementorFrontendConfig = {
            "environmentMode": { "edit": !1, "wpPreview": !1, "isScriptDebug": !1 },
            "i18n": {
                "shareOnFacebook": "\u0627\u0634\u062a\u0631\u0627\u06a9 \u06af\u0630\u0627\u0631\u06cc \u062f\u0631 Facebook",
                "shareOnTwitter": "\u0627\u0634\u062a\u0631\u0627\u06a9 \u06af\u0630\u0627\u0631\u06cc \u062f\u0631 Twitter",
                "pinIt": "\u067e\u06cc\u0646 \u06a9\u0646\u06cc\u062f", "download": "\u062f\u0627\u0646\u0644\u0648\u062f",
                "downloadImage": "\u062f\u0627\u0646\u0644\u0648\u062f \u062a\u0635\u0648\u06cc\u0631", "fullscreen": "\u062a\u0645\u0627\u0645\u200c\u0635\u0641\u062d\u0647",
                "zoom": "\u0628\u0632\u0631\u06af\u0646\u0645\u0627\u06cc\u06cc", "share": "\u0627\u0634\u062a\u0631\u0627\u06a9 \u06af\u0630\u0627\u0631\u06cc",
                "playVideo": "\u067e\u062e\u0634 \u0648\u06cc\u062f\u06cc\u0648",
                "previous": "\u0642\u0628\u0644\u06cc",
                "next": "\u0628\u0639\u062f\u06cc", "close": "\u0628\u0633\u062a\u0646",
                "a11yCarouselPrevSlideMessage": "\u0627\u0633\u0644\u0627\u06cc\u062f \u0642\u0628\u0644\u06cc",
                "a11yCarouselNextSlideMessage": "\u0627\u0633\u0644\u0627\u06cc\u062f \u0628\u0639\u062f\u06cc",
                "a11yCarouselFirstSlideMessage": "\u0627\u06cc\u0646 \u0627\u0648\u0644\u06cc\u0646 \u0627\u0633\u0644\u0627\u06cc\u062f \u0627\u0633\u062a",
                "a11yCarouselLastSlideMessage": "\u0627\u06cc\u0646 \u0622\u062e\u0631\u06cc\u0646 \u0627\u0633\u0644\u0627\u06cc\u062f \u0627\u0633\u062a",
                "a11yCarouselPaginationBulletMessage": "\u0631\u0641\u062a\u0646 \u0628\u0647 \u0627\u0633\u0644\u0627\u06cc\u062f"
            }, "is_rtl": !0, "breakpoints": { "xs": 0, "sm": 480, "md": 768, "lg": 1025, "xl": 1440, "xxl": 1600 },
            "responsive": {
                "breakpoints": {
                    "mobile": { "label": "\u062d\u0627\u0644\u062a \u0639\u0645\u0648\u062f\u06cc \u0645\u0648\u0628\u0627\u06cc\u0644", "value": 767, "default_value": 767, "direction": "max", "is_enabled": !0 }, "mobile_extra": { "label": "\u062d\u0627\u0644\u062a \u0627\u0641\u0642\u06cc \u0645\u0648\u0628\u0627\u06cc\u0644", "value": 880, "default_value": 880, "direction": "max", "is_enabled": !0 },
                    "tablet": { "label": "\u062d\u0627\u0644\u062a \u0639\u0645\u0648\u062f\u06cc \u062a\u0628\u0644\u062a", "value": 1024, "default_value": 1024, "direction": "max", "is_enabled": !0 },
                    "tablet_extra": { "label": "\u062d\u0627\u0644\u062a \u0627\u0641\u0642\u06cc \u062a\u0628\u0644\u062a", "value": 1200, "default_value": 1200, "direction": "max", "is_enabled": !1 },
                    "laptop": { "label": "\u0644\u067e \u062a\u0627\u067e", "value": 1366, "default_value": 1366, "direction": "max", "is_enabled": !1 },
                    "widescreen": { "label": "\u0635\u0641\u062d\u0647 \u0639\u0631\u06cc\u0636 (Widescreen)", "value": 2400, "default_value": 2400, "direction": "min", "is_enabled": !1 }
                }, "hasCustomBreakpoints": !0
            }, "version": "3.27.3", "is_static": !1, "experimentalFeatures": {
                "e_font_icon_svg": !0, "additional_custom_breakpoints": !0, "container": !0, "e_swiper_latest": !0,
                "e_onboarding": !0, "theme_builder_v2": !0, "home_screen": !0, "nested-elements": !0, "editor_v2": !0, "link-in-bio": !0, "floating-buttons": !0, "mega-menu": !0
            },
            "urls": {
                "assets": "https:\/\/pezeshk-yar.ir\/wp-content\/plugins\/elementor\/assets\/", "ajaxurl": "https:\/\/pezeshk-yar.ir\/wp-admin\/admin-ajax.php",
                "uploadUrl": "https:\/\/pezeshk-yar.ir\/wp-content\/uploads"
            }, "nonces": { "floatingButtonsClickTracking": "708ecca0ee" },
            "swiperClass": "swiper", "settings": { "page": [], "editorPreferences": [] }, "kit": {
                "woocommerce_notices_elements": ["wc_info"], "active_breakpoints": ["viewport_mobile", "viewport_mobile_extra", "viewport_tablet"],
                "global_image_lightbox": "yes", "lightbox_enable_counter": "yes", "lightbox_enable_fullscreen": "yes",
                "lightbox_enable_zoom": "yes", "lightbox_enable_share": "yes", "lightbox_title_src": "title", "lightbox_description_src": "description"
            },
            "post": { "id": 2566, "title": "%D9%BE%D8%B2%D8%B4%DA%A9%20%DB%8C%D8%A7%D8%B1", "excerpt": "", "featuredImage": !1 }
        }</script>
    <script data-optimized="1" type="text/javascript" src="assets/js/slider3.js" id="elementor-frontend-js"></script>

</asp:Content>
