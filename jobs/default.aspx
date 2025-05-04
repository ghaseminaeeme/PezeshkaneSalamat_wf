<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="pezeshkaneSalamat_wf.jobs._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <ul id="breadcrumbs" class="pzy-breadcrumb-list">
            <li class="pzy-breadcrumb-list-item"><a href="/default.aspx">صفحه اصلی</a></li>
            <li class='pzy-breadcrumb-separator'><i data-feather="chevron-left"></i></li>
            <li class="pzy-breadcrumb-list-item item-current item-105"><span class="pzy-breadcrumb-current-item">پزشکان</span></li>
        </ul>
        <div class="pzy-section ">
            <header>
                <div class="pzy-header-title">
                    لیست متخصصین پزشکان سلامت
                </div>
                <div class="pzy-header-divider"></div>

            </header>
            <div class="pzy-section-content pzy-mt-40">
                <div class="pzy-archive">
                    <aside class="pzy-archive-sidebar">
                        <div id="pzy-service-sidebar" class="pzy-blog-sidebar">
                            <div id="block-9" class="widget widget_block widget_search">
                                <div role="search" method="get" class="wp-block-search__button-outside wp-block-search__icon-button pzy-sidebar-search wp-block-search">
                                    <label class="wp-block-search__label screen-reader-text" for="wp-block-search__input-1">جستجو</label><div class="wp-block-search__inside-wrapper ">
                                        <input class="wp-block-search__input" id="wp-block-search__input-1" placeholder="جستجو کنید..." value="" type="search" name="s" required />
                                        <button aria-label="جستجو" class="wp-block-search__button has-icon wp-element-button" type="submit">
                                            <svg class="search-icon" viewBox="0 0 24 24" width="24" height="24">
                                                <path d="M13 5c-3.3 0-6 2.7-6 6 0 1.4.5 2.7 1.3 3.7l-3.8 3.8 1.1 1.1 3.8-3.8c1 .8 2.3 1.3 3.7 1.3 3.3 0 6-2.7 6-6S16.3 5 13 5zm0 10.5c-2.5 0-4.5-2-4.5-4.5s2-4.5 4.5-4.5 4.5 2 4.5 4.5-2 4.5-4.5 4.5z"></path>
                                            </svg>
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <div id="pzy_services_block-5" class="widget widget_pzy_services_block">
                                <h3 class="widget-title"><a class="filter-all" href="/jobs?filter-title=&filter-location=0&filter-category=0">همه تخصص ها </a></h3>
                                <ul class="pzy_categories_block">
                                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlBranch">
                                        <ItemTemplate>
                                            <li class="cat-item cat-item-31">
                                                <a href='/jobs?filter-title=&filter-location=0&filter-category=<%#Eval("id") %>'><%#Eval("bSubject") %></a>

                                                <!-- 'Doctors.aspx?city=0&branch=<%#Eval("id") %>' -->
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>



                            <div id="pzy_latest_staffs_block-4" class="widget widget_pzy_latest_staffs_block">
                                <h3 class="widget-title"><a class="filter-all" href="Doctors.aspx?filter-title=&filter-location=0&filter-category=0">همه شهرها  </a></h3>
                                <ul class="pzy_categories_block">
                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlCity">
                                        <ItemTemplate>
                                            <li class="cat-item cat-item-31">
                                                <a href='/jobs?filter-title=&filter-location=<%#Eval("id") %>&filter-category=0'><%#Eval("cName") %></a>
                                            </li>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </ul>
                            </div>




                            <asp:SqlDataSource ID="SqlBranch" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>"
                                SelectCommand="SELECT [id], [bSubject] FROM [TblBranch] WHERE ([bIsDeleted] &lt;&gt; @bIsDeleted) ORDER BY [bSubject]">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="true" Name="bIsDeleted" Type="Boolean" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                            <asp:SqlDataSource ID="SqlCity" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>"
                                SelectCommand="SELECT [id], [cName] FROM [TblCity] WHERE ([cIsDeleted] &lt;&gt; @cIsDeleted) ORDER BY [cName]">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="true" Name="cIsDeleted" Type="Boolean" />
                                </SelectParameters>
                            </asp:SqlDataSource>

                        </div>
                    </aside>
                    <section class="pzy-archive-content pzy-staffs-archive">
                        <div class="pzy-staffs-consultation">
                            <div class="pzy-services-loop">

                                <asp:ListView ID="ListSpecialDoctors" runat="server" DataSourceID="SqlDoctors">
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
                                                        <clipPath id="clip0_2884_3321">
                                                            <rect width="16" height="16" fill="white" />
                                                        </clipPath>
                                                    </defs>
                                                </svg>
                                            </div>

                                            <div class="pzy-staff-avatar-box pzy-circle-avatar-box pzy-position-relative" style="">
                                                <a href='/job/<%#Eval("dUrl") %>'
                                                    class="pzy-d-block pzy-position-absolute pzy-staff-avatar-link">
                                                    <img class="pzy-staff-card-avatar"
                                                        src='<%#Eval("dImg") %>'
                                                        alt="<%#Eval("dName") %>" />
                                                </a>
                                            </div>


                                            <h3 class="pzy-staff-title p-16-bold">
                                                <a href='/job/<%#Eval("dUrl") %>'><%#Eval("dName") %></a>
                                            </h3>
                                            <h4 class="pzy-staff-subtitle"><%#Eval("cName") %></h4>
                                            <h4 class="pzy-staff-subtitle"><%#Eval("bSubject") %></h4>
                                            <div class="pzy-staff-point">

                                                <span class="t-16-regular text-gray-600"><%#Eval("dTel") %> </span>
                                            </div>

                                            <div class="pzy-request-staff-button-box">
                                                <a class="pzy-request-staff-button" data-staff="131" href='/job/<%#Eval("dUrl") %>'>
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check-circle">
                                                        <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path><polyline points="22 4 12 14.01 9 11.01"></polyline></svg>
                                                    ثبت نوبت                           
                                                </a>
                                            </div>

                                            <%--    <button class="pzy-staff-consultation-request"
                                                data-staff-name="<%#Eval("dName") %>"
                                                data-staff="131">
                                                <i class="pzy-staff-consultation-request-icon"
                                                    data-feather="message-square"></i>
                                                <span class="pzy-staff-consultation-request-title">درخواست مشاوره</span>
                                            </button>--%>
                                        </article>

                                    </ItemTemplate>
                                </asp:ListView>

                                <asp:SqlDataSource ID="SqlSpecialDoctors" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>"
                                    SelectCommand="selectSpecialDoctors" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:QueryStringParameter DefaultValue="0" Name="city" QueryStringField="filter-location" Type="Int32" />
                                        <asp:QueryStringParameter DefaultValue="0" Name="branch" QueryStringField="filter-category" Type="Int32" />
                                        <asp:QueryStringParameter DefaultValue=" " Name="name" QueryStringField="filter-title" Type="String" />                                        
                                        <%--<asp:CookieParameter DefaultValue=" " Name="name" CookieName="name" Type="String" />--%>
                                    </SelectParameters>
                                </asp:SqlDataSource>

                                <asp:SqlDataSource ID="SqlDoctors" runat="server" ConnectionString="<%$ ConnectionStrings:DbWebSiteConnectionString %>"
                                    SelectCommand="selectDoctors" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:QueryStringParameter DefaultValue="0" Name="city" QueryStringField="filter-location" Type="Int32" />
                                        <asp:QueryStringParameter DefaultValue="0" Name="branch" QueryStringField="filter-category" Type="Int32" />
                                        <asp:QueryStringParameter DefaultValue=" " Name="name" QueryStringField="filter-title" Type="String" />                                        
                                        <%--<asp:CookieParameter DefaultValue=" " Name="name" CookieName="name" Type="String" />--%>
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div>

                            <div class="pzy-pagination-links">

                                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListSpecialDoctors" PageSize="24" class="pagination">
                                    <Fields>
                                        <asp:NumericPagerField ButtonCount="10" CurrentPageLabelCssClass="active" ButtonType="Link" />
                                    </Fields>
                                </asp:DataPager>


                                <%--   <span aria-label="برگه 1" aria-current="page" class="page-numbers current">1</span>
                                <a aria-label="برگه 2" class="page-numbers" href="https://pezeshk-yar.ir/%d8%ae%d8%af%d9%85%d8%a7%d8%aa/page/2/">2</a>
                                <a class="next page-numbers" href="https://pezeshk-yar.ir/%d8%ae%d8%af%d9%85%d8%a7%d8%aa/page/2/">بعدی &raquo;</a>--%>
                            </div>



                            <%--   <div class="pzy-consultation-modal pzy-modal-wrapper pzy-hide">
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
                                                            data-alt="#pzy-consultation-datepicker-alt">
                                                            <span class="pzy-select-date-box-title">انتخاب تاریخ</span>
                                                            <input type="text" class="pzy-datepicker-display" id="pzy-consultation-datepicker-alt" readonly />
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
                            </div>--%>
                        </div>

                    </section>
                </div>
            </div>
        </div>


    </div>

</asp:Content>
