<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="pezeshkaneSalamat_wf.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl" lang="fa-IR" class=" geolocation history svg atobbtoa atob-btoa canvas webgl supports fullscreen cssfilters cssmask">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>پزشکان سلامت</title>

    <link href="/assets/css/root.css" rel="stylesheet" />
    <link href="/assets/css/mainStyle.css" rel="stylesheet" />
<%--    <link href="/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="/assets/css/fonts.css" rel="stylesheet" />--%>
</head>
<body class="rtl home page-template-default page page-id-2566 theme-pezeshkyar woocommerce-js e-wc-info-notice elementor-default elementor-kit-146 elementor-page elementor-page-2566 e--ua-blink e--ua-chrome e--ua-webkit">
    <form id="form1" runat="server">
        <div class="main-layout pzy-main-layout">
            <div class="container">

                <header class="header elementor elementor-142">

                    <div class="elementor-element elementor-element-25befacb e-flex e-con-boxed e-con e-parent e-lazyloaded" data-id="25befacb" data-element_type="container">
                        <div class="e-con-inner">
                            <div class="elementor-element elementor-element-f9c11b5 e-con-full pzy-position-relative e-flex e-con e-child" data-id="f9c11b5" data-element_type="container">
                                <div class="elementor-element elementor-element-ac24082 elementor-widget elementor-widget-pzy_top_menu" data-id="ac24082" data-element_type="widget" id="el-top-menu" data-widget_type="pzy_top_menu.default">
                                    <div class="elementor-widget-container">
                                        <div class="pzy-d-flex pzy-flex-row-nowrap pzy-top-menu-widget">
                                            <div class="toggle-menu" data-target="#mobile-menu-wrapper">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-menu toggle-menu-icon">
                                                    <line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg></div>
                                            <div class="logo pzy-d-flex pzy-align-items-center">
                                                <a class="pzy-d-block" href="https://pezeshk-yar.ir/">
                                                    <img src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/logo.png" alt="پزشک یار">
                                                </a>
                                            </div>
                                            <div class="mobile-menu-wrapper pzy-hide" id="mobile-menu-wrapper">
                                                <div class="mobile-menu">
                                                    <div class="menu-header">
                                                        <a class="pzy-d-block" href="https://pezeshk-yar.ir/">
                                                            <img src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/logo.png" alt="پزشک یار">
                                                        </a>
                                                    </div>
                                                    <div class="mobile-menu-box">
                                                        <ul class="mobile-menu-list">
                                                            <li><a href="https://pezeshk-yar.ir/"><span class="pzy-link-text">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home">
                                                                    <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>صفحه اصلی</span></a></li>
                                                            <li><a href="#"><span class="pzy-link-text">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-layers">
                                                                    <polygon points="12 2 2 7 12 12 22 7 12 2"></polygon><polyline points="2 17 12 22 22 17"></polyline><polyline points="2 12 12 17 22 12"></polyline></svg>صفحات قالب</span></a></li>
                                                            <li><a href="https://pezeshk-yar.ir/%d9%85%d8%ac%d9%84%d9%87-%d8%ae%d8%a8%d8%b1%db%8c/"><span class="pzy-link-text">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-book-open">
                                                                    <path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"></path><path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"></path></svg>مجله خبری</span></a></li>
                                                            <li><a href="https://pezeshk-yar.ir/%d8%ae%d8%af%d9%85%d8%a7%d8%aa/"><span class="pzy-link-text">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-box">
                                                                    <path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg>خدمات</span></a></li>
                                                            <li><a href="https://pezeshk-yar.ir/shop/"><span class="pzy-link-text">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-bag">
                                                                    <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path><line x1="3" y1="6" x2="21" y2="6"></line><path d="M16 10a4 4 0 0 1-8 0"></path></svg>فروشگاه</span></a></li>
                                                        </ul>
                                                        <div class="mobile-categories-list">
                                                            <ul>
                                                                <li class=""><a href="https://pezeshk-yar.ir/%d9%88%d8%b1%d9%88%d8%af-%d9%88-%d8%ab%d8%a8%d8%aa-%d9%86%d8%a7%d9%85/"><span class="pzy-link-text">ورود و ثبت نام</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                <li class=""><a href="https://pezeshk-yar.ir/%d9%85%d8%ac%d9%84%d9%87-%d8%ae%d8%a8%d8%b1%db%8c/"><span class="pzy-link-text">آرشیو مقالات</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                <li class=""><a href="https://pezeshk-yar.ir/%d8%a7%d8%b2-%d8%a8%db%8c%d9%86-%d8%a8%d8%b1%d8%af%d9%86-%d9%84%da%a9%d9%87-%d9%87%d8%a7%db%8c-%d8%b5%d9%88%d8%b1%d8%aa-%d8%af%d8%b1%d8%ae%d8%a7%d9%86%d9%87-7/"><span class="pzy-link-text">صفحه تکی مقاله</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                <li class=""><a href="/404"><span class="pzy-link-text">صفحه 404</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                <li class=""><a href="https://pezeshk-yar.ir/%d8%aa%d9%85%d8%a7%d8%b3-%d8%a8%d8%a7-%d9%85%d8%a7/"><span class="pzy-link-text">تماس با ما</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                <li class="menu-item-has-children"><a href="#"><span class="pzy-link-text">ووکامرس</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a><ul>
                                                                    <li class=""><a href="https://pezeshk-yar.ir/shop/"><span class="pzy-link-text">فروشگاه</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                    <li class=""><a href="https://pezeshk-yar.ir/cart/"><span class="pzy-link-text">سبد خرید</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                    <li class=""><a href="https://pezeshk-yar.ir/my-account/"><span class="pzy-link-text">حساب کاربری من</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                    <li class=""><a href="https://pezeshk-yar.ir/checkout/"><span class="pzy-link-text">پرداخت</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                    <li class="menu-item-has-children"><a href="#"><span class="pzy-link-text">انواع محصول</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a><ul>
                                                                        <li class=""><a href="https://pezeshk-yar.ir/product/%d8%af%d8%b3%d8%aa%da%af%d8%a7%d9%87-%d8%a8%d8%ae%d9%88%d8%b1-%d8%b3%d8%b1%d8%af-%d9%88-%da%af%d8%b1%d9%85-%d8%af%d8%b1%d9%85%d8%a7/"><span class="pzy-link-text">محصول ساده</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="https://pezeshk-yar.ir/product/%d8%a8%d8%b1%d8%b3-%d9%be%d8%a7%da%a9-%d8%b3%d8%a7%d8%b2%db%8c-%d9%85%db%8c%d9%88%d8%aa%d9%88/"><span class="pzy-link-text">محصول متغیر</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                    </ul>
                                                                    </li>
                                                                </ul>
                                                                </li>
                                                                <li class="menu-item-has-children"><a href="#"><span class="pzy-link-text">نوبت دهی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a><ul>
                                                                    <li class=""><a href="https://pezeshk-yar.ir/%d8%ae%d8%af%d9%85%d8%a7%d8%aa/"><span class="pzy-link-text">لیست متخصصین</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                    <li class=""><a href="https://pezeshk-yar.ir/staff/%d8%af%da%a9%d8%aa%d8%b1-%d9%85%d8%a8%db%8c%d9%86-%d8%a7%d9%85%db%8c%d9%86/"><span class="pzy-link-text">صفحه تکی متخصص</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                </ul>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <p class="categories-list-title">دسته بندی کالاها</p>
                                                        <div class="mobile-categories-list">
                                                            <ul>
                                                                <li class="menu-item-has-children"><a href="#"><span class="pzy-link-text">وسایل پزشکی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a><ul>
                                                                    <li class="menu-item-has-children"><a href="#"><span class="pzy-link-text">وسایل معاینه</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a><ul>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">دستگاه فشار سنج</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">دماسنج طبی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">اتوسکوپ</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                    </ul>
                                                                    </li>
                                                                    <li class="menu-item-has-children"><a href="#"><span class="pzy-link-text">رتینوسکوپ</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a><ul>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">رتینوسکوپ</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">ترازو</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">آبسلانگ</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">افتالموسکوپ</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                    </ul>
                                                                    </li>
                                                                    <li class="menu-item-has-children"><a href="#"><span class="pzy-link-text">وسایل عمومی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a><ul>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">دستگاه فشار سنج</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">دماسنج طبی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">اتوسکوپ</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">رتینوسکوپ</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">ترازو</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                    </ul>
                                                                    </li>
                                                                    <li class="menu-item-has-children"><a href="#"><span class="pzy-link-text">تجهیزات شخصی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a><ul>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">دستگاه فشار سنج</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">دماسنج طبی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                    </ul>
                                                                    </li>
                                                                    <li class="menu-item-has-children"><a href="#"><span class="pzy-link-text">تجهیزات درمانی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a><ul>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">دستگاه فشار سنج</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">دماسنج طبی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                    </ul>
                                                                    </li>
                                                                    <li class="menu-item-has-children"><a href="#"><span class="pzy-link-text">تجهیزات آزمایشگاهی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a><ul>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">دستگاه فشار سنج</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">دماسنج طبی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">اتوسکوپ</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">رتینوسکوپ</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                    </ul>
                                                                    </li>
                                                                    <li class="menu-item-has-children"><a href="#"><span class="pzy-link-text">تجهیزات درمانی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a><ul>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">دستگاه فشار سنج</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">دماسنج طبی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                    </ul>
                                                                    </li>
                                                                    <li class="menu-item-has-children"><a href="#"><span class="pzy-link-text">تجهیزات آزمایشگاهی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a><ul>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">دستگاه فشار سنج</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">دماسنج طبی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">اتوسکوپ</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                        <li class=""><a href="#"><span class="pzy-link-text">رتینوسکوپ</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                    </ul>
                                                                    </li>
                                                                </ul>
                                                                </li>
                                                                <li class=""><a href="#"><span class="pzy-link-text">متخصصین پزشکیار</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                <li class=""><a href="#"><span class="pzy-link-text">محصولات</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                <li class=""><a href="#"><span class="pzy-link-text">مقالات</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                                <li class=""><a href="#"><span class="pzy-link-text">آزمایشگاه</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <nav class="main-desktop-menu">
                                                <ul>
                                                    <li class=""><a class="pzy-active" href="https://pezeshk-yar.ir/"><span class="pzy-link-text">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home">
                                                            <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>صفحه اصلی</span></a></li>
                                                    <li class=""><a class="" href="#"><span class="pzy-link-text">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-layers">
                                                            <polygon points="12 2 2 7 12 12 22 7 12 2"></polygon><polyline points="2 17 12 22 22 17"></polyline><polyline points="2 12 12 17 22 12"></polyline></svg>صفحات قالب</span></a><ul>
                                                                <li class=""><a href="https://pezeshk-yar.ir/%d9%88%d8%b1%d9%88%d8%af-%d9%88-%d8%ab%d8%a8%d8%aa-%d9%86%d8%a7%d9%85/"><span class="pzy-link-text">ورود و ثبت نام</span></a></li>
                                                                <li class=""><a href="https://pezeshk-yar.ir/%d9%85%d8%ac%d9%84%d9%87-%d8%ae%d8%a8%d8%b1%db%8c/"><span class="pzy-link-text">آرشیو مقالات</span></a></li>
                                                                <li class=""><a href="https://pezeshk-yar.ir/%d8%a7%d8%b2-%d8%a8%db%8c%d9%86-%d8%a8%d8%b1%d8%af%d9%86-%d9%84%da%a9%d9%87-%d9%87%d8%a7%db%8c-%d8%b5%d9%88%d8%b1%d8%aa-%d8%af%d8%b1%d8%ae%d8%a7%d9%86%d9%87-7/"><span class="pzy-link-text">صفحه تکی مقاله</span></a></li>
                                                                <li class=""><a href="/404"><span class="pzy-link-text">صفحه 404</span></a></li>
                                                                <li class=""><a href="https://pezeshk-yar.ir/%d8%aa%d9%85%d8%a7%d8%b3-%d8%a8%d8%a7-%d9%85%d8%a7/"><span class="pzy-link-text">تماس با ما</span></a></li>
                                                                <li class="menu-item-has-children"><a href="#"><span class="pzy-link-text">ووکامرس</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a><ul>
                                                                    <li class=""><a href="https://pezeshk-yar.ir/shop/"><span class="pzy-link-text">فروشگاه</span></a></li>
                                                                    <li class=""><a href="https://pezeshk-yar.ir/cart/"><span class="pzy-link-text">سبد خرید</span></a></li>
                                                                    <li class=""><a href="https://pezeshk-yar.ir/my-account/"><span class="pzy-link-text">حساب کاربری من</span></a></li>
                                                                    <li class=""><a href="https://pezeshk-yar.ir/checkout/"><span class="pzy-link-text">پرداخت</span></a></li>
                                                                    <li class="menu-item-has-children"><a href="#"><span class="pzy-link-text">انواع محصول</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a><ul>
                                                                        <li class=""><a href="https://pezeshk-yar.ir/product/%d8%af%d8%b3%d8%aa%da%af%d8%a7%d9%87-%d8%a8%d8%ae%d9%88%d8%b1-%d8%b3%d8%b1%d8%af-%d9%88-%da%af%d8%b1%d9%85-%d8%af%d8%b1%d9%85%d8%a7/"><span class="pzy-link-text">محصول ساده</span></a></li>
                                                                        <li class=""><a href="https://pezeshk-yar.ir/product/%d8%a8%d8%b1%d8%b3-%d9%be%d8%a7%da%a9-%d8%b3%d8%a7%d8%b2%db%8c-%d9%85%db%8c%d9%88%d8%aa%d9%88/"><span class="pzy-link-text">محصول متغیر</span></a></li>
                                                                    </ul>
                                                                    </li>
                                                                </ul>
                                                                </li>
                                                                <li class="menu-item-has-children"><a href="#"><span class="pzy-link-text">نوبت دهی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a><ul>
                                                                    <li class=""><a href="https://pezeshk-yar.ir/%d8%ae%d8%af%d9%85%d8%a7%d8%aa/"><span class="pzy-link-text">لیست متخصصین</span></a></li>
                                                                    <li class=""><a href="https://pezeshk-yar.ir/staff/%d8%af%da%a9%d8%aa%d8%b1-%d9%85%d8%a8%db%8c%d9%86-%d8%a7%d9%85%db%8c%d9%86/"><span class="pzy-link-text">صفحه تکی متخصص</span></a></li>
                                                                </ul>
                                                                </li>
                                                            </ul>
                                                    </li>
                                                    <li class=""><a class="" href="https://pezeshk-yar.ir/%d9%85%d8%ac%d9%84%d9%87-%d8%ae%d8%a8%d8%b1%db%8c/"><span class="pzy-link-text">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-book-open">
                                                            <path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z"></path><path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z"></path></svg>مجله خبری</span></a></li>
                                                    <li class=""><a class="" href="https://pezeshk-yar.ir/%d8%ae%d8%af%d9%85%d8%a7%d8%aa/"><span class="pzy-link-text">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-box">
                                                            <path d="M21 16V8a2 2 0 0 0-1-1.73l-7-4a2 2 0 0 0-2 0l-7 4A2 2 0 0 0 3 8v8a2 2 0 0 0 1 1.73l7 4a2 2 0 0 0 2 0l7-4A2 2 0 0 0 21 16z"></path><polyline points="3.27 6.96 12 12.01 20.73 6.96"></polyline><line x1="12" y1="22.08" x2="12" y2="12"></line></svg>خدمات</span></a></li>
                                                    <li class="pzy-mega-menu">
                                                        <a class="" href="https://pezeshk-yar.ir/shop/"><span class="pzy-link-text">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-shopping-bag">
                                                                <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path><line x1="3" y1="6" x2="21" y2="6"></line><path d="M16 10a4 4 0 0 1-8 0"></path></svg>فروشگاه</span></a>
                                                        <ul>
                                                            <div class="pzy-mega-menu-items">
                                                                <div class="pzy-mega-menu-item" data-content="#pzy-mg-menu-98462-21"><a href="#">
                                                                    <div class="pzy-mega-menu-item-img-box" style="background: #BE9DFF40">
                                                                        <img width="30" height="28" src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/Group-15-1-1.svg" class="attachment-thumbnail size-thumbnail" alt="" decoding="async"></div>
                                                                    <span class="pzy-link-text">وسایل پزشکی</span><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-chevron-left toggle-menu-item"><polyline points="15 18 9 12 15 6"></polyline></svg></a></div>
                                                                <div class="pzy-mega-menu-item"><a href="#">
                                                                    <div class="pzy-mega-menu-item-img-box" style="background: rgba(253, 124, 126, 0.20)">
                                                                        <img width="30" height="20" src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/Group-48-1-1.svg" class="attachment-thumbnail size-thumbnail" alt="" decoding="async"></div>
                                                                    <span class="pzy-link-text">متخصصین پزشکیار</span></a></div>
                                                                <div class="pzy-mega-menu-item"><a href="#">
                                                                    <div class="pzy-mega-menu-item-img-box" style="background: rgba(114, 205, 251, 0.21)">
                                                                        <img width="20" height="26" src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/g1.svg" class="attachment-thumbnail size-thumbnail" alt="" decoding="async"></div>
                                                                    <span class="pzy-link-text">محصولات</span></a></div>
                                                                <div class="pzy-mega-menu-item"><a href="#">
                                                                    <div class="pzy-mega-menu-item-img-box" style="background: rgba(168, 128, 255, 0.17)">
                                                                        <img loading="lazy" width="20" height="42" src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/Group-52-1.svg" class="attachment-thumbnail size-thumbnail" alt="" decoding="async"></div>
                                                                    <span class="pzy-link-text">مقالات</span></a></div>
                                                                <div class="pzy-mega-menu-item"><a href="#">
                                                                    <div class="pzy-mega-menu-item-img-box" style="background: rgba(249, 153, 107, 0.24)">
                                                                        <img loading="lazy" width="30" height="30" src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/Group-27-1.svg" class="attachment-thumbnail size-thumbnail" alt="" decoding="async"></div>
                                                                    <span class="pzy-link-text">آزمایشگاه</span></a></div>
                                                            </div>
                                                            <div class="pzy-mega-menu-contents">
                                                                <div class="pzy-mega-menu-content" id="pzy-mg-menu-98462-21">
                                                                    <div class="pzy-mega-menu-col">
                                                                        <div class="pzy-mega-menu-content-list" style="margin-bottom: 0px">
                                                                            <div class="pzy-mega-menu-content-list-item pzy-mega-menu-content-head-list-item" style=""><a href="#"><span class="pzy-link-text">وسایل معاینه</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style="margin-bottom: 12px"><a href="#"><span class="pzy-link-text">دستگاه فشار سنج</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style="margin-bottom: 12px"><a href="#"><span class="pzy-link-text">دماسنج طبی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style="margin-bottom: 12px"><a href="#"><span class="pzy-link-text">گوشی پزشکی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style="margin-bottom: 12px"><a href="#"><span class="pzy-link-text">گوشی پزشکی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style="margin-bottom: 12px"><a href="#"><span class="pzy-link-text">اتوسکوپ</span></a></div>
                                                                        </div>
                                                                        <div class="pzy-mega-menu-content-list" style="">
                                                                            <div class="pzy-mega-menu-content-list-item pzy-mega-menu-content-head-list-item" style="margin-bottom: 8px"><a href="#"><span class="pzy-link-text">رتینوسکوپ</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style="margin-bottom: 12px"><a href="#"><span class="pzy-link-text">رتینوسکوپ</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style="margin-bottom: 12px"><a href="#"><span class="pzy-link-text">ترازو</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style="margin-bottom: 12px"><a href="#"><span class="pzy-link-text">آبسلانگ</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style="margin-bottom: 12px"><a href="#"><span class="pzy-link-text">افتالموسکوپ</span></a></div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="pzy-mega-menu-col">
                                                                        <div class="pzy-mega-menu-content-list" style="">
                                                                            <div class="pzy-mega-menu-content-list-item pzy-mega-menu-content-head-list-item" style=""><a href="#"><span class="pzy-link-text">وسایل عمومی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">دستگاه فشار سنج</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">دماسنج طبی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">اتوسکوپ</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">رتینوسکوپ</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">ترازو</span></a></div>
                                                                        </div>
                                                                        <div class="pzy-mega-menu-content-list" style="">
                                                                            <div class="pzy-mega-menu-content-list-item pzy-mega-menu-content-head-list-item" style=""><a href="#"><span class="pzy-link-text">تجهیزات شخصی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">دستگاه فشار سنج</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">دماسنج طبی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span></a></div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="pzy-mega-menu-col">
                                                                        <div class="pzy-mega-menu-content-list" style="">
                                                                            <div class="pzy-mega-menu-content-list-item pzy-mega-menu-content-head-list-item" style=""><a href="#"><span class="pzy-link-text">تجهیزات درمانی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">دستگاه فشار سنج</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">دماسنج طبی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span></a></div>
                                                                        </div>
                                                                        <div class="pzy-mega-menu-content-list" style="">
                                                                            <div class="pzy-mega-menu-content-list-item pzy-mega-menu-content-head-list-item" style=""><a href="#"><span class="pzy-link-text">تجهیزات آزمایشگاهی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">دستگاه فشار سنج</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">دماسنج طبی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">اتوسکوپ</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">رتینوسکوپ</span></a></div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="pzy-mega-menu-col">
                                                                        <div class="pzy-mega-menu-content-list" style="">
                                                                            <div class="pzy-mega-menu-content-list-item pzy-mega-menu-content-head-list-item" style=""><a href="#"><span class="pzy-link-text">تجهیزات درمانی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">دستگاه فشار سنج</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">دماسنج طبی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span></a></div>
                                                                        </div>
                                                                        <div class="pzy-mega-menu-content-list" style="">
                                                                            <div class="pzy-mega-menu-content-list-item pzy-mega-menu-content-head-list-item" style=""><a href="#"><span class="pzy-link-text">تجهیزات آزمایشگاهی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">دستگاه فشار سنج</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">دماسنج طبی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">گوشی پزشکی</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">اتوسکوپ</span></a></div>
                                                                            <div class="pzy-mega-menu-content-list-item" style=""><a href="#"><span class="pzy-link-text">رتینوسکوپ</span></a></div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </nav>
                                        </div>
                                        <script>
                                            feather.replace();
                                        </script>
                                    </div>
                                </div>
                                <div class="elementor-element elementor-element-f9b18dd e-con-full e-flex e-con e-child" data-id="f9b18dd" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;}">
                                    <div class="elementor-element elementor-element-f791ab6 elementor-hidden-tablet elementor-hidden-mobile elementor-widget elementor-widget-image" data-id="f791ab6" data-element_type="widget" data-widget_type="image.default">
                                        <div class="elementor-widget-container">
                                            <img loading="lazy" width="36" height="24" src="https://pezeshk-yar.ir/wp-content/uploads/2024/07/consultation-request.svg" class="attachment-full size-full wp-image-4008" alt="">
                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-e9f4bbc elementor-absolute elementor-view-stacked elementor-shape-circle elementor-widget elementor-widget-icon" data-id="e9f4bbc" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;}" data-widget_type="icon.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-icon-wrapper">
                                                <a class="elementor-icon" href="/#reserve">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 12 12" fill="none">
                                                        <g id="check">
                                                            <path id="Icon" d="M10 3L4.5 8.5L2 6" stroke="white" stroke-linecap="round" stroke-linejoin="round"></path>
                                                        </g></svg>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="elementor-element elementor-element-14112e1 elementor-view-default elementor-widget elementor-widget-icon" data-id="14112e1" data-element_type="widget" data-widget_type="icon.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-icon-wrapper">
                                                <a class="elementor-icon" href="/#reserve">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                                                        <g id="calendar">
                                                            <path id="Icon" d="M13.3333 1.66675V5.00008M6.66667 1.66675V5.00008M2.5 8.33342H17.5M4.16667 3.33341H15.8333C16.7538 3.33341 17.5 4.07961 17.5 5.00008V16.6667C17.5 17.5872 16.7538 18.3334 15.8333 18.3334H4.16667C3.24619 18.3334 2.5 17.5872 2.5 16.6667V5.00008C2.5 4.07961 3.24619 3.33341 4.16667 3.33341Z" stroke="white" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path>
                                                        </g></svg>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="elementor-element elementor-element-23f473b e-con-full elementor-hidden-mobile e-flex e-con e-child" data-id="23f473b" data-element_type="container">
                                    <div class="elementor-element elementor-element-a9c0c0c elementor-view-default elementor-widget elementor-widget-icon" data-id="a9c0c0c" data-element_type="widget" data-widget_type="icon.default">
                                        <div class="elementor-widget-container">
                                            <div class="elementor-icon-wrapper">
                                                <a class="elementor-icon" href="https://pezeshk-yar.ir/my-account/">
                                                    <svg aria-hidden="true" class="e-font-icon-svg e-far-user" viewBox="0 0 448 512" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M313.6 304c-28.7 0-42.5 16-89.6 16-47.1 0-60.8-16-89.6-16C60.2 304 0 364.2 0 438.4V464c0 26.5 21.5 48 48 48h352c26.5 0 48-21.5 48-48v-25.6c0-74.2-60.2-134.4-134.4-134.4zM400 464H48v-25.6c0-47.6 38.8-86.4 86.4-86.4 14.6 0 38.3 16 89.6 16 51.7 0 74.9-16 89.6-16 47.6 0 86.4 38.8 86.4 86.4V464zM224 288c79.5 0 144-64.5 144-144S303.5 0 224 0 80 64.5 80 144s64.5 144 144 144zm0-240c52.9 0 96 43.1 96 96s-43.1 96-96 96-96-43.1-96-96 43.1-96 96-96z"></path></svg>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                              
                            </div>
                        </div>
                    </div>

                </header>

                <main>
                    <p>this is the main</p>
                </main>
            </div>
        </div>
    </form>
</body>
</html>
