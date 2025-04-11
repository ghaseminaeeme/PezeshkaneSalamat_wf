<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DoctorDetail.aspx.cs" Inherits="pezeshkaneSalamat_wf.DoctorDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <main>

        <div data-elementor-type="single-post" data-elementor-id="1215" class="elementor elementor-1215 pzy-loop-item post-131 pzy_staff type-pzy_staff status-publish has-post-thumbnail hentry pzy_service-31 pzy_service-25 pzy_service-24 pzy_service-22 pzy_service-28" data-elementor-post-type="elementor_library">
            <div class="elementor-element elementor-element-86ee549 e-flex e-con-boxed e-con e-parent" data-id="86ee549" data-element_type="container">
                <div class="e-con-inner">
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

                    <!-- ############## Gallery ############### -->
                    <%-- <div class="elementor-element elementor-element-daa6e28 elementor-widget elementor-widget-pzy_staff_gallery" data-id="daa6e28" data-element_type="widget">
                        <div class="elementor-widget-container">
                            <div class='pzy-gallery pzy-staff-gallery pzy-d-flex pzy-flex-column-reverse-nowrap'>
                                <div class='pzy-thumbnail-gallery'>
                                    <div class='swiper custom-init swiper-container'>
                                        <div class='swiper-wrapper'>

                                            <asp:Repeater ID="RepeaterGallery" runat="server" DataSourceID="SqlImages">
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
                                        <%-- <div class="progile-img">
                                            <img src='<%#Eval("dImg") %>' alt='<%#Eval("dName") %>' loading='lazy' />
                                        </div>--%>


                                        <div id="imageSlider" class="slider-wrapper">
                                            <asp:Repeater ID="RepeaterGallery" runat="server" DataSourceID="SqlImages">
                                                <ItemTemplate>
                                                    <div class="slide">
                                                        <img src='<%# Eval("pic") %>' alt='<%# Eval("title") %>' loading='lazy' />
                                                    </div>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>

                                        <!-- Slider controls -->
                                        <div class="slider-controls">
                                            <a onclick="prevSlide()">&#10094;</a>
                                            <a onclick="nextSlide()">&#10095;</a>
                                        </div>


                                    </div>
                                </div>
                            </div>


                            <script>
                                let currentSlide = 0;
                                let slides;

                                function showSlide(index) {
                                    slides = document.querySelectorAll('.slide');
                                    if (index >= slides.length) currentSlide = 0;
                                    else if (index < 0) currentSlide = slides.length - 1;
                                    else currentSlide = index;

                                    slides.forEach((slide, i) => {
                                        slide.style.display = (i === currentSlide) ? 'block' : 'none';
                                    });
                                }

                                function nextSlide() {
                                    showSlide(currentSlide + 1);
                                }

                                function prevSlide() {
                                    showSlide(currentSlide - 1);
                                }

                                // Auto slide every 4 seconds
                                setInterval(() => {
                                    nextSlide();
                                }, 4000);

                                // Initialize after page load
                                window.onload = function () {
                                    showSlide(0);
                                };
                            </script>



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
                                                        <clippath id="clip0_1422_4282">
                                                            <rect width="24" height="24" fill="white" />
                                                        </clippath>
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

                                            <button class="pzy-staff-consultation-request" data-staff-name="<%#Eval("dName") %>">
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


            <div class="elementor-element elementor-element-9593b8b mobile-full-container e-flex e-con-boxed e-con e-parent" id="reserve">
                <div class="e-con-inner">
                    <div class="elementor-element elementor-element-cc9b7a3 e-con-full e-flex e-con e-child">
                        <div class="elementor-element elementor-element-a46c926 elementor-widget elementor-widget-pzy_staffs_schedule">
                            <div class="elementor-widget-container">
                                <div class="pzy-staffs-schedule-box no-gap">
                                    <div class="pzy-staffs-schedule-header">
                                        <div class="pzy-staffs-schedules-title">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="21" height="22" viewBox="0 0 21 22" fill="none">
                                                <g id="clock">
                                                    <path id="Icon" d="M10.5 6.06152V11.3115L14 13.0615M19.25 11.3115C19.25 16.144 15.3325 20.0615 10.5 20.0615C5.66751 20.0615 1.75 16.144 1.75 11.3115C1.75 6.47903 5.66751 2.56152 10.5 2.56152C15.3325 2.56152 19.25 6.47903 19.25 11.3115Z" stroke="#0052A8" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                </g></svg>
                                            <p class="pzy-staffs-schedules-title-text">جدول نوبت های دکتر  </p>
                                        </div>

                                    </div>



                                    <!-- ========= Appointment ======== -->
                                    <asp:Label ID="lblNoDatesMessage" runat="server"
                                        Text="برای این پزشک هنوز زمان‌بندی نوبت ثبت نشده است."
                                        CssClass="no-dates-message"
                                        Visible="false" />

                                    <div class="elementor-element elementor-element-955b188 elementor-widget__width-initial elementor-widget elementor-widget-pzy_links_slider">
                                        <div class="elementor-widget-container">
                                            <asp:UpdatePanel ID="UpdatePanelAppointment" runat="server">
                                                <ContentTemplate>

                                                    <div class="pzy-links-slider">
                                                        <div class="slider-wrapper" style="height: 100%">

                                                            <div class="swiper mySwiper swiper-initialized swiper-horizontal swiper-rtl swiper-backface-hidden swiper-pagination-disabled">
                                                                <div class="swiper-wrapper">
                                                                    <asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="Repeater1_ItemDataBound" OnItemCommand="Repeater1_ItemCommand">
                                                                        <ItemTemplate>
                                                                            <div class="swiper-slide pzy-auto-width">
                                                                                <asp:LinkButton ID="btnDate" runat="server" CssClass="pzy-service-name"
                                                                                    CommandName="SelectDate"
                                                                                    CommandArgument='<%# Eval("AppointmentDate", "{0:yyyy-MM-dd}") %>'
                                                                                    CausesValidation="false"
                                                                                    UseSubmitBehavior="false"> <%# Eval("AppointmentDate", "{0:yyyy-MM-dd}") %> </asp:LinkButton>
                                                                            </div>
                                                                            <asp:HiddenField ID="HiddenField1" runat="server" Value='<%# HiddenSelectedDate.Value %>' />

                                                                        </ItemTemplate>

                                                                    </asp:Repeater>


                                                                    <asp:HiddenField ID="HiddenSelectedDate" runat="server" />


                                                                </div>
                                                                <div class="swiper-pagination"></div>
                                                                <div class="swiper-button-prev" tabindex="0" role="button" aria-label="Previous slide" aria-controls="swiper-wrapper-8f697d458472310a8" aria-disabled="false">
                                                                </div>
                                                                <div class="swiper-button-next swiper-button-disabled" tabindex="-1" role="button" aria-label="Next slide" aria-controls="swiper-wrapper-8f697d458472310a8" aria-disabled="true">
                                                                </div>
                                                                <span class="swiper-notification" aria-live="assertive" aria-atomic="true"></span>
                                                            </div>
                                                        </div>

                                                    </div>


                                                    <div class="pzy-staffs-schedule-staffs-list">

                                                        <asp:Repeater ID="RepeaterTimes" runat="server">
                                                            <ItemTemplate>

                                                                <div class="pzy-staffs-schedule-staffs-list-item">
                                                                    <div class="pzy-staffs-schedule-staffs-list-item-content">
                                                                        <div class="pzy-staff-introduction">
                                                                            <%-- <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">
                                                                                <h4 class='<%# Convert.ToBoolean(Eval("IsReserved")) ? "pzy-staff-title disabled gray" : "pzy-staff-title" %>'>
                                                                                    <%# Eval("AppointmentTime", "{0:HH:mm}") %>  </h4>
                                                                            </button>--%>
                                                                            <asp:LinkButton ID="btnTime" runat="server" CssClass="open-modal"
                                                                                data-toggle="modal" data-target="#myModal"
                                                                                data-time='<%# Eval("AppointmentTime") %>'
                                                                                Enabled='<%# !Convert.ToBoolean(Eval("IsReserved")) %>'>
                                                                                <h4 class='<%# Convert.ToBoolean(Eval("IsReserved")) ? "pzy-staff-title disabled gray" : "pzy-staff-title" %>'>
                                                                                    <%# Eval("AppointmentTime", "{0:HH:mm}") %>  </h4>
                                                                            </asp:LinkButton>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:Repeater>

                                                    </div>
                                                </ContentTemplate>

                                                <Triggers>
                                                    <asp:AsyncPostBackTrigger ControlID="Repeater1" EventName="ItemCommand" />
                                                </Triggers>
                                            </asp:UpdatePanel>
                                        </div>
                                    </div>
                                    <%--  <asp:SqlDataSource ID="SqlAppointment" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>"
                                        SelectCommand="GetDoctorAppointments" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:QueryStringParameter DefaultValue="2030" Name="doctorId" QueryStringField="did" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>

                                    <asp:SqlDataSource ID="SqlTimes" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>"
                                        SelectCommand="GetAppointmentsByDate" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="HiddenSelectedDate" Name="selectedDate" PropertyName="Value" Type="DateTime" />
                                            <asp:QueryStringParameter Name="doctorId" QueryStringField="did" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- The Modal -->
                <%-- <script>
                    $(document).ready(function () {
                        $(document).on("click", ".open-modal", function () {
                            var time = $(this).data("time");
                            $("#lbTime").text(time);
                            $("#hfSelectedTime").val(time);
                        });
                    });      
                </script>--%>

                <script>
                    $(document).ready(function () {
                        $(document).on("click", ".open-modal", function () {
                            var time = $(this).data("time");

                            // Works because this is plain HTML
                            $("#selectedTime").text(time);

                            // Get the correct client-side ID of the HiddenField and set its value
                            var hfId = "<%= hfSelectedTime.ClientID %>";
                            $("#" + hfId).val(time);
                        });
                    });
                </script>



                <div id="myModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content reserve-form">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="pzy-modal-header">ثبت نوبت</h4>
                            </div>
                            <div class="modal-body">
                                <p>اطلاعات زیر را وارد کنید و دکمه ثبت را بزنید تا نوبت برای شما رزرو شود.</p>
                                <asp:HiddenField ID="hfSelectedTime" runat="server" />

                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <div>
                                            <asp:Label ID="err" runat="server" CssClass="alert error" Text="متاسفانه خطایی پیش آمد، لطفا مجددا سعی نمایید." Visible="false"></asp:Label>
                                        </div>

                                        <div class="pzy-input-append-icon form-input">
                                            <p class="pzy-input-title">نام و نام خانوادگی  <span class="pzy-required">*</span> </p>
                                            <asp:TextBox ID="txtName" runat="server" TabIndex="1" MaxLength="20"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validator1" runat="server" ErrorMessage="نام خود را وارد کنید." CssClass="validator"
                                                ControlToValidate="txtName" ValidationGroup="reserve"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="pzy-input-append-icon form-input">
                                            <p class="pzy-input-title">شماره موبایل  <span class="pzy-required">*</span> </p>
                                            <asp:TextBox ID="txtTel" runat="server" TabIndex="2" MaxLength="11"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="validator2" runat="server" ErrorMessage="تلفن خود را وارد کنید." CssClass="validator"
                                                ControlToValidate="txtTel" ValidationGroup="reserve"></asp:RequiredFieldValidator>

                                            <asp:RegularExpressionValidator ID="validator3" runat="server" ErrorMessage="موبایل صحیح وارد کنید" CssClass="validator"
                                                ControlToValidate="txtTel" ValidationGroup="reserve" ValidationExpression="^09\d{9}$"></asp:RegularExpressionValidator>
                                        </div>


                                        </div>


                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="btnReserve" EventName="click" />
                                    </Triggers>
                                </asp:UpdatePanel>

                                <div class="modal-footer">
                                    <div class="form-input">
                                        <asp:LinkButton ID="btnReserve" runat="server" TabIndex="3" CssClass="btn btn-default" OnClick="btnReserve_Click1" ValidationGroup="reserve">ثبت نوبت</asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>



                    <%--                <div id="myModal" class="modal fade">
                    <span class="close">&times;</span>

                    <div class="pzy-reserve-modal pzy-modal-wrapper pzy-hide">
                        <div class="pzy-modal-content">
                            <div class="pzy-modal pzy-staffs-schedule-categories-modal">
                                <div class="pzy-modal-header">
                                    <p class="pzy-modal-title">
                                        ثبت نوبت
                                    </p>
                                    <button class="pzy-modal-close-button">
                                        <svg class="pzy-input-icon" xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                            viewBox="0 0 24 24" fill="none">
                                            <path d="M9.16986 15.5801C8.97986 15.5801 8.78986 15.5101 8.63986 15.3601C8.34986 15.0701 8.34986 14.5901 8.63986 14.3001L14.2999 8.64011C14.5899 8.35011 15.0699 8.35011 15.3599 8.64011C15.6499 8.93011 15.6499 9.41011 15.3599 9.70011L9.69986 15.3601C9.55986 15.5101 9.35986 15.5801 9.16986 15.5801Z"
                                                fill="#A6AFB8" />
                                            <path d="M14.8299 15.5801C14.6399 15.5801 14.4499 15.5101 14.2999 15.3601L8.63986 9.70011C8.34986 9.41011 8.34986 8.93011 8.63986 8.64011C8.92986 8.35011 9.40986 8.35011 9.69986 8.64011L15.3599 14.3001C15.6499 14.5901 15.6499 15.0701 15.3599 15.3601C15.2099 15.5101 15.0199 15.5801 14.8299 15.5801Z"
                                                fill="#A6AFB8" />
                                            <path d="M15 22.75H9C3.57 22.75 1.25 20.43 1.25 15V9C1.25 3.57 3.57 1.25 9 1.25H15C20.43 1.25 22.75 3.57 22.75 9V15C22.75 20.43 20.43 22.75 15 22.75ZM9 2.75C4.39 2.75 2.75 4.39 2.75 9V15C2.75 19.61 4.39 21.25 9 21.25H15C19.61 21.25 21.25 19.61 21.25 15V9C21.25 4.39 19.61 2.75 15 2.75H9Z"
                                                fill="#A6AFB8" />
                                        </svg>
                                    </button>
                                </div>
                                <div class="pzy-modal-body">
                                    <div class="pzy-reserve-form">
                                        <div class="pzy-modal-reserve-form pzy-d-flex pzy-flex-column-nowrap">
                                            <label class="pzy-input-label">
                                                <p class="pzy-input-title">
                                                    نام و نام خانوادگی                              
                                                                        <span class="pzy-required">*</span>
                                                </p>
                                                <div class="pzy-input-append-icon">
                                                    <input type="text" name="full_name">
                                                    <i class="pzy-input-icon" data-feather="user"></i>
                                                </div>
                                            </label>
                                            <label class="pzy-input-label">
                                                <p class="pzy-input-title">
                                                    شماره تماس                              
                                                                        <span class="pzy-required">*</span>
                                                </p>
                                                <div class="pzy-input-append-icon">
                                                    <input type="text" name="contact_phone">
                                                    <i class="pzy-input-icon" data-feather="smartphone"></i>
                                                </div>
                                            </label>
                                            <label class="pzy-input-label">
                                                <p class="pzy-input-title">
                                                    نوع بیمه درمانی                                
                                                                        <span class="pzy-required">*</span>
                                                </p>
                                                <div class="pzy-input-append-icon">
                                                    <input type="text" name="insurance_type">
                                                    <i class="pzy-input-icon" data-feather="clipboard"></i>
                                                </div>
                                            </label>

                                            <input type="hidden" class="pzy-form-service-date" name="service_date">
                                            <input type="hidden" class="pzy-form-service-type" name="service_type">
                                            <input type="hidden" class="pzy-form-staff-id" name="staff">

                                            <div class="pzy-input-append-icon pzy-position-relative">
                                                <input class="pzy-form-service-human-date" type="text" value="1403/05/08" disabled>
                                                <i class="pzy-input-icon" data-feather="file-text"></i>
                                            </div>
                                            <div class="pzy-input-append-icon">
                                                <input class="pzy-form-staff-name" type="text" value="نام متخصص" disabled>
                                                <i class="pzy-input-icon" data-feather="user"></i>
                                            </div>

                                            <p class="pzy-radio-group-label">انتخاب زمان مراجعه به دکتر :</p>

                                            <div class="pzy-time-slots pzy-radio-group"></div>

                                            <button class="pzy-modal-reserve-submit pzy-button pzy-button-primary">
                                                <i data-feather="message-square"></i>
                                                ثبت نوبت شما
                                            </button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                </div>--%>



                    <!-- ========= End Appointment ======== -->
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
                                                <a href="#" class="elementor-icon elementor-animation-" tabindex="-1">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                        <g id="chevron-left">
                                                            <path id="Icon" d="M12.5 15L7.5 10L12.5 5" stroke="#A6AFB8" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                        </g></svg>
                                                </a>
                                            </div>

                                            <div class="elementor-icon-box-content">

                                                <span class="elementor-icon-box-title">
                                                    <a href="">مشاهده همه
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
                                <div class="elementor-widget-container related-list">
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



                <div class="elementor-element elementor-element-fc524b8 e-flex e-con-boxed e-con e-parent">
                    <div class="e-con-inner">
                        <div class="elementor-element elementor-element-8a0444c elementor-widget elementor-widget-post-comments" data-id="8a0444c" data-element_type="widget" data-widget_type="post-comments.theme_comments">
                            <div class="elementor-widget-container">

                                <div id="comments" class="comments-area">


                                    <div id="respond" class="comment-respond">
                                        <h3 id="reply-title" class="comment-reply-title">رزرو نوبت 
                                    <small></small>
                                        <p class="title_reply_after"></p>
                                        <span></span>
                                        <div id="commentform" class="comment-form">
                                            <p class="comment-notes"><span id="email-notes">اطلاعات شما منتشر نخواهد شد.</span> <span class="required-field-message">بخش‌های موردنیاز علامت‌گذاری شده‌اند <span class="required">*</span></span></p>


                                            <div class="comment-form-row comment-form-author">
                                                <div class="input-append">
                                                    <input placeholder="نام و نام خانوادگی:" id="author" name="author" type="text" value="" size="30" aria-required="true" required /><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                                        <path d="M5 21C5 17.134 8.13401 14 12 14C15.866 14 19 17.134 19 21M16 7C16 9.20914 14.2091 11 12 11C9.79086 11 8 9.20914 8 7C8 4.79086 9.79086 3 12 3C14.2091 3 16 4.79086 16 7Z" stroke="#5C91C7" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                                                    </svg>
                                                </div>
                                            </div>
                                            <div class="comment-form-row comment-form-email">
                                                <div class="input-append">
                                                    <input placeholder="شماره موبایل:" id="mobile" name="mobile" type="text" value="" size="30" aria-required="true" required /><i data-feather="phone"></i>
                                                </div>
                                            </div>

                                            <div class="comment-form-cookies-consent">
                                                <div class="comment-form-submit-box">
                                                    <asp:Button ID="Button1" runat="server" Text="ثبت" class="submit" ValidationGroup="reserve" Enabled="false" />
                                                    <%--   <p class="form-submit">

                                               <input name="submit" type="submit" id="submit" class="submit" value="فرستادن دیدگاه" />
                                              
                                            </p>--%>
                                                </div>
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





                <%--            <div class="elementor-element elementor-element-fc524b8 e-flex e-con-boxed e-con e-parent">
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

                                               <!--  <p class="form-submit">

                                               <input name="submit" type="submit" id="submit" class="submit" value="فرستادن دیدگاه" />
                                              
                                            </p> -->
        </div>
        </div>
                                </div>
                                <!-- #respond -->

        </div>
                            <!-- #comments -->
        </div>
                    </div>
                </div>
            </div>--%>


                <!-- ========== Appointment Modal ========== -->
    </main>

    <!-- Swiper script -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <script>
        const swiper = new Swiper(".mySwiper", {
            slidesPerView: "auto", // Enables multiple items
            spaceBetween: 10,
            freeMode: true,         // Allows free drag
            grabCursor: true,       // Shows hand cursor
        });
    </script>

</asp:Content>
