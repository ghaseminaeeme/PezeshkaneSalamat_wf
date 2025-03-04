<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DoctorDetail.aspx.cs" Inherits="pezeshkaneSalamat_wf.DoctorDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel='stylesheet' id='rate-my-post-css' href='https://pezeshk-yar.ir/wp-content/plugins/rate-my-post/public/css/rate-my-post.min.css?ver=4.2.5' type='text/css' media='all' />

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
                    <%-- <div class="elementor-element elementor-element-daa6e28 elementor-widget elementor-widget-pzy_staff_gallery" data-id="daa6e28" data-element_type="widget">
                        <div class="elementor-widget-container">
                            <div class='pzy-gallery pzy-staff-gallery pzy-d-flex pzy-flex-column-reverse-nowrap'>
                                <div class='pzy-thumbnail-gallery'>
                                    <div class='swiper custom-init swiper-container'>
                                        <div class='swiper-wrapper'>

                                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlImages">
                                                <ItemTemplate>
                                                    <div class="swiper-slide dr-img-list">
                                                        <div class="pzy-slide-content">
                                                            <img src='<%#Eval("pic") %>' alt='<%#Eval("title") %>' loading='lazy' />
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

                            </div>
                        </div>
                    </div>--%>
                </div>
            </div>


            <asp:SqlDataSource ID="SqlImages" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>"
                SelectCommand="selectDoctorImages" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:QueryStringParameter Name="doctorId" QueryStringField="did" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>


            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDoctor" CssClass="w-100">
                <ItemTemplate>
                    <div class="elementor-element elementor-element-c810fdf e-flex e-con-boxed e-con e-parent" data-id="c810fdf" data-element_type="container">
                        <div class="e-con-inner">



                            <div class="elementor-element elementor-element-92a6065 e-con-full e-flex e-con e-child" data-id="92a6065" data-element_type="container">
                                <div class="elementor-widget-container">
                                    <div class='pzy-gallery pzy-staff-gallery pzy-d-flex pzy-flex-column-reverse-nowrap'>
                                        <div class="progile-img">
                                            <img src='<%#Eval("dImg") %>' alt='<%#Eval("dName") %>' loading='lazy' />
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- ============ Description ==========  -->
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
                                        </div>
                                    </div>
                                </div>
                            </div>



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
                                                    <div class="pzy-staff-template-information-card-title">تخصص</div>
                                                    <div class="pzy-staff-template-information-card-description">
                                                        <%#Eval("bSubject") %>
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

                                            <div class="py-staff-template-information-card pzy-d-flex pzy-justify-content-between pzy-align-items-center pzy-position-relative">

                                                <div class="doctor-map">
                                                    <%# Eval("dLocation").ToString() != "" ? Eval("dLocation")  :  
                                                                "<iframe src='https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6477.8791369933215!2d51.0939571452297!3d35.72770472393541!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3f8ded0ab06bfd8b%3A0x5e01d33197dbe3af!2z2K_Yp9ix2YjYrtin2YbZhyDYr9mD2KrYsSDZhdmH2K_ZiiDZhti42LHZig!5e0!3m2!1sen!2sfr!4v1705747127499!5m2!1sen!2sfr' width='100%' height='300' style='border: 0;' allowfullscreen='' loading='lazy' referrerpolicy='no-referrer-when-downgrade'></iframe>" %>
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
                            <asp:ListView ID="ListRelatedDoctors" runat="server" DataSourceID="SqlRelatedDoctors">
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
                                        </div>

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


                            <asp:SqlDataSource ID="SqlRelatedDoctors" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>"
                                SelectCommand="selectRelatedDoctors" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:QueryStringParameter DefaultValue="0" Name="doctorId" QueryStringField="did" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>

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
                                <h3 id="reply-title" class="comment-reply-title">دیدگاه شما 
                                    <small></small>
                                <p class="title_reply_after"></p>
                                <span></span>
                                <div id="commentform" class="comment-form">
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
                                        <div class="comment-form-submit-box">

                                            <p class="form-submit">
                                                <input name="submit" type="submit" id="submit" class="submit" value="فرستادن دیدگاه" />
                                                <input type='hidden' name='comment_post_ID' value='131' id='comment_post_ID' />
                                                <input type='hidden' name='comment_parent' id='comment_parent' value='0' />
                                            </p>
                                        </div>
                                </div>
                            </div>
                            <!-- #respond -->

                        </div>
                        <!-- #comments -->
                    </div>
                </div>
            </div>
        </div>


    </main>


    <style>
        .elementor-140 .elementor-element.elementor-element-7044a92a {
            --display: flex;
            --flex-direction: column;
            --container-widget-width: 100%;
            --container-widget-height: initial;
            --container-widget-flex-grow: 0;
            --container-widget-align-self: initial;
            --flex-wrap-mobile: wrap;
            --gap: 0px 0px;
            --background-transition: 0.3s;
            --padding-top: 73px;
            --padding-bottom: 0px;
            --padding-left: 0px;
            --padding-right: 0px;
        }

            .elementor-140 .elementor-element.elementor-element-7044a92a:not(.elementor-motion-effects-element-type-background), .elementor-140 .elementor-element.elementor-element-7044a92a > .elementor-motion-effects-container > .elementor-motion-effects-layer {
                background-color: var( --e-global-color-46c853a );
            }

            .elementor-140 .elementor-element.elementor-element-7044a92a, .elementor-140 .elementor-element.elementor-element-7044a92a::before {
                --border-transition: 0.3s;
            }

        .elementor-140 .elementor-element.elementor-element-4b112bec {
            --display: flex;
            --position: absolute;
            --flex-direction: row;
            --container-widget-width: calc( ( 1 - var( --container-widget-flex-grow ) ) * 100% );
            --container-widget-height: 100%;
            --container-widget-flex-grow: 1;
            --container-widget-align-self: stretch;
            --flex-wrap-mobile: wrap;
            --justify-content: flex-start;
            --align-items: flex-start;
            --background-transition: 0.3s;
            --padding-top: 0px;
            --padding-bottom: 0px;
            --padding-left: 0px;
            --padding-right: 0px;
            top: 0px;
        }

        body:not(.rtl) .elementor-140 .elementor-element.elementor-element-4b112bec {
            left: 0px;
        }

        body.rtl .elementor-140 .elementor-element.elementor-element-4b112bec {
            right: 0px;
        }

        .elementor-140 .elementor-element.elementor-element-4f864aa9 {
            --display: flex;
            --min-height: 50px;
            --flex-direction: row;
            --container-widget-width: initial;
            --container-widget-height: 100%;
            --container-widget-flex-grow: 1;
            --container-widget-align-self: stretch;
            --flex-wrap-mobile: wrap;
            --justify-content: center;
            --background-transition: 0.3s;
            --overlay-opacity: 1;
        }

            .elementor-140 .elementor-element.elementor-element-4f864aa9::before, .elementor-140 .elementor-element.elementor-element-4f864aa9 > .elementor-background-video-container::before, .elementor-140 .elementor-element.elementor-element-4f864aa9 > .e-con-inner > .elementor-background-video-container::before, .elementor-140 .elementor-element.elementor-element-4f864aa9 > .elementor-background-slideshow::before, .elementor-140 .elementor-element.elementor-element-4f864aa9 > .e-con-inner > .elementor-background-slideshow::before, .elementor-140 .elementor-element.elementor-element-4f864aa9 > .elementor-motion-effects-container > .elementor-motion-effects-layer::before {
                background-image: url("https://pezeshk-yar.ir/wp-content/uploads/2024/07/Curve.svg");
                --background-overlay: '';
                background-position: center center;
                background-repeat: no-repeat;
            }

        .elementor-widget-image .widget-image-caption {
            color: var( --e-global-color-text );
        }

        .elementor-140 .elementor-element.elementor-element-1aba4b1d {
            --display: flex;
            --flex-direction: row;
            --container-widget-width: calc( ( 1 - var( --container-widget-flex-grow ) ) * 100% );
            --container-widget-height: 100%;
            --container-widget-flex-grow: 1;
            --container-widget-align-self: stretch;
            --flex-wrap-mobile: wrap;
            --align-items: flex-start;
            --gap: 0px 0px;
            --flex-wrap: nowrap;
            --background-transition: 0.3s;
            --padding-top: 0px;
            --padding-bottom: 0px;
            --padding-left: 0px;
            --padding-right: 0px;
        }

        .elementor-140 .elementor-element.elementor-element-69ecef7c {
            --display: flex;
            --flex-direction: column;
            --container-widget-width: 100%;
            --container-widget-height: initial;
            --container-widget-flex-grow: 0;
            --container-widget-align-self: initial;
            --flex-wrap-mobile: wrap;
            --gap: 0px 0px;
            --background-transition: 0.3s;
            --padding-top: 0px;
            --padding-bottom: 0px;
            --padding-left: 0px;
            --padding-right: 0px;
        }

            .elementor-140 .elementor-element.elementor-element-69ecef7c.e-con {
                --flex-grow: 0;
                --flex-shrink: 0;
            }

        .elementor-140 .elementor-element.elementor-element-5b10eac4 {
            --display: flex;
            --flex-direction: row;
            --container-widget-width: calc( ( 1 - var( --container-widget-flex-grow ) ) * 100% );
            --container-widget-height: 100%;
            --container-widget-flex-grow: 1;
            --container-widget-align-self: stretch;
            --flex-wrap-mobile: wrap;
            --justify-content: space-between;
            --align-items: center;
            --gap: 3px 3px;
            --flex-wrap: wrap;
            --background-transition: 0.3s;
            --margin-top: 0px;
            --margin-bottom: 0px;
            --margin-left: 0px;
            --margin-right: 0px;
            --padding-top: 0px;
            --padding-bottom: 0px;
            --padding-left: 0px;
            --padding-right: 0px;
        }

        .elementor-widget-heading .elementor-heading-title {
            color: var( --e-global-color-primary );
        }

        .elementor-140 .elementor-element.elementor-element-52b2ac44 .elementor-heading-title {
            color: var( --e-global-color-b1ab2af );
            font-size: var( --e-global-typography-c40b55f-font-size );
            font-weight: var( --e-global-typography-c40b55f-font-weight );
            font-style: var( --e-global-typography-c40b55f-font-style );
            line-height: var( --e-global-typography-c40b55f-line-height );
        }

        .elementor-140 .elementor-element.elementor-element-1a7258b1.elementor-element {
            --flex-grow: 1;
            --flex-shrink: 0;
        }

        .elementor-140 .elementor-element.elementor-element-1a7258b1 .elementor-heading-title {
            color: var( --e-global-color-b1ab2af );
            font-size: var( --e-global-typography-509bb16-font-size );
            font-weight: var( --e-global-typography-509bb16-font-weight );
            font-style: var( --e-global-typography-509bb16-font-style );
            line-height: var( --e-global-typography-509bb16-line-height );
        }

        .elementor-widget-icon-box.elementor-view-stacked .elementor-icon {
            background-color: var( --e-global-color-primary );
        }

        .elementor-widget-icon-box.elementor-view-framed .elementor-icon, .elementor-widget-icon-box.elementor-view-default .elementor-icon {
            fill: var( --e-global-color-primary );
            color: var( --e-global-color-primary );
            border-color: var( --e-global-color-primary );
        }

        .elementor-widget-icon-box .elementor-icon-box-title {
            color: var( --e-global-color-primary );
        }

        .elementor-widget-icon-box .elementor-icon-box-description {
            color: var( --e-global-color-text );
        }

        .elementor-140 .elementor-element.elementor-element-3f027a92 {
            --icon-box-icon-margin: 3px;
        }

            .elementor-140 .elementor-element.elementor-element-3f027a92 .elementor-icon {
                font-size: 16px;
            }

            .elementor-140 .elementor-element.elementor-element-3f027a92 .elementor-icon-box-title {
                color: var( --e-global-color-1bebc8f );
            }

                .elementor-140 .elementor-element.elementor-element-3f027a92 .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-3f027a92 .elementor-icon-box-title a {
                    font-size: var( --e-global-typography-6401247-font-size );
                    font-weight: var( --e-global-typography-6401247-font-weight );
                    font-style: var( --e-global-typography-6401247-font-style );
                    line-height: var( --e-global-typography-6401247-line-height );
                }

        .elementor-140 .elementor-element.elementor-element-57919728 {
            --display: flex;
            --flex-wrap: wrap;
            --align-content: center;
            --background-transition: 0.3s;
            --margin-top: 15px;
            --margin-bottom: 0px;
            --margin-left: 0px;
            --margin-right: 0px;
            --padding-top: 0px;
            --padding-bottom: 0px;
            --padding-left: 0px;
            --padding-right: 0px;
        }

        .elementor-widget-text-editor {
            color: var( --e-global-color-text );
        }

            .elementor-widget-text-editor.elementor-drop-cap-view-stacked .elementor-drop-cap {
                background-color: var( --e-global-color-primary );
            }

            .elementor-widget-text-editor.elementor-drop-cap-view-framed .elementor-drop-cap, .elementor-widget-text-editor.elementor-drop-cap-view-default .elementor-drop-cap {
                color: var( --e-global-color-primary );
                border-color: var( --e-global-color-primary );
            }

        .elementor-140 .elementor-element.elementor-element-2e00a09f > .elementor-widget-container {
            margin: 0px 0px 0px 0px;
            padding: 0px 0px 0px 0px;
        }

        .elementor-140 .elementor-element.elementor-element-2e00a09f {
            text-align: justify;
            color: var( --e-global-color-1bebc8f );
            font-size: 14px;
            font-weight: 400;
            font-style: normal;
            line-height: 24px;
        }

        .elementor-140 .elementor-element.elementor-element-5f66c71f {
            --display: flex;
            --flex-direction: row;
            --container-widget-width: initial;
            --container-widget-height: 100%;
            --container-widget-flex-grow: 1;
            --container-widget-align-self: stretch;
            --flex-wrap-mobile: wrap;
            --justify-content: space-between;
            --flex-wrap: nowrap;
            --background-transition: 0.3s;
            --margin-top: 25px;
            --margin-bottom: 0px;
            --margin-left: 0px;
            --margin-right: 0px;
            --padding-top: 0px;
            --padding-bottom: 0px;
            --padding-left: 0px;
            --padding-right: 0px;
        }

        .elementor-140 .elementor-element.elementor-element-53be2ec3 img {
            height: 50px;
            object-fit: contain;
            object-position: center center;
        }

        .elementor-140 .elementor-element.elementor-element-6a5ca68c img {
            height: 50px;
            object-fit: contain;
            object-position: center center;
        }

        .elementor-140 .elementor-element.elementor-element-684c6319 img {
            height: 50px;
            object-fit: contain;
            object-position: center center;
        }

        .elementor-140 .elementor-element.elementor-element-7950cb45 img {
            height: 50px;
            object-fit: contain;
            object-position: center center;
        }

        .elementor-140 .elementor-element.elementor-element-2bcbddcf img {
            height: 50px;
            object-fit: contain;
            object-position: center center;
        }

        .elementor-140 .elementor-element.elementor-element-734713c5 img {
            height: 50px;
            object-fit: contain;
            object-position: center center;
        }

        .elementor-140 .elementor-element.elementor-element-a8f5c8d {
            --display: flex;
            --flex-direction: row;
            --container-widget-width: calc( ( 1 - var( --container-widget-flex-grow ) ) * 100% );
            --container-widget-height: 100%;
            --container-widget-flex-grow: 1;
            --container-widget-align-self: stretch;
            --flex-wrap-mobile: wrap;
            --justify-content: space-between;
            --align-items: center;
            --background-transition: 0.3s;
            --margin-top: 33px;
            --margin-bottom: 0px;
            --margin-left: 0px;
            --margin-right: 0px;
            --padding-top: 0px;
            --padding-bottom: 0px;
            --padding-left: 0px;
            --padding-right: 0px;
        }

        .elementor-140 .elementor-element.elementor-element-be5bb6c {
            width: var( --container-widget-width, 74.244% );
            max-width: 74.244%;
            --container-widget-width: 74.244%;
            --container-widget-flex-grow: 0;
            --icon-box-icon-margin: 10px;
        }

            .elementor-140 .elementor-element.elementor-element-be5bb6c.elementor-element {
                --flex-grow: 1;
                --flex-shrink: 0;
            }

            .elementor-140 .elementor-element.elementor-element-be5bb6c .elementor-icon-box-wrapper {
                text-align: right;
            }

            .elementor-140 .elementor-element.elementor-element-be5bb6c .elementor-icon {
                font-size: 18px;
            }

            .elementor-140 .elementor-element.elementor-element-be5bb6c .elementor-icon-box-title {
                color: var( --e-global-color-1bebc8f );
            }

                .elementor-140 .elementor-element.elementor-element-be5bb6c .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-be5bb6c .elementor-icon-box-title a {
                    font-size: var( --e-global-typography-509bb16-font-size );
                    font-weight: var( --e-global-typography-509bb16-font-weight );
                    font-style: var( --e-global-typography-509bb16-font-style );
                    line-height: var( --e-global-typography-509bb16-line-height );
                }

        .elementor-140 .elementor-element.elementor-element-77007af {
            --icon-box-icon-margin: 0px;
        }

            .elementor-140 .elementor-element.elementor-element-77007af .elementor-icon {
                font-size: 20px;
            }

        .elementor-140 .elementor-element.elementor-element-516903d > .elementor-widget-container {
            margin: 24px 0px 0px 0px;
        }

        .elementor-140 .elementor-element.elementor-element-516903d .pzy-content-area {
            gap: 24px;
        }

        .elementor-140 .elementor-element.elementor-element-516903d input {
            font-size: var( --e-global-typography-8efc932-font-size );
            font-weight: var( --e-global-typography-8efc932-font-weight );
            font-style: var( --e-global-typography-8efc932-font-style );
            line-height: var( --e-global-typography-8efc932-line-height );
            color: var( --e-global-color-96ac8f1 );
            background-color: var( --e-global-color-26db0c3 );
            border-style: none;
            border-radius: 19px;
            padding: 9px 17px 7px 17px;
            height: 39px;
        }

        .elementor-140 .elementor-element.elementor-element-516903d button {
            font-size: var( --e-global-typography-2397996-font-size );
            font-weight: var( --e-global-typography-2397996-font-weight );
            font-style: var( --e-global-typography-2397996-font-style );
            line-height: var( --e-global-typography-2397996-line-height );
            color: var( --e-global-color-a000609 );
            background-color: var( --e-global-color-accent );
            border-style: none;
            border-radius: 19px;
            padding: 3px 25px 2px 25px;
            height: 39px;
            gap: 8px;
        }

        .elementor-140 .elementor-element.elementor-element-516903d .pzy-newsletter-message {
            padding: 18px 0px 0px 0px;
        }

        .elementor-140 .elementor-element.elementor-element-516903d .pzy-success-message {
            color: var( --e-global-color-58ed6e3 );
        }

        .elementor-140 .elementor-element.elementor-element-516903d .pzy-error-message {
            color: var( --e-global-color-4791e6c );
        }

        .elementor-140 .elementor-element.elementor-element-4f6dc316 {
            --display: flex;
            --flex-direction: row;
            --container-widget-width: calc( ( 1 - var( --container-widget-flex-grow ) ) * 100% );
            --container-widget-height: 100%;
            --container-widget-flex-grow: 1;
            --container-widget-align-self: stretch;
            --flex-wrap-mobile: wrap;
            --align-items: flex-start;
            --gap: 42px 0px;
            --flex-wrap: wrap;
            --background-transition: 0.3s;
            --margin-top: 0%;
            --margin-bottom: 0%;
            --margin-left: 0%;
            --margin-right: 0%;
            --padding-top: 0px;
            --padding-bottom: 0px;
            --padding-left: 65px;
            --padding-right: 80px;
        }

            .elementor-140 .elementor-element.elementor-element-4f6dc316.e-con {
                --flex-grow: 0;
                --flex-shrink: 0;
            }

        .elementor-140 .elementor-element.elementor-element-22efbd37 {
            --display: flex;
            --flex-direction: column;
            --container-widget-width: calc( ( 1 - var( --container-widget-flex-grow ) ) * 100% );
            --container-widget-height: initial;
            --container-widget-flex-grow: 0;
            --container-widget-align-self: initial;
            --flex-wrap-mobile: wrap;
            --justify-content: flex-start;
            --align-items: flex-start;
            --gap: 8.5px 8.5px;
            --background-transition: 0.3s;
            --margin-top: 0px;
            --margin-bottom: 0px;
            --margin-left: 0px;
            --margin-right: 0px;
            --padding-top: 0px;
            --padding-bottom: 0px;
            --padding-left: 0px;
            --padding-right: 0px;
        }

        .elementor-widget-icon-list .elementor-icon-list-item:not(:last-child):after {
            border-color: var( --e-global-color-text );
        }

        .elementor-widget-icon-list .elementor-icon-list-icon i {
            color: var( --e-global-color-primary );
        }

        .elementor-widget-icon-list .elementor-icon-list-icon svg {
            fill: var( --e-global-color-primary );
        }

        .elementor-widget-icon-list .elementor-icon-list-text {
            color: var( --e-global-color-secondary );
        }

        .elementor-140 .elementor-element.elementor-element-4e20b030 .elementor-icon-list-items:not(.elementor-inline-items) .elementor-icon-list-item:not(:last-child) {
            padding-bottom: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-4e20b030 .elementor-icon-list-items:not(.elementor-inline-items) .elementor-icon-list-item:not(:first-child) {
            margin-top: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-4e20b030 .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item {
            margin-right: calc(8px/2);
            margin-left: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-4e20b030 .elementor-icon-list-items.elementor-inline-items {
            margin-right: calc(-8px/2);
            margin-left: calc(-8px/2);
        }

        body.rtl .elementor-140 .elementor-element.elementor-element-4e20b030 .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item:after {
            left: calc(-8px/2);
        }

        body:not(.rtl) .elementor-140 .elementor-element.elementor-element-4e20b030 .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item:after {
            right: calc(-8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-4e20b030 .elementor-icon-list-icon i {
            transition: color 0.3s;
        }

        .elementor-140 .elementor-element.elementor-element-4e20b030 .elementor-icon-list-icon svg {
            transition: fill 0.3s;
        }

        .elementor-140 .elementor-element.elementor-element-4e20b030 {
            --e-icon-list-icon-size: 6px;
            --icon-vertical-align: center;
            --icon-vertical-offset: 0px;
        }

            .elementor-140 .elementor-element.elementor-element-4e20b030 .elementor-icon-list-icon {
                padding-left: 8px;
            }

            .elementor-140 .elementor-element.elementor-element-4e20b030 .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-4e20b030 .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-509bb16-font-size );
                font-weight: var( --e-global-typography-509bb16-font-weight );
                font-style: var( --e-global-typography-509bb16-font-style );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-4e20b030 .elementor-icon-list-text {
                color: #FFFFFF;
                transition: color 0.3s;
            }

        .elementor-140 .elementor-element.elementor-element-512088aa > .elementor-widget-container {
            margin: 0px 0px 0px 0px;
            padding: 0px 0px 0px 0px;
        }

        .elementor-140 .elementor-element.elementor-element-512088aa .elementor-icon-list-items:not(.elementor-inline-items) .elementor-icon-list-item:not(:last-child) {
            padding-bottom: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-512088aa .elementor-icon-list-items:not(.elementor-inline-items) .elementor-icon-list-item:not(:first-child) {
            margin-top: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-512088aa .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item {
            margin-right: calc(8px/2);
            margin-left: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-512088aa .elementor-icon-list-items.elementor-inline-items {
            margin-right: calc(-8px/2);
            margin-left: calc(-8px/2);
        }

        body.rtl .elementor-140 .elementor-element.elementor-element-512088aa .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item:after {
            left: calc(-8px/2);
        }

        body:not(.rtl) .elementor-140 .elementor-element.elementor-element-512088aa .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item:after {
            right: calc(-8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-512088aa .elementor-icon-list-icon i {
            transition: color 0.3s;
        }

        .elementor-140 .elementor-element.elementor-element-512088aa .elementor-icon-list-icon svg {
            transition: fill 0.3s;
        }

        .elementor-140 .elementor-element.elementor-element-512088aa {
            --e-icon-list-icon-size: 14px;
            --icon-vertical-offset: 0px;
        }

            .elementor-140 .elementor-element.elementor-element-512088aa .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-512088aa .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-8efc932-font-size );
                font-weight: var( --e-global-typography-8efc932-font-weight );
                font-style: var( --e-global-typography-8efc932-font-style );
                line-height: var( --e-global-typography-8efc932-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-512088aa .elementor-icon-list-text {
                color: var( --e-global-color-1bebc8f );
                transition: color 0.3s;
            }

        .elementor-140 .elementor-element.elementor-element-28cc5177 {
            --display: flex;
            --flex-direction: column;
            --container-widget-width: 100%;
            --container-widget-height: initial;
            --container-widget-flex-grow: 0;
            --container-widget-align-self: initial;
            --flex-wrap-mobile: wrap;
            --gap: 8.5px 8.5px;
            --background-transition: 0.3s;
            --margin-top: 0px;
            --margin-bottom: 0px;
            --margin-left: 0px;
            --margin-right: 0px;
            --padding-top: 0px;
            --padding-bottom: 0px;
            --padding-left: 0px;
            --padding-right: 0px;
        }

        .elementor-140 .elementor-element.elementor-element-72d23f0f .elementor-icon-list-items:not(.elementor-inline-items) .elementor-icon-list-item:not(:last-child) {
            padding-bottom: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-72d23f0f .elementor-icon-list-items:not(.elementor-inline-items) .elementor-icon-list-item:not(:first-child) {
            margin-top: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-72d23f0f .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item {
            margin-right: calc(8px/2);
            margin-left: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-72d23f0f .elementor-icon-list-items.elementor-inline-items {
            margin-right: calc(-8px/2);
            margin-left: calc(-8px/2);
        }

        body.rtl .elementor-140 .elementor-element.elementor-element-72d23f0f .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item:after {
            left: calc(-8px/2);
        }

        body:not(.rtl) .elementor-140 .elementor-element.elementor-element-72d23f0f .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item:after {
            right: calc(-8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-72d23f0f .elementor-icon-list-icon i {
            transition: color 0.3s;
        }

        .elementor-140 .elementor-element.elementor-element-72d23f0f .elementor-icon-list-icon svg {
            transition: fill 0.3s;
        }

        .elementor-140 .elementor-element.elementor-element-72d23f0f {
            --e-icon-list-icon-size: 6px;
            --icon-vertical-align: center;
            --icon-vertical-offset: 0px;
        }

            .elementor-140 .elementor-element.elementor-element-72d23f0f .elementor-icon-list-icon {
                padding-left: 8px;
            }

            .elementor-140 .elementor-element.elementor-element-72d23f0f .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-72d23f0f .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-509bb16-font-size );
                font-weight: var( --e-global-typography-509bb16-font-weight );
                font-style: var( --e-global-typography-509bb16-font-style );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-72d23f0f .elementor-icon-list-text {
                color: #FFFFFF;
                transition: color 0.3s;
            }

        .elementor-140 .elementor-element.elementor-element-1cb7faaa .elementor-icon-list-items:not(.elementor-inline-items) .elementor-icon-list-item:not(:last-child) {
            padding-bottom: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-1cb7faaa .elementor-icon-list-items:not(.elementor-inline-items) .elementor-icon-list-item:not(:first-child) {
            margin-top: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-1cb7faaa .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item {
            margin-right: calc(8px/2);
            margin-left: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-1cb7faaa .elementor-icon-list-items.elementor-inline-items {
            margin-right: calc(-8px/2);
            margin-left: calc(-8px/2);
        }

        body.rtl .elementor-140 .elementor-element.elementor-element-1cb7faaa .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item:after {
            left: calc(-8px/2);
        }

        body:not(.rtl) .elementor-140 .elementor-element.elementor-element-1cb7faaa .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item:after {
            right: calc(-8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-1cb7faaa .elementor-icon-list-icon i {
            transition: color 0.3s;
        }

        .elementor-140 .elementor-element.elementor-element-1cb7faaa .elementor-icon-list-icon svg {
            transition: fill 0.3s;
        }

        .elementor-140 .elementor-element.elementor-element-1cb7faaa {
            --e-icon-list-icon-size: 14px;
            --icon-vertical-offset: 0px;
        }

            .elementor-140 .elementor-element.elementor-element-1cb7faaa .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-1cb7faaa .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-8efc932-font-size );
                font-weight: var( --e-global-typography-8efc932-font-weight );
                font-style: var( --e-global-typography-8efc932-font-style );
                line-height: var( --e-global-typography-8efc932-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-1cb7faaa .elementor-icon-list-text {
                color: var( --e-global-color-1bebc8f );
                transition: color 0.3s;
            }

        .elementor-140 .elementor-element.elementor-element-2ec2c408 {
            --display: flex;
            --flex-direction: column;
            --container-widget-width: 100%;
            --container-widget-height: initial;
            --container-widget-flex-grow: 0;
            --container-widget-align-self: initial;
            --flex-wrap-mobile: wrap;
            --gap: 8.5px 8.5px;
            --background-transition: 0.3s;
            --margin-top: 0px;
            --margin-bottom: 0px;
            --margin-left: 0px;
            --margin-right: 0px;
            --padding-top: 0px;
            --padding-bottom: 0px;
            --padding-left: 0px;
            --padding-right: 0px;
        }

        .elementor-140 .elementor-element.elementor-element-4f1ae289 .elementor-icon-list-items:not(.elementor-inline-items) .elementor-icon-list-item:not(:last-child) {
            padding-bottom: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-4f1ae289 .elementor-icon-list-items:not(.elementor-inline-items) .elementor-icon-list-item:not(:first-child) {
            margin-top: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-4f1ae289 .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item {
            margin-right: calc(8px/2);
            margin-left: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-4f1ae289 .elementor-icon-list-items.elementor-inline-items {
            margin-right: calc(-8px/2);
            margin-left: calc(-8px/2);
        }

        body.rtl .elementor-140 .elementor-element.elementor-element-4f1ae289 .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item:after {
            left: calc(-8px/2);
        }

        body:not(.rtl) .elementor-140 .elementor-element.elementor-element-4f1ae289 .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item:after {
            right: calc(-8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-4f1ae289 .elementor-icon-list-icon i {
            transition: color 0.3s;
        }

        .elementor-140 .elementor-element.elementor-element-4f1ae289 .elementor-icon-list-icon svg {
            transition: fill 0.3s;
        }

        .elementor-140 .elementor-element.elementor-element-4f1ae289 {
            --e-icon-list-icon-size: 6px;
            --icon-vertical-align: center;
            --icon-vertical-offset: 0px;
        }

            .elementor-140 .elementor-element.elementor-element-4f1ae289 .elementor-icon-list-icon {
                padding-left: 8px;
            }

            .elementor-140 .elementor-element.elementor-element-4f1ae289 .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-4f1ae289 .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-509bb16-font-size );
                font-weight: var( --e-global-typography-509bb16-font-weight );
                font-style: var( --e-global-typography-509bb16-font-style );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-4f1ae289 .elementor-icon-list-text {
                color: #FFFFFF;
                transition: color 0.3s;
            }

        .elementor-140 .elementor-element.elementor-element-33c23b60 .elementor-icon-list-items:not(.elementor-inline-items) .elementor-icon-list-item:not(:last-child) {
            padding-bottom: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-33c23b60 .elementor-icon-list-items:not(.elementor-inline-items) .elementor-icon-list-item:not(:first-child) {
            margin-top: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-33c23b60 .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item {
            margin-right: calc(8px/2);
            margin-left: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-33c23b60 .elementor-icon-list-items.elementor-inline-items {
            margin-right: calc(-8px/2);
            margin-left: calc(-8px/2);
        }

        body.rtl .elementor-140 .elementor-element.elementor-element-33c23b60 .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item:after {
            left: calc(-8px/2);
        }

        body:not(.rtl) .elementor-140 .elementor-element.elementor-element-33c23b60 .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item:after {
            right: calc(-8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-33c23b60 .elementor-icon-list-icon i {
            transition: color 0.3s;
        }

        .elementor-140 .elementor-element.elementor-element-33c23b60 .elementor-icon-list-icon svg {
            transition: fill 0.3s;
        }

        .elementor-140 .elementor-element.elementor-element-33c23b60 {
            --e-icon-list-icon-size: 14px;
            --icon-vertical-offset: 0px;
        }

            .elementor-140 .elementor-element.elementor-element-33c23b60 .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-33c23b60 .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-8efc932-font-size );
                font-weight: var( --e-global-typography-8efc932-font-weight );
                font-style: var( --e-global-typography-8efc932-font-style );
                line-height: var( --e-global-typography-8efc932-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-33c23b60 .elementor-icon-list-text {
                color: var( --e-global-color-1bebc8f );
                transition: color 0.3s;
            }

        .elementor-140 .elementor-element.elementor-element-1bdb3e90 {
            --display: flex;
            --flex-direction: column;
            --container-widget-width: 100%;
            --container-widget-height: initial;
            --container-widget-flex-grow: 0;
            --container-widget-align-self: initial;
            --flex-wrap-mobile: wrap;
            --gap: 8.5px 8.5px;
            --background-transition: 0.3s;
            --margin-top: 0px;
            --margin-bottom: 0px;
            --margin-left: 0px;
            --margin-right: 0px;
            --padding-top: 0px;
            --padding-bottom: 0px;
            --padding-left: 0px;
            --padding-right: 0px;
        }

        .elementor-140 .elementor-element.elementor-element-c10a16a .elementor-icon-list-items:not(.elementor-inline-items) .elementor-icon-list-item:not(:last-child) {
            padding-bottom: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-c10a16a .elementor-icon-list-items:not(.elementor-inline-items) .elementor-icon-list-item:not(:first-child) {
            margin-top: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-c10a16a .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item {
            margin-right: calc(8px/2);
            margin-left: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-c10a16a .elementor-icon-list-items.elementor-inline-items {
            margin-right: calc(-8px/2);
            margin-left: calc(-8px/2);
        }

        body.rtl .elementor-140 .elementor-element.elementor-element-c10a16a .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item:after {
            left: calc(-8px/2);
        }

        body:not(.rtl) .elementor-140 .elementor-element.elementor-element-c10a16a .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item:after {
            right: calc(-8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-c10a16a .elementor-icon-list-icon i {
            transition: color 0.3s;
        }

        .elementor-140 .elementor-element.elementor-element-c10a16a .elementor-icon-list-icon svg {
            transition: fill 0.3s;
        }

        .elementor-140 .elementor-element.elementor-element-c10a16a {
            --e-icon-list-icon-size: 6px;
            --icon-vertical-align: center;
            --icon-vertical-offset: 0px;
        }

            .elementor-140 .elementor-element.elementor-element-c10a16a .elementor-icon-list-icon {
                padding-left: 8px;
            }

            .elementor-140 .elementor-element.elementor-element-c10a16a .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-c10a16a .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-509bb16-font-size );
                font-weight: var( --e-global-typography-509bb16-font-weight );
                font-style: var( --e-global-typography-509bb16-font-style );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-c10a16a .elementor-icon-list-text {
                color: #FFFFFF;
                transition: color 0.3s;
            }

        .elementor-140 .elementor-element.elementor-element-10b3a503 .elementor-icon-list-items:not(.elementor-inline-items) .elementor-icon-list-item:not(:last-child) {
            padding-bottom: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-10b3a503 .elementor-icon-list-items:not(.elementor-inline-items) .elementor-icon-list-item:not(:first-child) {
            margin-top: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-10b3a503 .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item {
            margin-right: calc(8px/2);
            margin-left: calc(8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-10b3a503 .elementor-icon-list-items.elementor-inline-items {
            margin-right: calc(-8px/2);
            margin-left: calc(-8px/2);
        }

        body.rtl .elementor-140 .elementor-element.elementor-element-10b3a503 .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item:after {
            left: calc(-8px/2);
        }

        body:not(.rtl) .elementor-140 .elementor-element.elementor-element-10b3a503 .elementor-icon-list-items.elementor-inline-items .elementor-icon-list-item:after {
            right: calc(-8px/2);
        }

        .elementor-140 .elementor-element.elementor-element-10b3a503 .elementor-icon-list-icon i {
            transition: color 0.3s;
        }

        .elementor-140 .elementor-element.elementor-element-10b3a503 .elementor-icon-list-icon svg {
            transition: fill 0.3s;
        }

        .elementor-140 .elementor-element.elementor-element-10b3a503 {
            --e-icon-list-icon-size: 14px;
            --icon-vertical-offset: 0px;
        }

            .elementor-140 .elementor-element.elementor-element-10b3a503 .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-10b3a503 .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-8efc932-font-size );
                font-weight: var( --e-global-typography-8efc932-font-weight );
                font-style: var( --e-global-typography-8efc932-font-style );
                line-height: var( --e-global-typography-8efc932-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-10b3a503 .elementor-icon-list-text {
                color: var( --e-global-color-1bebc8f );
                transition: color 0.3s;
            }

        .elementor-140 .elementor-element.elementor-element-374f805c {
            --display: flex;
            --flex-direction: column;
            --container-widget-width: 100%;
            --container-widget-height: initial;
            --container-widget-flex-grow: 0;
            --container-widget-align-self: initial;
            --flex-wrap-mobile: wrap;
            --justify-content: center;
            --gap: 0px 0px;
            --background-transition: 0.3s;
            --border-radius: 24px 24px 24px 24px;
            --padding-top: 32px;
            --padding-bottom: 24px;
            --padding-left: 24px;
            --padding-right: 24px;
        }

            .elementor-140 .elementor-element.elementor-element-374f805c:not(.elementor-motion-effects-element-type-background), .elementor-140 .elementor-element.elementor-element-374f805c > .elementor-motion-effects-container > .elementor-motion-effects-layer {
                background-color: var( --e-global-color-1bebc8f );
            }

            .elementor-140 .elementor-element.elementor-element-374f805c, .elementor-140 .elementor-element.elementor-element-374f805c::before {
                --border-transition: 0.3s;
            }

        .elementor-140 .elementor-element.elementor-element-60b9ad7 {
            --display: flex;
            --background-transition: 0.3s;
            --padding-top: 0px;
            --padding-bottom: 0px;
            --padding-left: 0px;
            --padding-right: 0px;
        }

        .elementor-140 .elementor-element.elementor-element-2edbd950 .elementor-heading-title {
            color: var( --e-global-color-46c853a );
            font-size: var( --e-global-typography-2397996-font-size );
            font-weight: var( --e-global-typography-2397996-font-weight );
            font-style: var( --e-global-typography-2397996-font-style );
            line-height: var( --e-global-typography-2397996-line-height );
        }

        .elementor-140 .elementor-element.elementor-element-1a007652 {
            --display: flex;
            --flex-direction: column;
            --container-widget-width: 100%;
            --container-widget-height: initial;
            --container-widget-flex-grow: 0;
            --container-widget-align-self: initial;
            --flex-wrap-mobile: wrap;
            --gap: 0px 0px;
            --background-transition: 0.3s;
            --margin-top: 17px;
            --margin-bottom: 0px;
            --margin-left: 0px;
            --margin-right: 0px;
            --padding-top: 0px;
            --padding-bottom: 0px;
            --padding-left: 0px;
            --padding-right: 0px;
        }

        .elementor-140 .elementor-element.elementor-element-75942c28 .elementor-icon-box-wrapper {
            text-align: right;
        }

        .elementor-140 .elementor-element.elementor-element-75942c28 {
            --icon-box-icon-margin: 3px;
        }

            .elementor-140 .elementor-element.elementor-element-75942c28 .elementor-icon {
                font-size: 16px;
            }

            .elementor-140 .elementor-element.elementor-element-75942c28 .elementor-icon-box-title {
                color: var( --e-global-color-96ac8f1 );
            }

                .elementor-140 .elementor-element.elementor-element-75942c28 .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-75942c28 .elementor-icon-box-title a {
                    font-size: var( --e-global-typography-509bb16-font-size );
                    font-weight: var( --e-global-typography-509bb16-font-weight );
                    font-style: var( --e-global-typography-509bb16-font-style );
                    line-height: var( --e-global-typography-509bb16-line-height );
                }

        .elementor-widget-divider {
            --divider-color: var( --e-global-color-secondary );
        }

            .elementor-widget-divider .elementor-divider__text {
                color: var( --e-global-color-secondary );
            }

            .elementor-widget-divider.elementor-view-stacked .elementor-icon {
                background-color: var( --e-global-color-secondary );
            }

            .elementor-widget-divider.elementor-view-framed .elementor-icon, .elementor-widget-divider.elementor-view-default .elementor-icon {
                color: var( --e-global-color-secondary );
                border-color: var( --e-global-color-secondary );
            }

                .elementor-widget-divider.elementor-view-framed .elementor-icon, .elementor-widget-divider.elementor-view-default .elementor-icon svg {
                    fill: var( --e-global-color-secondary );
                }

        .elementor-140 .elementor-element.elementor-element-c442131 {
            --divider-border-style: solid;
            --divider-color: var( --e-global-color-a000609 );
            --divider-border-width: 0.5px;
        }

            .elementor-140 .elementor-element.elementor-element-c442131 > .elementor-widget-container {
                margin: 19px 0px 21px 0px;
            }

            .elementor-140 .elementor-element.elementor-element-c442131 .elementor-divider-separator {
                width: 100%;
            }

            .elementor-140 .elementor-element.elementor-element-c442131 .elementor-divider {
                padding-block-start: 0px;
                padding-block-end: 0px;
            }

        .elementor-140 .elementor-element.elementor-element-58f6d159 .elementor-icon-box-wrapper {
            text-align: right;
        }

        .elementor-140 .elementor-element.elementor-element-58f6d159 {
            --icon-box-icon-margin: 0px;
        }

            .elementor-140 .elementor-element.elementor-element-58f6d159 .elementor-icon {
                font-size: 16px;
            }

            .elementor-140 .elementor-element.elementor-element-58f6d159 .elementor-icon-box-title {
                color: var( --e-global-color-96ac8f1 );
            }

                .elementor-140 .elementor-element.elementor-element-58f6d159 .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-58f6d159 .elementor-icon-box-title a {
                    font-size: var( --e-global-typography-509bb16-font-size );
                    font-weight: var( --e-global-typography-509bb16-font-weight );
                    font-style: var( --e-global-typography-509bb16-font-style );
                    line-height: var( --e-global-typography-509bb16-line-height );
                }

        .elementor-140 .elementor-element.elementor-element-3cfa46c {
            --divider-border-style: solid;
            --divider-color: var( --e-global-color-a000609 );
            --divider-border-width: 0.5px;
        }

            .elementor-140 .elementor-element.elementor-element-3cfa46c > .elementor-widget-container {
                margin: 16px 0px 12px 0px;
            }

            .elementor-140 .elementor-element.elementor-element-3cfa46c .elementor-divider-separator {
                width: 100%;
            }

            .elementor-140 .elementor-element.elementor-element-3cfa46c .elementor-divider {
                padding-block-start: 0px;
                padding-block-end: 0px;
            }

        .elementor-140 .elementor-element.elementor-element-1ba84632 .elementor-icon-box-wrapper {
            text-align: right;
        }

        .elementor-140 .elementor-element.elementor-element-1ba84632 {
            --icon-box-icon-margin: 25px;
        }

            .elementor-140 .elementor-element.elementor-element-1ba84632 .elementor-icon {
                font-size: 16px;
            }

            .elementor-140 .elementor-element.elementor-element-1ba84632 .elementor-icon-box-title {
                color: var( --e-global-color-96ac8f1 );
            }

                .elementor-140 .elementor-element.elementor-element-1ba84632 .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-1ba84632 .elementor-icon-box-title a {
                    font-size: var( --e-global-typography-509bb16-font-size );
                    font-weight: var( --e-global-typography-509bb16-font-weight );
                    font-style: var( --e-global-typography-509bb16-font-style );
                    line-height: var( --e-global-typography-509bb16-line-height );
                }

        .elementor-140 .elementor-element.elementor-element-bd247ec {
            --divider-border-style: solid;
            --divider-color: var( --e-global-color-a000609 );
            --divider-border-width: 0.5px;
        }

            .elementor-140 .elementor-element.elementor-element-bd247ec > .elementor-widget-container {
                margin: 16px 0px 19px 0px;
            }

            .elementor-140 .elementor-element.elementor-element-bd247ec .elementor-divider-separator {
                width: 100%;
            }

            .elementor-140 .elementor-element.elementor-element-bd247ec .elementor-divider {
                padding-block-start: 0px;
                padding-block-end: 0px;
            }

        .elementor-140 .elementor-element.elementor-element-52ef9d79 .elementor-icon-box-wrapper {
            text-align: right;
        }

        .elementor-140 .elementor-element.elementor-element-52ef9d79 {
            --icon-box-icon-margin: 60px;
        }

            .elementor-140 .elementor-element.elementor-element-52ef9d79 .elementor-icon {
                font-size: 16px;
            }

            .elementor-140 .elementor-element.elementor-element-52ef9d79 .elementor-icon-box-title {
                color: var( --e-global-color-96ac8f1 );
            }

                .elementor-140 .elementor-element.elementor-element-52ef9d79 .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-52ef9d79 .elementor-icon-box-title a {
                    font-size: var( --e-global-typography-509bb16-font-size );
                    font-weight: var( --e-global-typography-509bb16-font-weight );
                    font-style: var( --e-global-typography-509bb16-font-style );
                    line-height: var( --e-global-typography-509bb16-line-height );
                }

        .elementor-140 .elementor-element.elementor-element-3e734981 {
            --display: flex;
            --flex-direction: row;
            --container-widget-width: initial;
            --container-widget-height: 100%;
            --container-widget-flex-grow: 1;
            --container-widget-align-self: stretch;
            --flex-wrap-mobile: wrap;
            --justify-content: center;
            --gap: 20px 20px;
            --background-transition: 0.3s;
            --border-radius: 9px 9px 9px 9px;
            --margin-top: 8px;
            --margin-bottom: 0px;
            --margin-left: 0px;
            --margin-right: 0px;
            --padding-top: 16px;
            --padding-bottom: 16px;
            --padding-left: 36px;
            --padding-right: 36px;
        }

            .elementor-140 .elementor-element.elementor-element-3e734981:not(.elementor-motion-effects-element-type-background), .elementor-140 .elementor-element.elementor-element-3e734981 > .elementor-motion-effects-container > .elementor-motion-effects-layer {
                background-color: var( --e-global-color-b1ab2af );
            }

            .elementor-140 .elementor-element.elementor-element-3e734981, .elementor-140 .elementor-element.elementor-element-3e734981::before {
                --border-transition: 0.3s;
            }

        .elementor-widget-icon.elementor-view-stacked .elementor-icon {
            background-color: var( --e-global-color-primary );
        }

        .elementor-widget-icon.elementor-view-framed .elementor-icon, .elementor-widget-icon.elementor-view-default .elementor-icon {
            color: var( --e-global-color-primary );
            border-color: var( --e-global-color-primary );
        }

            .elementor-widget-icon.elementor-view-framed .elementor-icon, .elementor-widget-icon.elementor-view-default .elementor-icon svg {
                fill: var( --e-global-color-primary );
            }

        .elementor-140 .elementor-element.elementor-element-6ea577aa .elementor-icon-wrapper {
            text-align: center;
        }

        .elementor-140 .elementor-element.elementor-element-6ea577aa.elementor-view-stacked .elementor-icon {
            background-color: #FFFFFF;
        }

        .elementor-140 .elementor-element.elementor-element-6ea577aa.elementor-view-framed .elementor-icon, .elementor-140 .elementor-element.elementor-element-6ea577aa.elementor-view-default .elementor-icon {
            color: #FFFFFF;
            border-color: #FFFFFF;
        }

            .elementor-140 .elementor-element.elementor-element-6ea577aa.elementor-view-framed .elementor-icon, .elementor-140 .elementor-element.elementor-element-6ea577aa.elementor-view-default .elementor-icon svg {
                fill: #FFFFFF;
            }

        .elementor-140 .elementor-element.elementor-element-6ea577aa .elementor-icon {
            font-size: 16px;
        }

            .elementor-140 .elementor-element.elementor-element-6ea577aa .elementor-icon svg {
                height: 16px;
            }

        .elementor-140 .elementor-element.elementor-element-3b23054e .elementor-icon-wrapper {
            text-align: center;
        }

        .elementor-140 .elementor-element.elementor-element-3b23054e.elementor-view-stacked .elementor-icon {
            background-color: #FFFFFF;
        }

        .elementor-140 .elementor-element.elementor-element-3b23054e.elementor-view-framed .elementor-icon, .elementor-140 .elementor-element.elementor-element-3b23054e.elementor-view-default .elementor-icon {
            color: #FFFFFF;
            border-color: #FFFFFF;
        }

            .elementor-140 .elementor-element.elementor-element-3b23054e.elementor-view-framed .elementor-icon, .elementor-140 .elementor-element.elementor-element-3b23054e.elementor-view-default .elementor-icon svg {
                fill: #FFFFFF;
            }

        .elementor-140 .elementor-element.elementor-element-3b23054e .elementor-icon {
            font-size: 16px;
        }

            .elementor-140 .elementor-element.elementor-element-3b23054e .elementor-icon svg {
                height: 16px;
            }

        .elementor-140 .elementor-element.elementor-element-14bef5dd .elementor-icon-wrapper {
            text-align: center;
        }

        .elementor-140 .elementor-element.elementor-element-14bef5dd.elementor-view-stacked .elementor-icon {
            background-color: #FFFFFF;
        }

        .elementor-140 .elementor-element.elementor-element-14bef5dd.elementor-view-framed .elementor-icon, .elementor-140 .elementor-element.elementor-element-14bef5dd.elementor-view-default .elementor-icon {
            color: #FFFFFF;
            border-color: #FFFFFF;
        }

            .elementor-140 .elementor-element.elementor-element-14bef5dd.elementor-view-framed .elementor-icon, .elementor-140 .elementor-element.elementor-element-14bef5dd.elementor-view-default .elementor-icon svg {
                fill: #FFFFFF;
            }

        .elementor-140 .elementor-element.elementor-element-14bef5dd .elementor-icon {
            font-size: 16px;
        }

            .elementor-140 .elementor-element.elementor-element-14bef5dd .elementor-icon svg {
                height: 16px;
            }

        .elementor-140 .elementor-element.elementor-element-449488e6 .elementor-icon-wrapper {
            text-align: center;
        }

        .elementor-140 .elementor-element.elementor-element-449488e6.elementor-view-stacked .elementor-icon {
            background-color: #FFFFFF;
        }

        .elementor-140 .elementor-element.elementor-element-449488e6.elementor-view-framed .elementor-icon, .elementor-140 .elementor-element.elementor-element-449488e6.elementor-view-default .elementor-icon {
            color: #FFFFFF;
            border-color: #FFFFFF;
        }

            .elementor-140 .elementor-element.elementor-element-449488e6.elementor-view-framed .elementor-icon, .elementor-140 .elementor-element.elementor-element-449488e6.elementor-view-default .elementor-icon svg {
                fill: #FFFFFF;
            }

        .elementor-140 .elementor-element.elementor-element-449488e6 .elementor-icon {
            font-size: 16px;
        }

            .elementor-140 .elementor-element.elementor-element-449488e6 .elementor-icon svg {
                height: 16px;
            }

        .elementor-140 .elementor-element.elementor-element-183eb402 .elementor-icon-wrapper {
            text-align: center;
        }

        .elementor-140 .elementor-element.elementor-element-183eb402.elementor-view-stacked .elementor-icon {
            background-color: #FFFFFF;
        }

        .elementor-140 .elementor-element.elementor-element-183eb402.elementor-view-framed .elementor-icon, .elementor-140 .elementor-element.elementor-element-183eb402.elementor-view-default .elementor-icon {
            color: #FFFFFF;
            border-color: #FFFFFF;
        }

            .elementor-140 .elementor-element.elementor-element-183eb402.elementor-view-framed .elementor-icon, .elementor-140 .elementor-element.elementor-element-183eb402.elementor-view-default .elementor-icon svg {
                fill: #FFFFFF;
            }

        .elementor-140 .elementor-element.elementor-element-183eb402 .elementor-icon {
            font-size: 16px;
        }

            .elementor-140 .elementor-element.elementor-element-183eb402 .elementor-icon svg {
                height: 16px;
            }

        .elementor-140 .elementor-element.elementor-element-7060e693 {
            --divider-border-style: solid;
            --divider-color: #A3C1E0;
            --divider-border-width: 1px;
        }

            .elementor-140 .elementor-element.elementor-element-7060e693 > .elementor-widget-container {
                margin: 38px 0px 29px 0px;
            }

            .elementor-140 .elementor-element.elementor-element-7060e693 .elementor-divider-separator {
                width: 100%;
            }

            .elementor-140 .elementor-element.elementor-element-7060e693 .elementor-divider {
                padding-block-start: 0px;
                padding-block-end: 0px;
            }

        .elementor-140 .elementor-element.elementor-element-36225f2f {
            --display: flex;
            --flex-direction: row;
            --container-widget-width: initial;
            --container-widget-height: 100%;
            --container-widget-flex-grow: 1;
            --container-widget-align-self: stretch;
            --flex-wrap-mobile: wrap;
            --justify-content: space-between;
            --flex-wrap: wrap;
            --background-transition: 0.3s;
            --margin-top: 0px;
            --margin-bottom: 52px;
            --margin-left: 0px;
            --margin-right: 0px;
            --padding-top: 0px;
            --padding-bottom: 0px;
            --padding-left: 0px;
            --padding-right: 0px;
        }

        .elementor-140 .elementor-element.elementor-element-47446f75 .elementor-icon-box-wrapper {
            text-align: right;
        }

        .elementor-140 .elementor-element.elementor-element-47446f75 {
            --icon-box-icon-margin: 16px;
        }

            .elementor-140 .elementor-element.elementor-element-47446f75 .elementor-icon {
                font-size: 16px;
            }

            .elementor-140 .elementor-element.elementor-element-47446f75 .elementor-icon-box-title {
                color: #FFFFFF;
            }

                .elementor-140 .elementor-element.elementor-element-47446f75 .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-47446f75 .elementor-icon-box-title a {
                    font-size: var( --e-global-typography-8efc932-font-size );
                    font-weight: var( --e-global-typography-8efc932-font-weight );
                    font-style: var( --e-global-typography-8efc932-font-style );
                    line-height: var( --e-global-typography-8efc932-line-height );
                }

        .elementor-140 .elementor-element.elementor-element-17f5c29a {
            color: #F5F8FC;
            font-size: var( --e-global-typography-8efc932-font-size );
            font-weight: var( --e-global-typography-8efc932-font-weight );
            font-style: var( --e-global-typography-8efc932-font-style );
            line-height: var( --e-global-typography-8efc932-line-height );
        }

        .elementor-theme-builder-content-area {
            height: 400px;
        }

        .elementor-location-header:before, .elementor-location-footer:before {
            content: "";
            display: table;
            clear: both;
        }

        @media(min-width:768px) {
            .elementor-140 .elementor-element.elementor-element-4f864aa9 {
                --width: 162px;
            }

            .elementor-140 .elementor-element.elementor-element-69ecef7c {
                --width: 40%;
            }

            .elementor-140 .elementor-element.elementor-element-4f6dc316 {
                --width: 36%;
            }

            .elementor-140 .elementor-element.elementor-element-22efbd37 {
                --width: 50%;
            }

            .elementor-140 .elementor-element.elementor-element-28cc5177 {
                --width: 50%;
            }

            .elementor-140 .elementor-element.elementor-element-2ec2c408 {
                --width: 50%;
            }

            .elementor-140 .elementor-element.elementor-element-1bdb3e90 {
                --width: 50%;
            }

            .elementor-140 .elementor-element.elementor-element-374f805c {
                --width: 24%;
            }
        }

        @media(max-width:1024px) and (min-width:768px) {
            .elementor-140 .elementor-element.elementor-element-1aba4b1d {
                --content-width: 95%;
            }

            .elementor-140 .elementor-element.elementor-element-69ecef7c {
                --width: 100%;
            }

            .elementor-140 .elementor-element.elementor-element-4f6dc316 {
                --width: 100%;
            }

            .elementor-140 .elementor-element.elementor-element-22efbd37 {
                --width: 25%;
            }

            .elementor-140 .elementor-element.elementor-element-28cc5177 {
                --width: 25%;
            }

            .elementor-140 .elementor-element.elementor-element-2ec2c408 {
                --width: 25%;
            }

            .elementor-140 .elementor-element.elementor-element-1bdb3e90 {
                --width: 25%;
            }

            .elementor-140 .elementor-element.elementor-element-374f805c {
                --width: 100%;
            }

            .elementor-140 .elementor-element.elementor-element-36225f2f {
                --content-width: 95%;
            }
        }

        @media(max-width:1024px) {
            .elementor-140 .elementor-element.elementor-element-4b112bec {
                --justify-content: center;
            }

            .elementor-140 .elementor-element.elementor-element-1aba4b1d {
                --justify-content: center;
                --flex-wrap: wrap;
            }

            .elementor-140 .elementor-element.elementor-element-52b2ac44 .elementor-heading-title {
                font-size: var( --e-global-typography-c40b55f-font-size );
                line-height: var( --e-global-typography-c40b55f-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-1a7258b1 .elementor-heading-title {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-3f027a92 .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-3f027a92 .elementor-icon-box-title a {
                font-size: var( --e-global-typography-6401247-font-size );
                line-height: var( --e-global-typography-6401247-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-be5bb6c .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-be5bb6c .elementor-icon-box-title a {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-516903d input {
                font-size: var( --e-global-typography-8efc932-font-size );
                line-height: var( --e-global-typography-8efc932-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-516903d button {
                font-size: var( --e-global-typography-2397996-font-size );
                line-height: var( --e-global-typography-2397996-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-4f6dc316 {
                --flex-wrap: wrap;
                --margin-top: 043px;
                --margin-bottom: 0px;
                --margin-left: 0px;
                --margin-right: 0px;
                --padding-top: 0px;
                --padding-bottom: 0px;
                --padding-left: 0px;
                --padding-right: 0px;
            }

            .elementor-140 .elementor-element.elementor-element-4e20b030 .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-4e20b030 .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-512088aa .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-512088aa .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-8efc932-font-size );
                line-height: var( --e-global-typography-8efc932-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-72d23f0f .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-72d23f0f .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-1cb7faaa .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-1cb7faaa .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-8efc932-font-size );
                line-height: var( --e-global-typography-8efc932-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-4f1ae289 .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-4f1ae289 .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-33c23b60 .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-33c23b60 .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-8efc932-font-size );
                line-height: var( --e-global-typography-8efc932-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-c10a16a .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-c10a16a .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-10b3a503 .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-10b3a503 .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-8efc932-font-size );
                line-height: var( --e-global-typography-8efc932-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-374f805c {
                --justify-content: center;
                --margin-top: 40px;
                --margin-bottom: 0px;
                --margin-left: 0px;
                --margin-right: 0px;
            }

                .elementor-140 .elementor-element.elementor-element-374f805c.e-con {
                    --flex-grow: 1;
                    --flex-shrink: 0;
                }

            .elementor-140 .elementor-element.elementor-element-2edbd950 .elementor-heading-title {
                font-size: var( --e-global-typography-2397996-font-size );
                line-height: var( --e-global-typography-2397996-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-75942c28 .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-75942c28 .elementor-icon-box-title a {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-58f6d159 .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-58f6d159 .elementor-icon-box-title a {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-1ba84632 .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-1ba84632 .elementor-icon-box-title a {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-52ef9d79 .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-52ef9d79 .elementor-icon-box-title a {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-7060e693 > .elementor-widget-container {
                margin: 32px 0px 16px 0px;
            }

            .elementor-140 .elementor-element.elementor-element-7060e693 .elementor-divider-separator {
                width: 95%;
                margin: 0 auto;
                margin-center: 0;
            }

            .elementor-140 .elementor-element.elementor-element-7060e693 .elementor-divider {
                text-align: center;
            }

            .elementor-140 .elementor-element.elementor-element-36225f2f {
                --justify-content: center;
            }

            .elementor-140 .elementor-element.elementor-element-47446f75 .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-47446f75 .elementor-icon-box-title a {
                font-size: var( --e-global-typography-8efc932-font-size );
                line-height: var( --e-global-typography-8efc932-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-17f5c29a {
                font-size: var( --e-global-typography-8efc932-font-size );
                line-height: var( --e-global-typography-8efc932-line-height );
            }
        }

        @media(max-width:767px) {
            .elementor-140 .elementor-element.elementor-element-1aba4b1d {
                --content-width: 95%;
            }

            .elementor-140 .elementor-element.elementor-element-52b2ac44 .elementor-heading-title {
                font-size: var( --e-global-typography-c40b55f-font-size );
                line-height: var( --e-global-typography-c40b55f-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-1a7258b1 .elementor-heading-title {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-3f027a92 .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-3f027a92 .elementor-icon-box-title a {
                font-size: var( --e-global-typography-6401247-font-size );
                line-height: var( --e-global-typography-6401247-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-be5bb6c .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-be5bb6c .elementor-icon-box-title a {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-516903d input {
                font-size: var( --e-global-typography-8efc932-font-size );
                line-height: var( --e-global-typography-8efc932-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-516903d button {
                font-size: var( --e-global-typography-2397996-font-size );
                line-height: var( --e-global-typography-2397996-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-22efbd37 {
                --width: 50%;
            }

            .elementor-140 .elementor-element.elementor-element-4e20b030 .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-4e20b030 .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-512088aa .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-512088aa .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-8efc932-font-size );
                line-height: var( --e-global-typography-8efc932-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-28cc5177 {
                --width: 50%;
            }

            .elementor-140 .elementor-element.elementor-element-72d23f0f .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-72d23f0f .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-1cb7faaa .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-1cb7faaa .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-8efc932-font-size );
                line-height: var( --e-global-typography-8efc932-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-2ec2c408 {
                --width: 50%;
            }

            .elementor-140 .elementor-element.elementor-element-4f1ae289 .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-4f1ae289 .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-33c23b60 .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-33c23b60 .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-8efc932-font-size );
                line-height: var( --e-global-typography-8efc932-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-1bdb3e90 {
                --width: 50%;
            }

            .elementor-140 .elementor-element.elementor-element-c10a16a .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-c10a16a .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-10b3a503 .elementor-icon-list-item > .elementor-icon-list-text, .elementor-140 .elementor-element.elementor-element-10b3a503 .elementor-icon-list-item > a {
                font-size: var( --e-global-typography-8efc932-font-size );
                line-height: var( --e-global-typography-8efc932-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-2edbd950 .elementor-heading-title {
                font-size: var( --e-global-typography-2397996-font-size );
                line-height: var( --e-global-typography-2397996-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-75942c28 .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-75942c28 .elementor-icon-box-title a {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-58f6d159 .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-58f6d159 .elementor-icon-box-title a {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-1ba84632 .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-1ba84632 .elementor-icon-box-title a {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-52ef9d79 .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-52ef9d79 .elementor-icon-box-title a {
                font-size: var( --e-global-typography-509bb16-font-size );
                line-height: var( --e-global-typography-509bb16-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-36225f2f {
                --content-width: 95%;
                --margin-top: 0px;
                --margin-bottom: 32px;
                --margin-left: 0px;
                --margin-right: 0px;
            }

            .elementor-140 .elementor-element.elementor-element-47446f75 .elementor-icon-box-title, .elementor-140 .elementor-element.elementor-element-47446f75 .elementor-icon-box-title a {
                font-size: var( --e-global-typography-8efc932-font-size );
                line-height: var( --e-global-typography-8efc932-line-height );
            }

            .elementor-140 .elementor-element.elementor-element-17f5c29a {
                font-size: var( --e-global-typography-8efc932-font-size );
                line-height: var( --e-global-typography-8efc932-line-height );
            }
        }
    </style>

</asp:Content>
