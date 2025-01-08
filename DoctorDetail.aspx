<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DoctorDetail.aspx.cs" Inherits="pezeshkaneSalamat_wf.DoctorDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <main>


        <div data-elementor-type="single-post" data-elementor-id="1215" class="elementor elementor-1215 pzy-loop-item post-131 pzy_staff type-pzy_staff status-publish has-post-thumbnail hentry pzy_service-31 pzy_service-25 pzy_service-24 pzy_service-22 pzy_service-28" data-elementor-post-type="elementor_library">
            <div class="elementor-element elementor-element-86ee549 e-flex e-con-boxed e-con e-parent" data-id="86ee549" data-element_type="container">
                <div class="e-con-inner">
                    <div class="elementor-element elementor-element-9c7195c elementor-widget elementor-widget-pzy_breadcrumb" data-id="9c7195c" data-element_type="widget" data-widget_type="pzy_breadcrumb.default">
                        <div class="elementor-widget-container">
                            <asp:FormView ID="FormView2" runat="server" DataSourceID="SqlDoctor" CssClass="w-100">
                                <ItemTemplate>
                                    <ul id="breadcrumbs" class="pzy-breadcrumb-list">
                                        <li class="pzy-breadcrumb-list-item"><a href="/">صفحه اصلی</a></li>
                                        <li class='pzy-breadcrumb-separator'><i data-feather="chevron-left"></i></li>
                                        <li class="pzy-breadcrumb-list-item"><span class="pzy-breadcrumb-current-item"><%#Eval("dName") %></span></li>
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

                    <!-- ############## Gallery ############### -->
                    <div class="elementor-element elementor-element-daa6e28 elementor-widget elementor-widget-pzy_staff_gallery" data-id="daa6e28" data-element_type="widget">
                        <div class="elementor-widget-container">
                            <div class='pzy-gallery pzy-staff-gallery pzy-d-flex pzy-flex-column-reverse-nowrap'>
                                <div class='pzy-thumbnail-gallery'>
                                    <div class='swiper custom-init'>
                                        <div class='swiper-wrapper'>

                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlImages">
                                                <ItemTemplate>
                                                    <div class="swiper-slide dr-img-list">
                                                        <div class="pzy-slide-content">

                                                            <%# Eval("dType").ToString() == "1" ? "<img src='https://faraapezeshk.ir/" + Eval("pic") + "' alt=''  loading='lazy' />" : "" %>
                                                            <%# Eval("dType").ToString() == "2" ? "<video  style='' ><source src='https://faraapezeshk.ir/" + Eval("pic") + "' type='video/mp4' loading='lazy'>مرورگر شما از این فایل پشتیبانی نمی کند</video>" : "" %>

                                                            <%--<img src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/Bg-1-150x150.png" />--%>
                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>



                                        </div>
                                        <div class="swiper-button-prev"></div>
                                        <div class="swiper-button-next"></div>
                                        <div class="swiper-pagination"></div>
                                    </div>
                                </div>

                                <div class='pzy-main-gallery'>
                                    <div class='swiper custom-init'
                                        data-settings='{&quot;rtl&quot;:true,&quot;autoHeight&quot;:false,&quot;navigation&quot;:{&quot;nextEl&quot;:&quot;.swiper-button-next&quot;,&quot;prevEl&quot;:&quot;.swiper-button-prev&quot;,&quot;enabled&quot;:false},&quot;slidesPerView&quot;:1,&quot;spaceBetween&quot;:30,&quot;loop&quot;:true,&quot;breakpoints&quot;:{&quot;768&quot;:{&quot;navigation&quot;:{&quot;nextEl&quot;:&quot;.swiper-button-next&quot;,&quot;prevEl&quot;:&quot;.swiper-button-prev&quot;,&quot;enabled&quot;:true}}}}'>
                                        <div class='swiper-wrapper'>
                                            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlImages">
                                                <ItemTemplate>
                                                    <div class="swiper-slide pzy-auto-height">
                                                        <div class="pzy-slide-content pzy-full-height">

                                                            <%# Eval("dType").ToString() == "1" ? "<img src='https://faraapezeshk.ir/" + Eval("pic") + "' alt=''  loading='lazy' />" : "" %>
                                                            <%# Eval("dType").ToString() == "2" ? "<video  style='' ><source src='https://faraapezeshk.ir/" + Eval("pic") + "' type='video/mp4' loading='lazy'>مرورگر شما از این فایل پشتیبانی نمی کند</video>" : "" %>

                                                            <%--<img src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/Bg-1.png" />--%>
                                                        </div>
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>



                                        <div class="swiper-button-next">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="32" height="92" viewBox="0 0 32 92"
                                                fill="none">
                                                <path d="M32 92L32 0L32 0.0714264L32 0.583168C32 10.635 26.0265 19.7254 16.8 23.7143L12.9824 25.4672C5.07084 29.1001 -1.41094e-06 37.0085 -1.79148e-06 45.7143C-2.17108e-06 54.3985 5.12298 62.2653 13.0654 65.7772L16.8 67.4286C26.0522 71.6025 32 80.8107 32 90.9609L32 92Z"
                                                    fill="white" />
                                            </svg>
                                        </div>
                                        <div class="swiper-button-prev">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="32" height="92" viewBox="0 0 32 92"
                                                fill="none">
                                                <path d="M0 92L-4.02145e-06 0L-4.01833e-06 0.0714264L-3.99596e-06 0.583168C-3.55658e-06 10.635 5.97355 19.7254 15.2 23.7143L19.0176 25.4672C26.9292 29.1001 32 37.0085 32 45.7143C32 54.3985 26.877 62.2653 18.9346 65.7772L15.2 67.4286C5.94779 71.6025 -4.89099e-07 80.8107 -4.54226e-08 90.9609L0 92Z"
                                                    fill="white" />
                                            </svg>
                                        </div>
                                        <div class="swiper-pagination"></div>



                                        <asp:SqlDataSource ID="SqlImages" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>"
                                            SelectCommand="SELECT [id], ISNULL([dPicture],'') pic, [dDoctorFk], [dType] FROM [TblDoctorImage] WHERE ([dDoctorFk] = @dDoctorFk)
                                                UNION  
                                                select id, dImg as pic, id as dDoctorFk, 1 as dType from TblDoctors WHERE ([id] = @dDoctorFk  AND dImg IS NOT NULL)
                                                ">
                                            <SelectParameters>
                                                <asp:QueryStringParameter Name="dDoctorFk" QueryStringField="did" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>



                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>



            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDoctor" CssClass="w-100">
                <ItemTemplate>
                    <div class="elementor-element elementor-element-c810fdf e-flex e-con-boxed e-con e-parent" data-id="c810fdf" data-element_type="container">
                        <div class="e-con-inner">
                            <div class="elementor-element elementor-element-92a6065 e-con-full e-flex e-con e-child" data-id="92a6065" data-element_type="container">
                                <div class="elementor-element elementor-element-a97fdcf elementor-widget elementor-widget-pzy_staff_statistics" data-id="a97fdcf" data-element_type="widget" data-widget_type="pzy_staff_statistics.default">
                                    <div class="elementor-widget-container">
                                        <div class="py-staff-template-information pzy-d-grid">
                                            <div class="py-staff-template-information-card pzy-d-flex pzy-justify-content-between pzy-align-items-center pzy-position-relative">
                                                <div class="pzy-staff-template-information-card-content pzy-d-flex pzy-flex-column-wrap">
                                                    <div class="pzy-staff-template-information-card-title">تلفن </div>
                                                    <div class="pzy-staff-template-information-card-description">
                                                        <%#Eval("dMobile") %>
                                                    </div>
                                                </div>
                                                <div class="pzy-staff-template-information-card-icon">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                        <g id="user-check">
                                                            <path id="Icon" d="M16 21V19C16 17.9391 15.5786 16.9217 14.8284 16.1716C14.0783 15.4214 13.0609 15 12 15H5C3.93913 15 2.92172 15.4214 2.17157 16.1716C1.42143 16.9217 1 17.9391 1 19V21M17 11L19 13L23 9M12.5 7C12.5 9.20914 10.7091 11 8.5 11C6.29086 11 4.5 9.20914 4.5 7C4.5 4.79086 6.29086 3 8.5 3C10.7091 3 12.5 4.79086 12.5 7Z" stroke="#0052A8" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                        </g></svg>
                                                </div>
                                                <div class="pzy-staff-template-information-card-shadow pzy-position-absolute"></div>
                                            </div>
                                            <div class="py-staff-template-information-card pzy-d-flex pzy-justify-content-between pzy-align-items-center pzy-position-relative">
                                                <div class="pzy-staff-template-information-card-content pzy-d-flex pzy-flex-column-wrap">
                                                    <div class="pzy-staff-template-information-card-title">رزرو آنلاین</div>
                                                    <div class="pzy-staff-template-information-card-description">
                                                        دارد
                                                    </div>
                                                </div>
                                                <div class="pzy-staff-template-information-card-icon">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                        <g id="headphones">
                                                            <path id="Icon" d="M3 18V12C3 9.61305 3.94821 7.32387 5.63604 5.63604C7.32387 3.94821 9.61305 3 12 3C14.3869 3 16.6761 3.94821 18.364 5.63604C20.0518 7.32387 21 9.61305 21 12V18M21 19C21 19.5304 20.7893 20.0391 20.4142 20.4142C20.0391 20.7893 19.5304 21 19 21H18C17.4696 21 16.9609 20.7893 16.5858 20.4142C16.2107 20.0391 16 19.5304 16 19V16C16 15.4696 16.2107 14.9609 16.5858 14.5858C16.9609 14.2107 17.4696 14 18 14H21V19ZM3 19C3 19.5304 3.21071 20.0391 3.58579 20.4142C3.96086 20.7893 4.46957 21 5 21H6C6.53043 21 7.03914 20.7893 7.41421 20.4142C7.78929 20.0391 8 19.5304 8 19V16C8 15.4696 7.78929 14.9609 7.41421 14.5858C7.03914 14.2107 6.53043 14 6 14H3V19Z" stroke="#0052A8" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                        </g></svg>
                                                </div>
                                                <div class="pzy-staff-template-information-card-shadow pzy-position-absolute"></div>
                                            </div>
                                            <div class="py-staff-template-information-card pzy-d-flex pzy-justify-content-between pzy-align-items-center pzy-position-relative">
                                                <div class="pzy-staff-template-information-card-content pzy-d-flex pzy-flex-column-wrap">
                                                    <div class="pzy-staff-template-information-card-title">ساعت کاری </div>
                                                    <div class="pzy-staff-template-information-card-description">
                                                        <%#Eval("dWorkTime") %>
                                                    </div>
                                                </div>
                                                <div class="pzy-staff-template-information-card-icon">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                        <g id="users">
                                                            <path id="Icon" d="M17 21V19C17 17.9391 16.5786 16.9217 15.8284 16.1716C15.0783 15.4214 14.0609 15 13 15H5C3.93913 15 2.92172 15.4214 2.17157 16.1716C1.42143 16.9217 1 17.9391 1 19V21M23 21V19C22.9993 18.1137 22.7044 17.2528 22.1614 16.5523C21.6184 15.8519 20.8581 15.3516 20 15.13M16 3.13C16.8604 3.3503 17.623 3.8507 18.1676 4.55231C18.7122 5.25392 19.0078 6.11683 19.0078 7.005C19.0078 7.89317 18.7122 8.75608 18.1676 9.45769C17.623 10.1593 16.8604 10.6597 16 10.88M13 7C13 9.20914 11.2091 11 9 11C6.79086 11 5 9.20914 5 7C5 4.79086 6.79086 3 9 3C11.2091 3 13 4.79086 13 7Z" stroke="#0052A8" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                        </g></svg>
                                                </div>
                                                <div class="pzy-staff-template-information-card-shadow pzy-position-absolute"></div>
                                            </div>
                                            <div class="py-staff-template-information-card pzy-d-flex pzy-justify-content-between pzy-align-items-center pzy-position-relative">
                                                <div class="pzy-staff-template-information-card-content pzy-d-flex pzy-flex-column-wrap">
                                                    <div class="pzy-staff-template-information-card-title">شهر</div>
                                                    <div class="pzy-staff-template-information-card-description">
                                                        <%#Eval("cName") %>
                                                    </div>
                                                </div>
                                                <div class="pzy-staff-template-information-card-icon">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                        <g id="check-circle">
                                                            <path id="Icon" d="M22 11.08V12C21.9988 14.1564 21.3005 16.2547 20.0093 17.9818C18.7182 19.709 16.9033 20.9725 14.8354 21.5839C12.7674 22.1953 10.5573 22.1219 8.53447 21.3746C6.51168 20.6273 4.78465 19.2461 3.61096 17.4371C2.43727 15.628 1.87979 13.4881 2.02168 11.3363C2.16356 9.18455 2.99721 7.13631 4.39828 5.49706C5.79935 3.85781 7.69279 2.71537 9.79619 2.24013C11.8996 1.7649 14.1003 1.98232 16.07 2.85999M22 3.99999L12 14.01L9.00001 11.01" stroke="#0052A8" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                        </g></svg>
                                                </div>
                                                <div class="pzy-staff-template-information-card-shadow pzy-position-absolute"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="elementor-element elementor-element-d900330 e-con-full pzy-staffs-consultation e-flex e-con e-child" data-id="d900330" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                                <div class="elementor-element elementor-element-dd6cd68 e-con-full e-flex e-con e-child" data-id="dd6cd68" data-element_type="container">
                                    <div class="elementor-element elementor-element-303f19f elementor-widget elementor-widget-theme-post-title elementor-page-title elementor-widget-heading" data-id="303f19f" data-element_type="widget" data-widget_type="theme-post-title.default">
                                        <div class="elementor-widget-container">
                                            <h1 class="elementor-heading-title elementor-size-default">
                                                <a href="#"><%#Eval("dName") %></a></h1>
                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-dd44b9e elementor-widget elementor-widget-pzy_staff_state" data-id="dd44b9e" data-element_type="widget" data-widget_type="pzy_staff_state.default">
                                        <div class="elementor-widget-container">
                                            <div class='pzy-staff-state'>
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"
                                                    fill="none">
                                                    <g clip-path="url(#clip0_1422_4282)">
                                                        <path d="M24 12C23.9777 11.1745 23.726 10.3715 23.2732 9.68087C22.8204 8.99027 22.1843 8.43934 21.4361 8.08976C21.7197 7.3141 21.7812 6.47468 21.6137 5.66596C21.4461 4.85725 21.0562 4.11135 20.4878 3.5122C19.8887 2.94377 19.1427 2.55386 18.334 2.38632C17.5253 2.21879 16.6859 2.28029 15.9102 2.5639C15.5618 1.8149 15.0111 1.17806 14.3203 0.72508C13.6294 0.272105 12.8258 0.0209858 12 0C11.1755 0.0204479 10.3733 0.271488 9.68422 0.724655C8.99516 1.17782 8.44685 1.81499 8.10146 2.5639C7.32403 2.2793 6.48261 2.21727 5.67185 2.3848C4.86109 2.55233 4.11316 2.94277 3.5122 3.5122C2.95564 4.11866 2.57876 4.868 2.4237 5.6764C2.26863 6.4848 2.3415 7.3204 2.63415 8.08976C1.87365 8.43041 1.22379 8.97729 0.75822 9.6684C0.292649 10.3595 0.0299848 11.1672 0 12C0.0299848 12.8328 0.292649 13.6405 0.75822 14.3316C1.22379 15.0227 1.87365 15.5696 2.63415 15.9102C2.34904 16.6849 2.28565 17.5236 2.4511 18.3323C2.61655 19.1409 3.0043 19.8874 3.57073 20.4878C4.17131 21.0539 4.91718 21.4422 5.72533 21.6097C6.53349 21.7771 7.37225 21.717 8.14829 21.4361C8.49339 22.1756 9.03526 22.806 9.7146 23.2582C10.3939 23.7104 11.1846 23.967 12 24C12.8258 23.979 13.6294 23.7279 14.3203 23.2749C15.0111 22.8219 15.5618 22.1851 15.9102 21.4361C16.6825 21.74 17.5267 21.8117 18.3392 21.6426C19.1516 21.4734 19.897 21.0707 20.4839 20.4839C21.0707 19.897 21.4734 19.1516 21.6426 18.3392C21.8117 17.5267 21.74 16.6825 21.4361 15.9102C22.1843 15.5607 22.8204 15.0097 23.2732 14.3191C23.726 13.6285 23.9777 12.8255 24 12ZM10.2907 16.9171L5.9122 12.5385L7.56293 10.8293L10.2088 13.4751L15.8283 7.35219L17.5493 8.94439L10.2907 16.9171Z"
                                                            fill="#1D9BF0" />
                                                    </g>
                                                    <defs>
                                                        <clipPath id="clip0_1422_4282">
                                                            <rect width="24" height="24" fill="white" />
                                                        </clipPath>
                                                    </defs>
                                                </svg>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="elementor-element elementor-element-28c9770 e-con-full e-flex e-con e-child" data-id="28c9770" data-element_type="container">
                                    <div class="elementor-element elementor-element-24be723 elementor-widget elementor-widget-post-info" data-id="24be723" data-element_type="widget" data-widget_type="post-info.default">
                                        <div class="elementor-widget-container">
                                            <ul class="elementor-inline-items elementor-icon-list-items elementor-post-info">
                                                <li class="elementor-icon-list-item elementor-repeater-item-2685a68 elementor-inline-item">
                                                    <span class="elementor-icon-list-text elementor-post-info__item elementor-post-info__item--type-custom"><%#Eval("dSpecialty") %>
                                                    </span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <%--  <div class="elementor-element elementor-element-6e3bcd6 elementor-widget elementor-widget-pzy_staffs_point" data-id="6e3bcd6" data-element_type="widget" data-widget_type="pzy_staffs_point.default">
                                        <div class="elementor-widget-container">
                                            <div class="pzy-staff-point">
                                                <!-- FeedbackWP Plugin - Results Widget -->
                                                <div class="rmp-results-widget js-rmp-results-widget js-rmp-results-widget--131 " data-post-id="131">
                                                    <div class="rmp-results-widget__visual-rating"><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i></div>
                                                    <div class="rmp-results-widget__avg-rating"><span class="js-rmp-avg-rating">3    </span></div>
                                                    <div class="rmp-results-widget__vote-count">(<span class="js-rmp-vote-count">1</span>)  </div>
                                                </div>
                                                <span class="pzy-staff-comments-text pzy-el-staff-point-comments-count">1 نظر</span>
                                            </div>
                                        </div>
                                    </div>--%>
                                </div>
                                <div class="elementor-element elementor-element-2896dac e-con-full e-flex e-con e-child" data-id="2896dac" data-element_type="container">
                                    <div class="elementor-element elementor-element-077ba75 elementor-widget elementor-widget-theme-post-content" data-id="077ba75" data-element_type="widget" data-widget_type="theme-post-content.default">
                                        <div class="elementor-widget-container">
                                            <p>
                                                <%#Eval("dDes") %>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="elementor-element elementor-element-d39250d e-con-full e-flex e-con e-child" data-id="d39250d" data-element_type="container">
                                    <div class="elementor-element elementor-element-3d35925 elementor-widget elementor-widget-pzy_staff_consultation" data-id="3d35925" data-element_type="widget" data-widget_type="pzy_staff_consultation.default">
                                        <div class="elementor-widget-container">

                                            <button class="pzy-staff-consultation-request" data-staff-name="<%#Eval("dName") %>"
                                                data-staff="131">
                                                <i data-feather="message-square"></i>
                                                <span class="pzy-staff-consultation-request-title">درخواست رزرو</span>
                                            </button>

                                            <div class="pzy-consultation-modal pzy-modal-wrapper pzy-hide">
                                                <div class="pzy-modal-content">
                                                    <div class="pzy-modal pzy-staffs-schedule-categories-modal">
                                                        <div class="pzy-modal-header">
                                                            <p class="pzy-modal-title">
                                                                درخواست رزرو
                                                            </p>
                                                            <button class="pzy-modal-close-button">
                                                                <svg class="pzy-input-icon" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                                    <path d="M9.16986 15.5801C8.97986 15.5801 8.78986 15.5101 8.63986 15.3601C8.34986 15.0701 8.34986 14.5901 8.63986 14.3001L14.2999 8.64011C14.5899 8.35011 15.0699 8.35011 15.3599 8.64011C15.6499 8.93011 15.6499 9.41011 15.3599 9.70011L9.69986 15.3601C9.55986 15.5101 9.35986 15.5801 9.16986 15.5801Z" fill="#A6AFB8" />
                                                                    <path d="M14.8299 15.5801C14.6399 15.5801 14.4499 15.5101 14.2999 15.3601L8.63986 9.70011C8.34986 9.41011 8.34986 8.93011 8.63986 8.64011C8.92986 8.35011 9.40986 8.35011 9.69986 8.64011L15.3599 14.3001C15.6499 14.5901 15.6499 15.0701 15.3599 15.3601C15.2099 15.5101 15.0199 15.5801 14.8299 15.5801Z" fill="#A6AFB8" />
                                                                    <path d="M15 22.75H9C3.57 22.75 1.25 20.43 1.25 15V9C1.25 3.57 3.57 1.25 9 1.25H15C20.43 1.25 22.75 3.57 22.75 9V15C22.75 20.43 20.43 22.75 15 22.75ZM9 2.75C4.39 2.75 2.75 4.39 2.75 9V15C2.75 19.61 4.39 21.25 9 21.25H15C19.61 21.25 21.25 19.61 21.25 15V9C21.25 4.39 19.61 2.75 15 2.75H9Z" fill="#A6AFB8" />
                                                                </svg>
                                                            </button>
                                                        </div>
                                                        <div class="pzy-modal-body">
                                                            <form class="pzy-consultation-form">
                                                                <div class="pzy-modal-reserve-form pzy-d-flex pzy-flex-column-nowrap">
                                                                    <label class="pzy-input-label">
                                                                        <p class="pzy-input-title">
                                                                            نام و نام خانوادگی                                <span class="pzy-required">*</span>
                                                                        </p>
                                                                        <div class="pzy-input-append-icon">
                                                                            <input type="text" name="full_name">
                                                                            <i class="pzy-input-icon" data-feather="user"></i>
                                                                        </div>
                                                                    </label>
                                                                    <label class="pzy-input-label">
                                                                        <p class="pzy-input-title">
                                                                            شماره تماس                                <span class="pzy-required">*</span>
                                                                        </p>
                                                                        <div class="pzy-input-append-icon">
                                                                            <input type="text" name="contact_phone">
                                                                            <i class="pzy-input-icon" data-feather="smartphone"></i>
                                                                        </div>
                                                                    </label>
                                                                    <label class="pzy-input-label">
                                                                        <p class="pzy-input-title">
                                                                            نوع بیمه درمانی                                <span class="pzy-required">*</span>
                                                                        </p>
                                                                        <div class="pzy-input-append-icon">
                                                                            <input type="text" name="insurance_type">
                                                                            <i class="pzy-input-icon" data-feather="clipboard"></i>
                                                                        </div>
                                                                    </label>

                                                                    <input type="hidden" class="pzy-form-staff-id" name="staff">


                                                                    <div class="pzy-input-append-icon pzy-position-relative">
                                                                        <input class="pzy-form-service-human-date" type="text" placeholder="انتخاب تاریخ" disabled>
                                                                        <input class="pzy-form-service-date" type="hidden" name="service_date">
                                                                        <i class="pzy-input-icon pzy-consultation-show-date" data-feather="plus-circle"></i>
                                                                        <div class="pzy-select-date-box pzy-consultation-select-date-box pzy-hide"
                                                                            data-alt="#pzy-consultation-datepicker-alt3d35925">
                                                                            <span class="pzy-select-date-box-title">انتخاب تاریخ</span>
                                                                            <input type="text" class="pzy-datepicker-display" id="pzy-consultation-datepicker-alt3d35925" readonly />
                                                                        </div>

                                                                    </div>
                                                                    <div class="pzy-input-append-icon">
                                                                        <input class="pzy-form-staff-name" type="text" value="نام متخصص" disabled>
                                                                        <i class="pzy-input-icon" data-feather="user"></i>
                                                                    </div>

                                                                    <p class="pzy-radio-group-label">انتخاب زمان مراجعه به دکتر :</p>

                                                                    <div class="pzy-time-slots pzy-radio-group"></div>

                                                                    <button class="pzy-modal-reserve-submit pzy-button pzy-button-primary pzy-mt-55">
                                                                        <i data-feather="message-square"></i>
                                                                        ثبت نوبت شما
                                                                    </button>
                                                                </div>
                                                            </form>

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

                </ItemTemplate>
            </asp:FormView>



            <div class="elementor-element elementor-element-7f6c8e5 e-flex e-con-boxed e-con e-parent" data-id="7f6c8e5" data-element_type="container">
                <div class="e-con-inner">
                    <div class="elementor-element elementor-element-ac1f44a e-con-full e-flex e-con e-child" data-id="ac1f44a" data-element_type="container">
                        <div class="elementor-element elementor-element-b426d4c elementor-position-right elementor-vertical-align-middle elementor-mobile-position-right elementor-view-default elementor-widget elementor-widget-icon-box" data-id="b426d4c" data-element_type="widget" data-widget_type="icon-box.default">
                            <div class="elementor-widget-container">
                                <div class="elementor-icon-box-wrapper">

                                    <div class="elementor-icon-box-icon">
                                        <span class="elementor-icon elementor-animation-">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                <g id="user">
                                                    <path id="Icon" d="M16.6668 17.5V15.8333C16.6668 14.9493 16.3156 14.1014 15.6905 13.4763C15.0654 12.8512 14.2176 12.5 13.3335 12.5H6.66683C5.78277 12.5 4.93493 12.8512 4.30981 13.4763C3.68469 14.1014 3.3335 14.9493 3.3335 15.8333V17.5M13.3335 5.83333C13.3335 7.67428 11.8411 9.16667 10.0002 9.16667C8.15921 9.16667 6.66683 7.67428 6.66683 5.83333C6.66683 3.99238 8.15921 2.5 10.0002 2.5C11.8411 2.5 13.3335 3.99238 13.3335 5.83333Z" stroke="#0052A8" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                                                </g></svg>
                                        </span>
                                    </div>

                                    <div class="elementor-icon-box-content">

                                        <h2 class="elementor-icon-box-title">
                                            <span>متخصصین مشابه
                                            </span>
                                        </h2>


                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-1540d61 elementor-hidden-mobile elementor-widget elementor-widget-pzy_divider" data-id="1540d61" data-element_type="widget" data-widget_type="pzy_divider.default">
                            <div class="elementor-widget-container">
                                <div class="pzy-divider-widget-layout pzy-d-flex pzy-justify-content-center pzy-align-items-center">
                                    <div class="pzy-divider-widget-before"></div>
                                    <div class="pzy-divider-widget pzy-flex-1"></div>
                                    <div class="pzy-divider-widget-after"></div>

                                </div>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-457f6dc elementor-position-left elementor-vertical-align-middle elementor-mobile-position-left elementor-view-default elementor-widget elementor-widget-icon-box" data-id="457f6dc" data-element_type="widget" data-widget_type="icon-box.default">
                            <div class="elementor-widget-container">
                                <div class="elementor-icon-box-wrapper">

                                    <div class="elementor-icon-box-icon">
                                        <a href="https://pezeshk-yar.ir/%d8%ae%d8%af%d9%85%d8%a7%d8%aa/" class="elementor-icon elementor-animation-" tabindex="-1">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                <g id="chevron-left">
                                                    <path id="Icon" d="M12.5 15L7.5 10L12.5 5" stroke="#A6AFB8" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                </g></svg>
                                        </a>
                                    </div>

                                    <div class="elementor-icon-box-content">

                                        <span class="elementor-icon-box-title">
                                            <a href="https://pezeshk-yar.ir/%d8%ae%d8%af%d9%85%d8%a7%d8%aa/">مشاهده همه
                                            </a>
                                        </span>


                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="elementor-element elementor-element-e6056f7 sticky-left-container e-flex e-con-boxed e-con e-parent" data-id="e6056f7" data-element_type="container">
                <div class="e-con-inner">
                    <div class="elementor-element elementor-element-e5ab0e3 elementor-widget__width-inherit elementor-widget elementor-widget-pzy_staffs_slider" data-id="e5ab0e3" data-element_type="widget" data-settings="{&quot;slides_per_view&quot;:1.5,&quot;space_between&quot;:24,&quot;customize_slides_per_view&quot;:&quot;yes&quot;,&quot;pagination&quot;:&quot;no&quot;,&quot;loop_slider&quot;:&quot;no&quot;,&quot;hide_next_button&quot;:&quot;no&quot;,&quot;hide_prev_button&quot;:&quot;no&quot;}" data-widget_type="pzy_staffs_slider.default">
                        <div class="elementor-widget-container">
                            <div class="pzy-staffs-consultation">
                                <div class="pzy-staffs-slider">
                                    <div class="slider-wrapper" style="height: 100%">
                                        <div class="swiper" data-settings='{"slidesPerView":1.5,"spaceBetween":24,"loop":false,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev","enabled":false},"pagination":{"el":".swiper-pagination","type":null,"enabled":false},"rtl":true,"breakpoints":{"620":{"slidesPerView":2.2,"spaceBetween":24,"loop":false,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev","enabled":true},"pagination":{"el":".swiper-pagination","type":null,"enabled":false},"rtl":true},"810":{"slidesPerView":3,"spaceBetween":13,"loop":false,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev","enabled":true},"pagination":{"el":".swiper-pagination","type":null,"enabled":false},"rtl":true},"880":{"slidesPerView":4,"spaceBetween":13,"loop":false,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev","enabled":true},"pagination":{"el":".swiper-pagination","type":null,"enabled":false},"rtl":true},"1024":{"slidesPerView":4.5,"spaceBetween":13,"loop":false,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev","enabled":true},"pagination":{"el":".swiper-pagination","type":null,"enabled":false},"rtl":true},"1200":{"slidesPerView":5.3,"spaceBetween":13,"loop":false,"navigation":{"nextEl":".swiper-button-next","prevEl":".swiper-button-prev","enabled":true},"pagination":{"el":".swiper-pagination","type":null,"enabled":false},"rtl":true}}}'>
                                            <div class="swiper-wrapper">
                                                <div class="swiper-slide">
                                                    <article class="pzy-staff-card">

                                                        <div class="pzy-staff-avatar-box pzy-position-relative" style="background: #eed7d7">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%af%da%a9%d8%aa%d8%b1-%d9%85%da%98%da%af%d8%a7%d9%86-%d8%ad%d8%a7%d8%ac%db%8c%d9%be%d9%88%d8%b1/"
                                                                class="pzy-d-block pzy-position-absolute pzy-staff-avatar-link">
                                                                <img class="pzy-staff-card-avatar"
                                                                    src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/Pic.png"
                                                                    alt="دکتر مژگان حاجی‌پور" />
                                                            </a>
                                                        </div>


                                                        <h3 class="pzy-staff-title p-16-bold">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%af%da%a9%d8%aa%d8%b1-%d9%85%da%98%da%af%d8%a7%d9%86-%d8%ad%d8%a7%d8%ac%db%8c%d9%be%d9%88%d8%b1/">دکتر مژگان حاجی‌پور</a>
                                                        </h3>
                                                        <h4 class="pzy-staff-subtitle">کارشناس مراقبت های پوستی</h4>

                                                        <div class="pzy-staff-point">
                                                            <!-- FeedbackWP Plugin - Results Widget -->
                                                            <div class="rmp-results-widget js-rmp-results-widget js-rmp-results-widget--107 " data-post-id="107">
                                                                <div class="rmp-results-widget__visual-rating"><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--half-highlight js-rmp-remove-half-star"></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i></div>
                                                                <div class="rmp-results-widget__avg-rating"><span class="js-rmp-avg-rating">3.3    </span></div>
                                                                <div class="rmp-results-widget__vote-count">(<span class="js-rmp-vote-count">3</span>)  </div>
                                                            </div>
                                                            <span class="pzy-staff-comments-number-text pzy-el-staff-point-comments-count">3 نظر</span>
                                                        </div>

                                                        <button class="pzy-staff-consultation-request"
                                                            data-staff-name="دکتر مژگان حاجی‌پور"
                                                            data-staff="107">
                                                            <i class="pzy-staff-consultation-request-icon" data-feather="message-square"></i>
                                                            <span class="pzy-staff-consultation-request-title">درخواست مشاوره</span>
                                                        </button>
                                                    </article>
                                                </div>
                                                <div class="swiper-slide">
                                                    <article class="pzy-staff-card">

                                                        <div class="pzy-staff-avatar-box pzy-position-relative" style="background: #e1a8a8">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%af%da%a9%d8%aa%d8%b1-%d8%af%d9%84%d8%a7%d8%b1%d8%a7%d9%85-%d9%86%db%8c%da%a9-%d8%a7%d9%86%db%8c%d8%b4/"
                                                                class="pzy-d-block pzy-position-absolute pzy-staff-avatar-link">
                                                                <img class="pzy-staff-card-avatar"
                                                                    src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/fce5068b226e4a0227f2146827a81306.png"
                                                                    alt="دکتر دلارام نیک انیش" />
                                                            </a>
                                                        </div>


                                                        <h3 class="pzy-staff-title p-16-bold">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%af%da%a9%d8%aa%d8%b1-%d8%af%d9%84%d8%a7%d8%b1%d8%a7%d9%85-%d9%86%db%8c%da%a9-%d8%a7%d9%86%db%8c%d8%b4/">دکتر دلارام نیک انیش</a>
                                                        </h3>
                                                        <h4 class="pzy-staff-subtitle">تراپیست , نروتراپیست</h4>

                                                        <div class="pzy-staff-point">
                                                            <!-- FeedbackWP Plugin - Results Widget -->
                                                            <div class="rmp-results-widget js-rmp-results-widget js-rmp-results-widget--112 rmp-results-widget--not-rated" data-post-id="112">
                                                                <div class="rmp-results-widget__visual-rating"><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i></div>
                                                                <div class="rmp-results-widget__avg-rating"><span class="js-rmp-avg-rating">0    </span></div>
                                                                <div class="rmp-results-widget__vote-count">(<span class="js-rmp-vote-count">0</span>)  </div>
                                                            </div>
                                                        </div>

                                                        <button class="pzy-staff-consultation-request"
                                                            data-staff-name="دکتر دلارام نیک انیش"
                                                            data-staff="112">
                                                            <i class="pzy-staff-consultation-request-icon" data-feather="message-square"></i>
                                                            <span class="pzy-staff-consultation-request-title">درخواست مشاوره</span>
                                                        </button>
                                                    </article>
                                                </div>
                                                <div class="swiper-slide">
                                                    <article class="pzy-staff-card">

                                                        <div class="pzy-staff-avatar-box pzy-position-relative" style="background: #a9eaaa">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%af%da%a9%d8%aa%d8%b1-%d9%85%d8%a8%db%8c%d9%86-%d8%a7%d9%85%db%8c%d9%86/"
                                                                class="pzy-d-block pzy-position-absolute pzy-staff-avatar-link">
                                                                <img class="pzy-staff-card-avatar"
                                                                    src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/505bf06b8a869cce52904994307143db.png"
                                                                    alt="دکتر مبین امین" />
                                                            </a>
                                                        </div>


                                                        <h3 class="pzy-staff-title p-16-bold">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%af%da%a9%d8%aa%d8%b1-%d9%85%d8%a8%db%8c%d9%86-%d8%a7%d9%85%db%8c%d9%86/">دکتر مبین امین</a>
                                                        </h3>
                                                        <h4 class="pzy-staff-subtitle">متخصص گوارش</h4>

                                                        <div class="pzy-staff-point">
                                                            <!-- FeedbackWP Plugin - Results Widget -->
                                                            <div class="rmp-results-widget js-rmp-results-widget js-rmp-results-widget--117 " data-post-id="117">
                                                                <div class="rmp-results-widget__visual-rating"><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i></div>
                                                                <div class="rmp-results-widget__avg-rating"><span class="js-rmp-avg-rating">5    </span></div>
                                                                <div class="rmp-results-widget__vote-count">(<span class="js-rmp-vote-count">2</span>)  </div>
                                                            </div>
                                                            <span class="pzy-staff-comments-number-text pzy-el-staff-point-comments-count">2 نظر</span>
                                                        </div>

                                                        <button class="pzy-staff-consultation-request"
                                                            data-staff-name="دکتر مبین امین"
                                                            data-staff="117">
                                                            <i class="pzy-staff-consultation-request-icon" data-feather="message-square"></i>
                                                            <span class="pzy-staff-consultation-request-title">درخواست مشاوره</span>
                                                        </button>
                                                    </article>
                                                </div>
                                                <div class="swiper-slide">
                                                    <article class="pzy-staff-card">

                                                        <div class="pzy-staff-avatar-box pzy-position-relative" style="background: #e2cfcf">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%ae%d8%a7%d9%86%d9%85-%d9%81%d8%b1%db%8c%d9%85%d8%a7-%d9%85%d9%86%d9%88%da%86%d9%87%d8%b1%db%8c/"
                                                                class="pzy-d-block pzy-position-absolute pzy-staff-avatar-link">
                                                                <img class="pzy-staff-card-avatar"
                                                                    src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/Pic-2.png"
                                                                    alt="خانم فریما منوچهری" />
                                                            </a>
                                                        </div>


                                                        <h3 class="pzy-staff-title p-16-bold">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%ae%d8%a7%d9%86%d9%85-%d9%81%d8%b1%db%8c%d9%85%d8%a7-%d9%85%d9%86%d9%88%da%86%d9%87%d8%b1%db%8c/">خانم فریما منوچهری</a>
                                                        </h3>
                                                        <h4 class="pzy-staff-subtitle">کارشناس مراقبت های پوستی</h4>

                                                        <div class="pzy-staff-point">
                                                            <!-- FeedbackWP Plugin - Results Widget -->
                                                            <div class="rmp-results-widget js-rmp-results-widget js-rmp-results-widget--120 rmp-results-widget--not-rated" data-post-id="120">
                                                                <div class="rmp-results-widget__visual-rating"><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i></div>
                                                                <div class="rmp-results-widget__avg-rating"><span class="js-rmp-avg-rating">0    </span></div>
                                                                <div class="rmp-results-widget__vote-count">(<span class="js-rmp-vote-count">0</span>)  </div>
                                                            </div>
                                                        </div>

                                                        <button class="pzy-staff-consultation-request"
                                                            data-staff-name="خانم فریما منوچهری"
                                                            data-staff="120">
                                                            <i class="pzy-staff-consultation-request-icon" data-feather="message-square"></i>
                                                            <span class="pzy-staff-consultation-request-title">درخواست مشاوره</span>
                                                        </button>
                                                    </article>
                                                </div>
                                                <div class="swiper-slide">
                                                    <article class="pzy-staff-card">

                                                        <div class="pzy-staff-avatar-box pzy-position-relative" style="background: #aeeac0">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%ae%d8%a7%d9%86%d9%85-%d9%81%d8%b1%db%8c%d9%85%d8%a7-%d9%85%d9%86%d9%88%da%86%d9%87%d8%b1%db%8c-2/"
                                                                class="pzy-d-block pzy-position-absolute pzy-staff-avatar-link">
                                                                <img class="pzy-staff-card-avatar"
                                                                    src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/Pic-2.png"
                                                                    alt="خانم فریما منوچهری" />
                                                            </a>
                                                        </div>


                                                        <h3 class="pzy-staff-title p-16-bold">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%ae%d8%a7%d9%86%d9%85-%d9%81%d8%b1%db%8c%d9%85%d8%a7-%d9%85%d9%86%d9%88%da%86%d9%87%d8%b1%db%8c-2/">خانم فریما منوچهری</a>
                                                        </h3>
                                                        <h4 class="pzy-staff-subtitle">کارشناس مراقبت های پوستی</h4>

                                                        <div class="pzy-staff-point">
                                                            <!-- FeedbackWP Plugin - Results Widget -->
                                                            <div class="rmp-results-widget js-rmp-results-widget js-rmp-results-widget--123 rmp-results-widget--not-rated" data-post-id="123">
                                                                <div class="rmp-results-widget__visual-rating"><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i></div>
                                                                <div class="rmp-results-widget__avg-rating"><span class="js-rmp-avg-rating">0    </span></div>
                                                                <div class="rmp-results-widget__vote-count">(<span class="js-rmp-vote-count">0</span>)  </div>
                                                            </div>
                                                        </div>

                                                        <button class="pzy-staff-consultation-request"
                                                            data-staff-name="خانم فریما منوچهری"
                                                            data-staff="123">
                                                            <i class="pzy-staff-consultation-request-icon" data-feather="message-square"></i>
                                                            <span class="pzy-staff-consultation-request-title">درخواست مشاوره</span>
                                                        </button>
                                                    </article>
                                                </div>
                                                <div class="swiper-slide">
                                                    <article class="pzy-staff-card">

                                                        <div class="pzy-staff-avatar-box pzy-position-relative" style="background: #b7a8ff">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%af%da%a9%d8%aa%d8%b1-%d9%85%d8%a8%db%8c%d9%86-%d8%a7%d9%85%db%8c%d9%86-2/"
                                                                class="pzy-d-block pzy-position-absolute pzy-staff-avatar-link">
                                                                <img class="pzy-staff-card-avatar"
                                                                    src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/505bf06b8a869cce52904994307143db.png"
                                                                    alt="دکتر مبین امین" />
                                                            </a>
                                                        </div>


                                                        <h3 class="pzy-staff-title p-16-bold">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%af%da%a9%d8%aa%d8%b1-%d9%85%d8%a8%db%8c%d9%86-%d8%a7%d9%85%db%8c%d9%86-2/">دکتر مبین امین</a>
                                                        </h3>
                                                        <h4 class="pzy-staff-subtitle">متخصص گوارش</h4>

                                                        <div class="pzy-staff-point">
                                                            <!-- FeedbackWP Plugin - Results Widget -->
                                                            <div class="rmp-results-widget js-rmp-results-widget js-rmp-results-widget--124 " data-post-id="124">
                                                                <div class="rmp-results-widget__visual-rating"><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i></div>
                                                                <div class="rmp-results-widget__avg-rating"><span class="js-rmp-avg-rating">5    </span></div>
                                                                <div class="rmp-results-widget__vote-count">(<span class="js-rmp-vote-count">1</span>)  </div>
                                                            </div>
                                                            <span class="pzy-staff-comments-number-text pzy-el-staff-point-comments-count">1 نظر</span>
                                                        </div>

                                                        <button class="pzy-staff-consultation-request"
                                                            data-staff-name="دکتر مبین امین"
                                                            data-staff="124">
                                                            <i class="pzy-staff-consultation-request-icon" data-feather="message-square"></i>
                                                            <span class="pzy-staff-consultation-request-title">درخواست مشاوره</span>
                                                        </button>
                                                    </article>
                                                </div>
                                                <div class="swiper-slide">
                                                    <article class="pzy-staff-card">

                                                        <div class="pzy-staff-avatar-box pzy-position-relative" style="background: #8ceec3">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%af%da%a9%d8%aa%d8%b1-%d8%af%d9%84%d8%a7%d8%b1%d8%a7%d9%85-%d9%86%db%8c%da%a9-%d8%a7%d9%86%db%8c%d8%b4-2/"
                                                                class="pzy-d-block pzy-position-absolute pzy-staff-avatar-link">
                                                                <img class="pzy-staff-card-avatar"
                                                                    src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/fce5068b226e4a0227f2146827a81306.png"
                                                                    alt="دکتر دلارام نیک انیش" />
                                                            </a>
                                                        </div>


                                                        <h3 class="pzy-staff-title p-16-bold">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%af%da%a9%d8%aa%d8%b1-%d8%af%d9%84%d8%a7%d8%b1%d8%a7%d9%85-%d9%86%db%8c%da%a9-%d8%a7%d9%86%db%8c%d8%b4-2/">دکتر دلارام نیک انیش</a>
                                                        </h3>
                                                        <h4 class="pzy-staff-subtitle">تراپیست , نروتراپیست</h4>

                                                        <div class="pzy-staff-point">
                                                            <!-- FeedbackWP Plugin - Results Widget -->
                                                            <div class="rmp-results-widget js-rmp-results-widget js-rmp-results-widget--125 " data-post-id="125">
                                                                <div class="rmp-results-widget__visual-rating"><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--half-highlight js-rmp-replace-half-star"></i></div>
                                                                <div class="rmp-results-widget__avg-rating"><span class="js-rmp-avg-rating">4.5    </span></div>
                                                                <div class="rmp-results-widget__vote-count">(<span class="js-rmp-vote-count">2</span>)  </div>
                                                            </div>
                                                            <span class="pzy-staff-comments-number-text pzy-el-staff-point-comments-count">2 نظر</span>
                                                        </div>

                                                        <button class="pzy-staff-consultation-request"
                                                            data-staff-name="دکتر دلارام نیک انیش"
                                                            data-staff="125">
                                                            <i class="pzy-staff-consultation-request-icon" data-feather="message-square"></i>
                                                            <span class="pzy-staff-consultation-request-title">درخواست مشاوره</span>
                                                        </button>
                                                    </article>
                                                </div>
                                                <div class="swiper-slide">
                                                    <article class="pzy-staff-card">

                                                        <div class="pzy-staff-avatar-box pzy-position-relative" style="background: #f0a8a8">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%af%da%a9%d8%aa%d8%b1-%d9%85%da%98%da%af%d8%a7%d9%86-%d8%ad%d8%a7%d8%ac%db%8c%d9%be%d9%88%d8%b1-2/"
                                                                class="pzy-d-block pzy-position-absolute pzy-staff-avatar-link">
                                                                <img class="pzy-staff-card-avatar"
                                                                    src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/Pic.png"
                                                                    alt="دکتر مژگان حاجی‌پور" />
                                                            </a>
                                                        </div>


                                                        <h3 class="pzy-staff-title p-16-bold">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%af%da%a9%d8%aa%d8%b1-%d9%85%da%98%da%af%d8%a7%d9%86-%d8%ad%d8%a7%d8%ac%db%8c%d9%be%d9%88%d8%b1-2/">دکتر مژگان حاجی‌پور</a>
                                                        </h3>
                                                        <h4 class="pzy-staff-subtitle">متخصص دندانپزشکی</h4>

                                                        <div class="pzy-staff-point">
                                                            <!-- FeedbackWP Plugin - Results Widget -->
                                                            <div class="rmp-results-widget js-rmp-results-widget js-rmp-results-widget--126 rmp-results-widget--not-rated" data-post-id="126">
                                                                <div class="rmp-results-widget__visual-rating"><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i></div>
                                                                <div class="rmp-results-widget__avg-rating"><span class="js-rmp-avg-rating">0    </span></div>
                                                                <div class="rmp-results-widget__vote-count">(<span class="js-rmp-vote-count">0</span>)  </div>
                                                            </div>
                                                        </div>

                                                        <button class="pzy-staff-consultation-request"
                                                            data-staff-name="دکتر مژگان حاجی‌پور"
                                                            data-staff="126">
                                                            <i class="pzy-staff-consultation-request-icon" data-feather="message-square"></i>
                                                            <span class="pzy-staff-consultation-request-title">درخواست مشاوره</span>
                                                        </button>
                                                    </article>
                                                </div>
                                                <div class="swiper-slide">
                                                    <article class="pzy-staff-card">

                                                        <div class="pzy-staff-avatar-box pzy-position-relative" style="background: #b5dee8">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%af%da%a9%d8%aa%d8%b1-%d8%af%d9%84%d8%a7%d8%b1%d8%a7%d9%85-%d9%86%db%8c%da%a9-%d8%a7%d9%86%db%8c%d8%b4-3/"
                                                                class="pzy-d-block pzy-position-absolute pzy-staff-avatar-link">
                                                                <img class="pzy-staff-card-avatar"
                                                                    src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/fce5068b226e4a0227f2146827a81306.png"
                                                                    alt="دکتر دلارام نیک انیش" />
                                                            </a>
                                                        </div>


                                                        <h3 class="pzy-staff-title p-16-bold">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%af%da%a9%d8%aa%d8%b1-%d8%af%d9%84%d8%a7%d8%b1%d8%a7%d9%85-%d9%86%db%8c%da%a9-%d8%a7%d9%86%db%8c%d8%b4-3/">دکتر دلارام نیک انیش</a>
                                                        </h3>
                                                        <h4 class="pzy-staff-subtitle">تراپیست , نروتراپیست</h4>

                                                        <div class="pzy-staff-point">
                                                            <!-- FeedbackWP Plugin - Results Widget -->
                                                            <div class="rmp-results-widget js-rmp-results-widget js-rmp-results-widget--132 rmp-results-widget--not-rated" data-post-id="132">
                                                                <div class="rmp-results-widget__visual-rating"><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i></div>
                                                                <div class="rmp-results-widget__avg-rating"><span class="js-rmp-avg-rating">0    </span></div>
                                                                <div class="rmp-results-widget__vote-count">(<span class="js-rmp-vote-count">0</span>)  </div>
                                                            </div>
                                                        </div>

                                                        <button class="pzy-staff-consultation-request"
                                                            data-staff-name="دکتر دلارام نیک انیش"
                                                            data-staff="132">
                                                            <i class="pzy-staff-consultation-request-icon" data-feather="message-square"></i>
                                                            <span class="pzy-staff-consultation-request-title">درخواست مشاوره</span>
                                                        </button>
                                                    </article>
                                                </div>
                                                <div class="swiper-slide">
                                                    <article class="pzy-staff-card">

                                                        <div class="pzy-staff-avatar-box pzy-position-relative" style="background: #ee9b9b">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%af%da%a9%d8%aa%d8%b1-%d9%85%da%98%da%af%d8%a7%d9%86-%d8%ad%d8%a7%d8%ac%db%8c%d9%be%d9%88%d8%b1-3/"
                                                                class="pzy-d-block pzy-position-absolute pzy-staff-avatar-link">
                                                                <img class="pzy-staff-card-avatar"
                                                                    src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/Pic.png"
                                                                    alt="دکتر مژگان حاجی‌پور" />
                                                            </a>
                                                        </div>


                                                        <h3 class="pzy-staff-title p-16-bold">
                                                            <a href="https://pezeshk-yar.ir/staff/%d8%af%da%a9%d8%aa%d8%b1-%d9%85%da%98%da%af%d8%a7%d9%86-%d8%ad%d8%a7%d8%ac%db%8c%d9%be%d9%88%d8%b1-3/">دکتر مژگان حاجی‌پور</a>
                                                        </h3>
                                                        <h4 class="pzy-staff-subtitle">متخصص دندانپزشکی</h4>

                                                        <div class="pzy-staff-point">
                                                            <!-- FeedbackWP Plugin - Results Widget -->
                                                            <div class="rmp-results-widget js-rmp-results-widget js-rmp-results-widget--133 rmp-results-widget--not-rated" data-post-id="133">
                                                                <div class="rmp-results-widget__visual-rating"><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i><i class="js-rmp-results-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i></div>
                                                                <div class="rmp-results-widget__avg-rating"><span class="js-rmp-avg-rating">0    </span></div>
                                                                <div class="rmp-results-widget__vote-count">(<span class="js-rmp-vote-count">0</span>)  </div>
                                                            </div>
                                                        </div>

                                                        <button class="pzy-staff-consultation-request"
                                                            data-staff-name="دکتر مژگان حاجی‌پور"
                                                            data-staff="133">
                                                            <i class="pzy-staff-consultation-request-icon" data-feather="message-square"></i>
                                                            <span class="pzy-staff-consultation-request-title">درخواست مشاوره</span>
                                                        </button>
                                                    </article>
                                                </div>
                                            </div>
                                            <div class="swiper-pagination"></div>
                                            <div class="swiper-button-prev">
                                            </div>
                                            <div class="swiper-button-next">
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <div class="pzy-consultation-modal pzy-modal-wrapper pzy-hide">
                                    <div class="pzy-modal-content">
                                        <div class="pzy-modal pzy-staffs-schedule-categories-modal">
                                            <div class="pzy-modal-header">
                                                <p class="pzy-modal-title">
                                                    درخواست مشاوره
                                                </p>
                                                <button class="pzy-modal-close-button">
                                                    <svg class="pzy-input-icon" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                        <path d="M9.16986 15.5801C8.97986 15.5801 8.78986 15.5101 8.63986 15.3601C8.34986 15.0701 8.34986 14.5901 8.63986 14.3001L14.2999 8.64011C14.5899 8.35011 15.0699 8.35011 15.3599 8.64011C15.6499 8.93011 15.6499 9.41011 15.3599 9.70011L9.69986 15.3601C9.55986 15.5101 9.35986 15.5801 9.16986 15.5801Z" fill="#A6AFB8" />
                                                        <path d="M14.8299 15.5801C14.6399 15.5801 14.4499 15.5101 14.2999 15.3601L8.63986 9.70011C8.34986 9.41011 8.34986 8.93011 8.63986 8.64011C8.92986 8.35011 9.40986 8.35011 9.69986 8.64011L15.3599 14.3001C15.6499 14.5901 15.6499 15.0701 15.3599 15.3601C15.2099 15.5101 15.0199 15.5801 14.8299 15.5801Z" fill="#A6AFB8" />
                                                        <path d="M15 22.75H9C3.57 22.75 1.25 20.43 1.25 15V9C1.25 3.57 3.57 1.25 9 1.25H15C20.43 1.25 22.75 3.57 22.75 9V15C22.75 20.43 20.43 22.75 15 22.75ZM9 2.75C4.39 2.75 2.75 4.39 2.75 9V15C2.75 19.61 4.39 21.25 9 21.25H15C19.61 21.25 21.25 19.61 21.25 15V9C21.25 4.39 19.61 2.75 15 2.75H9Z" fill="#A6AFB8" />
                                                    </svg>
                                                </button>
                                            </div>
                                            <div class="pzy-modal-body">
                                                <form class="pzy-consultation-form">
                                                    <div class="pzy-modal-reserve-form pzy-d-flex pzy-flex-column-nowrap">
                                                        <label class="pzy-input-label">
                                                            <p class="pzy-input-title">
                                                                نام و نام خانوادگی                                <span class="pzy-required">*</span>
                                                            </p>
                                                            <div class="pzy-input-append-icon">
                                                                <input type="text" name="full_name">
                                                                <i class="pzy-input-icon" data-feather="user"></i>
                                                            </div>
                                                        </label>
                                                        <label class="pzy-input-label">
                                                            <p class="pzy-input-title">
                                                                شماره تماس                                <span class="pzy-required">*</span>
                                                            </p>
                                                            <div class="pzy-input-append-icon">
                                                                <input type="text" name="contact_phone">
                                                                <i class="pzy-input-icon" data-feather="smartphone"></i>
                                                            </div>
                                                        </label>
                                                        <label class="pzy-input-label">
                                                            <p class="pzy-input-title">
                                                                نوع بیمه درمانی                                <span class="pzy-required">*</span>
                                                            </p>
                                                            <div class="pzy-input-append-icon">
                                                                <input type="text" name="insurance_type">
                                                                <i class="pzy-input-icon" data-feather="clipboard"></i>
                                                            </div>
                                                        </label>

                                                        <input type="hidden" class="pzy-form-staff-id" name="staff">


                                                        <div class="pzy-input-append-icon pzy-position-relative">
                                                            <input class="pzy-form-service-human-date" type="text" placeholder="انتخاب تاریخ" disabled>
                                                            <input class="pzy-form-service-date" type="hidden" name="service_date">
                                                            <i class="pzy-input-icon pzy-consultation-show-date" data-feather="plus-circle"></i>
                                                            <div class="pzy-select-date-box pzy-consultation-select-date-box pzy-hide"
                                                                data-alt="#pzy-consultation-datepicker-alte5ab0e3">
                                                                <span class="pzy-select-date-box-title">انتخاب تاریخ</span>
                                                                <input type="text" class="pzy-datepicker-display" id="pzy-consultation-datepicker-alte5ab0e3" readonly />
                                                            </div>

                                                        </div>
                                                        <div class="pzy-input-append-icon">
                                                            <input class="pzy-form-staff-name" type="text" value="نام متخصص" disabled>
                                                            <i class="pzy-input-icon" data-feather="user"></i>
                                                        </div>

                                                        <p class="pzy-radio-group-label">انتخاب زمان مراجعه به دکتر :</p>

                                                        <div class="pzy-time-slots pzy-radio-group"></div>

                                                        <button class="pzy-modal-reserve-submit pzy-button pzy-button-primary pzy-mt-55">
                                                            <i data-feather="message-square"></i>
                                                            ثبت نوبت شما
                                                        </button>
                                                    </div>
                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="elementor-element elementor-element-fc524b8 e-flex e-con-boxed e-con e-parent" data-id="fc524b8" data-element_type="container">
                <div class="e-con-inner">
                    <div class="elementor-element elementor-element-8a0444c elementor-widget elementor-widget-post-comments" data-id="8a0444c" data-element_type="widget" data-widget_type="post-comments.theme_comments">
                        <div class="elementor-widget-container">

                            <div id="comments" class="comments-area">


                                <div id="respond" class="comment-respond">
                                    <h3 id="reply-title" class="comment-reply-title">دیدگاه شما <small><a rel="nofollow" id="cancel-comment-reply-link" href="/staff/%d8%af%da%a9%d8%aa%d8%b1-%d9%85%d8%a8%db%8c%d9%86-%d8%a7%d9%85%db%8c%d9%86-3/#respond" style="display: none;">لغو پاسخ</a></small>
                                    <p class="title_reply_after"></p>
                                    </span><form action="https://pezeshk-yar.ir/wp-comments-post.php" method="post" id="commentform" class="comment-form">
                                        <p class="comment-notes"><span id="email-notes">نشانی ایمیل شما منتشر نخواهد شد.</span> <span class="required-field-message">بخش‌های موردنیاز علامت‌گذاری شده‌اند <span class="required">*</span></span></p>
                                        <div class="comment-form-row comment-form-author">
                                            <div class="input-append">
                                                <input placeholder="نام:" id="author" name="author" type="text" value="" size="30" aria-required="true" required /><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                    <path d="M5 21C5 17.134 8.13401 14 12 14C15.866 14 19 17.134 19 21M16 7C16 9.20914 14.2091 11 12 11C9.79086 11 8 9.20914 8 7C8 4.79086 9.79086 3 12 3C14.2091 3 16 4.79086 16 7Z" stroke="#5C91C7" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                                </svg>
                                            </div>
                                        </div>
                                        <div class="comment-form-row comment-form-email">
                                            <div class="input-append">
                                                <input placeholder="آدرس ایمیل:" id="email" name="email" type="text" value="" size="30" aria-required="true" required /><i data-feather="mail"></i>
                                            </div>
                                        </div>
                                        <div class="comment-form-comment">
                                            <textarea id="comment" name="comment" class="span12" rows="5" aria-required="true"></textarea>
                                        </div>
                                        <p class="comment-form-cookies-consent">
                                            <input id="wp-comment-cookies-consent" name="wp-comment-cookies-consent" type="checkbox" value="yes" />
                                            <label for="wp-comment-cookies-consent">ذخیره نام، ایمیل و وبسایت من در مرورگر برای زمانی که دوباره دیدگاهی می‌نویسم.</label>
                                        </p>
                                        <div class="comment-form-submit-box">
                                            <div class="pzy-rate-box">
                                                <span class="pzy-rate-title">امتیاز شما</span><!-- FeedbackWP Plugin --><div class="rmp-widgets-container rmp-wp-plugin rmp-main-container js-rmp-widgets-container js-rmp-widgets-container--131 " data-post-id="131">
                                                    <!-- Rating widget -->
                                                    <div class="rmp-rating-widget js-rmp-rating-widget">
                                                        <p class="rmp-heading rmp-heading--title">چقدر این پست مفید بود؟      </p>
                                                        <p class="rmp-heading rmp-heading--subtitle">با کلیک روی ستاره ها به این نوشته امتیاز دهید      </p>
                                                        <div class="rmp-rating-widget__icons">
                                                            <ul class="rmp-rating-widget__icons-list js-rmp-rating-icons-list">
                                                                <li class="rmp-rating-widget__icons-list__icon js-rmp-rating-item" data-descriptive-rating="اصلا مفید نیست" data-value="1"><i class="js-rmp-rating-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i></li>
                                                                <li class="rmp-rating-widget__icons-list__icon js-rmp-rating-item" data-descriptive-rating="تا حدودی مفید است" data-value="2"><i class="js-rmp-rating-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i></li>
                                                                <li class="rmp-rating-widget__icons-list__icon js-rmp-rating-item" data-descriptive-rating="مفید" data-value="3"><i class="js-rmp-rating-icon rmp-icon rmp-icon--ratings rmp-icon--star rmp-icon--full-highlight"></i></li>
                                                                <li class="rmp-rating-widget__icons-list__icon js-rmp-rating-item" data-descriptive-rating="نسبتا مفید" data-value="4"><i class="js-rmp-rating-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i></li>
                                                                <li class="rmp-rating-widget__icons-list__icon js-rmp-rating-item" data-descriptive-rating="بسیار مفید" data-value="5"><i class="js-rmp-rating-icon rmp-icon rmp-icon--ratings rmp-icon--star "></i></li>
                                                            </ul>
                                                        </div>
                                                        <p class="rmp-rating-widget__hover-text js-rmp-hover-text"></p>
                                                        <button class="rmp-rating-widget__submit-btn rmp-btn js-submit-rating-btn">ثبت امتیاز    </button>
                                                        <p class="rmp-rating-widget__results js-rmp-results ">امتیاز میانگین <span class="rmp-rating-widget__results__rating js-rmp-avg-rating">3</span> / 5. تعداد امتیازات: <span class="rmp-rating-widget__results__votes js-rmp-vote-count">1</span>    </p>
                                                        <p class="rmp-rating-widget__not-rated js-rmp-not-rated rmp-rating-widget__not-rated--hidden">هنوز امتیازی ثبت نشده! اولین نفری باشید که به این پست امتیاز می دهید.    </p>
                                                        <p class="rmp-rating-widget__msg js-rmp-msg"></p>
                                                    </div>
                                                    <!--Structured data -->
                                                </div>
                                            </div>
                                            <p class="form-submit">
                                                <input name="submit" type="submit" id="submit" class="submit" value="فرستادن دیدگاه" />
                                                <input type='hidden' name='comment_post_ID' value='131' id='comment_post_ID' />
                                                <input type='hidden' name='comment_parent' id='comment_parent' value='0' />
                                            </p>
                                        </div>
                                    </form>
                                </div>
                                <!-- #respond -->

                            </div>
                            <!-- #comments -->
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </main>



</asp:Content>
