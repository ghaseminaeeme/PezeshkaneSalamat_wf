<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="scollerMenu.aspx.cs" Inherits="pezeshkaneSalamat_wf.TempFiles.scollerMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />

    <!-- Swiper styles -->


<!-- Swiper HTML wrapper (your code is already like this) -->
<%--<div class="swiper mySwiper">
  <div class="swiper-wrapper">
    <div class="swiper-slide">شنبه</div>
    <div class="swiper-slide">یکشنبه</div>
    <div class="swiper-slide">دوشنبه</div>
    <div class="swiper-slide">سه‌شنبه</div>
    <div class="swiper-slide">چهارشنبه</div>
    <div class="swiper-slide">پنج‌شنبه</div>
    <div class="swiper-slide">جمعه</div>
  </div>
</div>--%>




                <div class="elementor-element elementor-element-955b188 elementor-widget__width-initial elementor-widget elementor-widget-pzy_links_slider" >
                    <div class="elementor-widget-container">
                        <div class="pzy-links-slider">
                            <div class="slider-wrapper" style="height: 100%">

                                <div class="swiper mySwiper swiper-initialized swiper-horizontal swiper-rtl swiper-backface-hidden swiper-pagination-disabled" >
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide pzy-auto-width swiper-slide-active">
                                            <a class="pzy-service-name" href="#"> شنبه </a>
                                        </div>
                                        <div class="swiper-slide pzy-auto-width swiper-slide-next" >
                                            <a class="pzy-service-name" href="#"> یکشنبه</a>
                                        </div>
                                        <div class="swiper-slide pzy-auto-width">
                                            <a class="pzy-service-name" href="#">دوشنبه </a>
                                        </div>
                                        <div class="swiper-slide pzy-auto-width">
                                            <a class="pzy-service-name" href="#"> سه شنبه </a>
                                        </div>
                                        <div class="swiper-slide pzy-auto-width">
                                            <a class="pzy-service-name" href="#"> چهارشنبه </a>
                                        </div>
                                        <div class="swiper-slide pzy-auto-width">
                                            <a class="pzy-service-name" href="#"> پنجشنبه </a>
                                        </div>
                                        <div class="swiper-slide pzy-auto-width">
                                            <a class="pzy-service-name" href="#"> جمعه </a>
                                        </div>
                                       
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
                     </div>
                </div>
              
       
    
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
