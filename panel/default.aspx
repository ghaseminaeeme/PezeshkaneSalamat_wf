<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="pezeshkaneSalamat_wf.panel._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" dir="rtl" lang="fa-IR">
<%--<head runat="server">
    <title>ورود به پنل کاربری پزشکان </title>
    <link href="/Admin/assets/css/login.css" rel="stylesheet" />
    <link href="../assets/css/login.css" rel="stylesheet" />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/uploads/elementor/css/custom-frontend-rtl.min.css?ver=1733764179' type='text/css' media='all' />
    <link rel='stylesheet' href='https://pezeshk-yar.ir/wp-content/uploads/elementor/css/post-146.css?ver=1733764183' type='text/css' media='all' />
        <link rel='stylesheet' href='https://pezeshk-yar.ir/wp-content/uploads/elementor/css/post-304.css?ver=1733771505' type='text/css' media='all' />


</head>--%>

<head runat="server">

    <meta charset="UTF-8">
    <title> ورود به پرتال پزشکان سلامت </title>
    <meta name='robots' content='max-image-preview:large' />
    <link rel='stylesheet' href='https://pezeshk-yar.ir/wp-content/plugins/yith-woocommerce-wishlist/assets/css/jquery.selectBox.css?ver=1.2.0' type='text/css' media='all' />
    <link rel='stylesheet' href='//pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/css/prettyPhoto-rtl.css?ver=3.1.6' type='text/css' media='all' />
    <link rel='stylesheet' href='https://pezeshk-yar.ir/wp-content/plugins/yith-woocommerce-wishlist/assets/css/style.css?ver=4.0.1' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/pezeshkyar-core/assets/css/main.css?ver=6.7.1' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/pezeshkyar-core//elementor/assets/pzy-staffs-slider/main.css?ver=6.7.1' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/rate-my-post/public/css/rate-my-post.min.css?ver=4.2.5' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/css/woocommerce-layout-rtl.css?ver=9.5.1' type='text/css' media='all' />
    <link rel='stylesheet' href='https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/css/woocommerce-smallscreen-rtl.css?ver=9.5.1' type='text/css' media='only screen and (max-width: 768px)' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/css/woocommerce-rtl.css?ver=9.5.1' type='text/css' media='all' />

    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/themes/pezeshkyar/assets/lib/swiper/swiper-bundle.min.css?ver=6.7.1' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/themes/pezeshkyar/assets/lib/persian-datepicker/dist/css/persian-datepicker.min.css?ver=6.7.1' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/themes/pezeshkyar/assets/css/pezeshkyar.css?v=64&#038;ver=6.7.1' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/elementor-pro/assets/css/woocommerce-notices.min.css?ver=3.25.4' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/uploads/elementor/css/custom-frontend-rtl.min.css?ver=1733764179' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/elementor/assets/lib/swiper/v8/css/swiper.min.css?ver=8.4.5' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/elementor/assets/css/conditionals/e-swiper.min.css?ver=3.25.10' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/uploads/elementor/css/post-146.css?ver=1733764183' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/elementor-pro/assets/css/conditionals/popup.min.css?ver=3.25.4' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/elementor/assets/css/widget-image-rtl.min.css?ver=3.25.10' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/uploads/elementor/css/post-304.css?ver=1733771505' type='text/css' media='all' />
    <script type="text/javascript" src="https://pezeshk-yar.ir/wp-includes/js/jquery/jquery.min.js?ver=3.7.1" id="jquery-core-js"></script>
    <script type="text/javascript" src="https://pezeshk-yar.ir/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.4.1" id="jquery-migrate-js"></script>
    <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js?ver=2.7.0-wc.9.5.1" id="jquery-blockui-js" defer="defer" data-wp-strategy="defer"></script>
        <link rel='stylesheet' href='https://pezeshk-yar.ir/wp-content/themes/pezeshkyar/assets/lib/swiper/swiper-bundle.min.css?ver=6.7.1' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/themes/pezeshkyar/assets/lib/persian-datepicker/dist/css/persian-datepicker.min.css?ver=6.7.1' type='text/css' media='all' />
    <link rel='stylesheet' href='https://pezeshk-yar.ir/wp-content/themes/pezeshkyar/assets/css/pezeshkyar.css?v=64&#038;ver=6.7.1' type='text/css' media='all' />
    <link rel='stylesheet' href='https://pezeshk-yar.ir/wp-content/plugins/elementor-pro/assets/css/woocommerce-notices.min.css?ver=3.25.4' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/uploads/elementor/css/custom-frontend-rtl.min.css?ver=1733764179' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/elementor/assets/lib/swiper/v8/css/swiper.min.css?ver=8.4.5' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/elementor/assets/css/conditionals/e-swiper.min.css?ver=3.25.10' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/uploads/elementor/css/post-146.css?ver=1733764183' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/elementor-pro/assets/css/conditionals/popup.min.css?ver=3.25.4' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/elementor/assets/css/widget-image-rtl.min.css?ver=3.25.10' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/uploads/elementor/css/post-304.css?ver=1733771505' type='text/css' media='all' />

    <script type="text/javascript" src="https://pezeshk-yar.ir/wp-includes/js/jquery/jquery.min.js?ver=3.7.1" ></script>
    <script type="text/javascript" src="https://pezeshk-yar.ir/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.4.1" id="jquery-migrate-js"></script>
    <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js?ver=2.7.0-wc.9.5.1" id="jquery-blockui-js" defer="defer" data-wp-strategy="defer"></script>
    <script type="text/javascript" id="wc-add-to-cart-js-extra">
        /* <![CDATA[ */
        var wc_add_to_cart_params = { "ajax_url": "\/wp-admin\/admin-ajax.php", "wc_ajax_url": "\/?wc-ajax=%%endpoint%%", "i18n_view_cart": "\u0645\u0634\u0627\u0647\u062f\u0647 \u0633\u0628\u062f \u062e\u0631\u06cc\u062f", "cart_url": "https:\/\/pezeshk-yar.ir\/cart\/", "is_cart": "", "cart_redirect_after_add": "no" };
/* ]]> */
    </script>
    <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.min.js?ver=9.5.1" id="wc-add-to-cart-js" defer="defer" data-wp-strategy="defer"></script>
    <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min.js?ver=2.1.4-wc.9.5.1" id="js-cookie-js" defer="defer" data-wp-strategy="defer"></script>

    <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min.js?ver=9.5.1" id="woocommerce-js" defer="defer" data-wp-strategy="defer"></script>
    <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/themes/pezeshkyar/assets/lib/feather-icons/dist/feather.min.js?ver=6.7.1" id="feather-icons-js"></script>
    <link rel="https://api.w.org/" href="https://pezeshk-yar.ir/wp-json/" />
    <link rel="alternate" title="JSON" type="application/json" href="https://pezeshk-yar.ir/wp-json/wp/v2/pages/304" />
    <link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://pezeshk-yar.ir/xmlrpc.php?rsd" />
    <meta name="generator" content="WordPress 6.7.1" />
    <meta name="generator" content="WooCommerce 9.5.1" />
    <link rel="canonical" href="https://pezeshk-yar.ir/%d9%88%d8%b1%d9%88%d8%af-%d9%88-%d8%ab%d8%a8%d8%aa-%d9%86%d8%a7%d9%85/" />
    <link rel='shortlink' href='https://pezeshk-yar.ir/?p=304' />
    <link rel="alternate" title="oEmbed (JSON)" type="application/json+oembed" href="https://pezeshk-yar.ir/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fpezeshk-yar.ir%2F%25d9%2588%25d8%25b1%25d9%2588%25d8%25af-%25d9%2588-%25d8%25ab%25d8%25a8%25d8%25aa-%25d9%2586%25d8%25a7%25d9%2585%2F" />
    <link rel="alternate" title="oEmbed (XML)" type="text/xml+oembed" href="https://pezeshk-yar.ir/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fpezeshk-yar.ir%2F%25d9%2588%25d8%25b1%25d9%2588%25d8%25af-%25d9%2588-%25d8%25ab%25d8%25a8%25d8%25aa-%25d9%2586%25d8%25a7%25d9%2585%2F&#038;format=xml" />
    <link rel="icon" href="https://pezeshk-yar.ir/wp-content/uploads/2024/07/Logo-1.svg" sizes="32x32" />
    <link rel="icon" href="https://pezeshk-yar.ir/wp-content/uploads/2024/07/Logo-1.svg" sizes="192x192" />
    <link rel="apple-touch-icon" href="https://pezeshk-yar.ir/wp-content/uploads/2024/07/Logo-1.svg" />
    <meta name="msapplication-TileImage" content="https://pezeshk-yar.ir/wp-content/uploads/2024/07/Logo-1.svg" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />

    <link href="../assets/css/login.css" rel="stylesheet" />
    <link href="/Admin/assets/css/login.css" rel="stylesheet" />

</head>

<body class="rtl page-template page-template-elementor_canvas page page-id-304 theme-pezeshkyar woocommerce-js e-wc-info-notice elementor-default elementor-template-canvas elementor-kit-146 elementor-page elementor-page-304 e--ua-blink e--ua-chrome e--ua-webkit">
    <form id="form1" runat="server">

        <div data-elementor-type="wp-page" data-elementor-id="304" class="elementor elementor-304" data-elementor-post-type="page">
            <div class="elementor-element elementor-element-f959313 e-flex e-con-boxed e-con e-parent" data-id="f959313" data-element_type="container">
                <div class="e-con-inner">
                    <div class="elementor-element elementor-element-14722ac e-con-full e-flex e-con e-child" data-id="14722ac" data-element_type="container">
                        <div class="elementor-element elementor-element-2d7ce53 e-con-full e-flex e-con e-child" data-id="2d7ce53" data-element_type="container">
                            <div class="elementor-element elementor-element-e53412e elementor-widget__width-initial elementor-widget elementor-widget-shortcode" data-id="e53412e" data-element_type="widget" data-widget_type="shortcode.default">
                                <div class="elementor-widget-container">
                                    <div class="elementor-shortcode">
                                        <div class='pzy-account-form-box-wrapper'>
                                            <div class="woocommerce-notices-wrapper">
                                                 <ul class="woocommerce-error" role="alert" tabindex="-1">
                                                    <li>
                                                        <asp:Label ID="err" runat="server" Text="Label" Visible="false"> <strong>خطا:</strong> 	
                                                        </asp:Label>
                                                    </li>
                                                </ul>
                                            </div>

                                            <div class="pzy-account-forms" id="customer_login">

                                                <div class="pzy-account-form pzy-wc-login">

                                                    <h2>ورود به پورتال پزشکان </h2>

                                                    <h5> نام کاربری و رمز خود را از مدیر سایت دریافت کنید و در این جا وارد کنید. </h5>

                                                     <asp:Panel ID="Panel1" runat="server" DefaultButton="BtnLogin">
                                                        <div class="form">
                                                            <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                                <asp:TextBox ID="TxtUser" runat="server" CssClass="woocommerce-Input woocommerce-Input--text input-text" placeholder="نام کاربری "></asp:TextBox>
                                                            </p>
                                                            <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                                                                <asp:TextBox ID="TxtPass" runat="server" CssClass="woocommerce-Input woocommerce-Input--text input-text" placeholder="گذرواژه" TextMode="Password"></asp:TextBox>
                                                                <span class="show-password-input"></span>
                                                            </p>


                                                            <div class="pzy-start-buttons">
                                                                <asp:LinkButton ID="BtnLogin" runat="server" OnClick="BtnLogin_Click" CssClass="woocommerce-button button woocommerce-form-login__submit">ورود</asp:LinkButton>
                                                            </div>

                                                        </div>
                                                    </asp:Panel>




                                                    <div class="pzy-buttons">
                                                        <a href="/"> بازگشت به پزشکان سلامت </a>
                                                    </div>



                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="elementor-element elementor-element-84c05af e-con-full e-flex e-con e-child" data-id="84c05af" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;position&quot;:&quot;absolute&quot;}">
                            <div class="elementor-element elementor-element-1bf1b2d e-con-full e-flex e-con e-child" data-id="1bf1b2d" data-element_type="container" data-settings="{&quot;background_background&quot;:&quot;classic&quot;,&quot;position&quot;:&quot;absolute&quot;}">
                            </div>
                           <%-- <div class="elementor-element elementor-element-551510d elementor-absolute e-transform elementor-widget elementor-widget-image" data-id="551510d" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;,&quot;_transform_translateY_effect&quot;:{&quot;unit&quot;:&quot;%&quot;,&quot;size&quot;:-50,&quot;sizes&quot;:[]},&quot;_transform_translateY_effect_tablet&quot;:{&quot;unit&quot;:&quot;%&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;_transform_translateY_effect_mobile&quot;:{&quot;unit&quot;:&quot;%&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;_transform_translateX_effect&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;_transform_translateX_effect_tablet&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;_transform_translateX_effect_mobile_extra&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;_transform_translateX_effect_mobile&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;_transform_translateY_effect_mobile_extra&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]}}" data-widget_type="image.default">
                                <div class="elementor-widget-container">
                                    <img decoding="async" width="189" height="45" src="https://pezeshk-yar.ir/wp-content/uploads/2024/08/auth-Logo.png" class="attachment-large size-large wp-image-3329" alt="" />
                                </div>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            (function () {
                const calculateParentDistance = (child, parent) => {
                    let count = 0;
                    let currentElement = child;

                    // Traverse up the DOM tree until we reach parent or the top of the DOM
                    while (currentElement && currentElement !== parent) {
                        currentElement = currentElement.parentNode;
                        count++;
                    }

                    // If parent was not found in the hierarchy, return -1
                    if (!currentElement) {
                        return -1; // Indicates parent is not an ancestor of element
                    }

                    return count; // Number of layers between element and parent
                }
                const isMatchingClass = (linkRule, href, classes) => {
                    return classes.includes(linkRule.value)
                }
                const isMatchingDomain = (linkRule, href, classes) => {
                    if (!URL.canParse(href)) {
                        return false
                    }

                    const url = new URL(href)

                    return linkRule.value === url.host
                }
                const isMatchingExtension = (linkRule, href, classes) => {
                    if (!URL.canParse(href)) {
                        return false
                    }

                    const url = new URL(href)

                    return url.pathname.endsWith('.' + linkRule.value)
                }
                const isMatchingSubdirectory = (linkRule, href, classes) => {
                    if (!URL.canParse(href)) {
                        return false
                    }

                    const url = new URL(href)

                    return url.pathname.startsWith('/' + linkRule.value + '/')
                }
                const isMatchingProtocol = (linkRule, href, classes) => {
                    if (!URL.canParse(href)) {
                        return false
                    }

                    const url = new URL(href)

                    return url.protocol === linkRule.value + ':'
                }
                const isMatch = (linkRule, href, classes) => {
                    switch (linkRule.type) {
                        case 'class':
                            return isMatchingClass(linkRule, href, classes)
                        case 'domain':
                            return isMatchingDomain(linkRule, href, classes)
                        case 'extension':
                            return isMatchingExtension(linkRule, href, classes)
                        case 'subdirectory':
                            return isMatchingSubdirectory(linkRule, href, classes)
                        case 'protocol':
                            return isMatchingProtocol(linkRule, href, classes)
                        default:
                            return false;
                    }
                }
                const track = (element) => {
                    const href = element.href ?? null
                    const classes = Array.from(element.classList)
                    const linkRules = [{ "type": "extension", "value": "pdf" }, { "type": "extension", "value": "zip" }, { "type": "protocol", "value": "mailto" }, { "type": "protocol", "value": "tel" }]
                    if (linkRules.length === 0) {
                        return
                    }

                    // For link rules that target a class, we need to allow that class to appear
                    // in any ancestor up to the 7th ancestor. This loop looks for those matches
                    // and counts them.
                    linkRules.forEach((linkRule) => {
                        if (linkRule.type !== 'class') {
                            return;
                        }

                        const matchingAncestor = element.closest('.' + linkRule.value)

                        if (!matchingAncestor || matchingAncestor.matches('html, body')) {
                            return;
                        }

                        const depth = calculateParentDistance(element, matchingAncestor)

                        if (depth < 7) {
                            classes.push(linkRule.value)
                        }
                    });

                    const hasMatch = linkRules.some((linkRule) => {
                        return isMatch(linkRule, href, classes)
                    })

                    if (!hasMatch) {
                        return
                    }

                    const url = "https://pezeshk-yar.ir/wp-content/plugins/independent-analytics/iawp-click-endpoint.php";
                    const body = {
                        href: href,
                        classes: classes.join(' '),
                        ...{ "payload": { "resource": "singular", "singular_id": 304, "page": 1 }, "signature": "a0ecea3d9389b23dcafd73834c398b03" }
                    };

                    if (navigator.sendBeacon) {
                        let blob = new Blob([JSON.stringify(body)], {
                            type: "application/json"
                        });
                        navigator.sendBeacon(url, blob);
                    } else {
                        const xhr = new XMLHttpRequest();
                        xhr.open("POST", url, true);
                        xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
                        xhr.send(JSON.stringify(body))
                    }
                }
                document.addEventListener('mousedown', function (event) {
                    if (navigator.webdriver || /bot|crawler|spider|crawling|semrushbot|chrome-lighthouse/i.test(navigator.userAgent)) {
                        return;
                    }

                    const element = event.target.closest('a')

                    if (!element) {
                        return
                    }

                    const isPro = false
                    if (!isPro) {
                        return
                    }

                    // Don't track left clicks with this event. The click event is used for that.
                    if (event.button === 0) {
                        return
                    }

                    track(element)
                })
                document.addEventListener('click', function (event) {
                    if (navigator.webdriver || /bot|crawler|spider|crawling|semrushbot|chrome-lighthouse/i.test(navigator.userAgent)) {
                        return;
                    }

                    const element = event.target.closest('a, button, input[type="submit"], input[type="button"]')

                    if (!element) {
                        return
                    }

                    const isPro = false
                    if (!isPro) {
                        return
                    }

                    track(element)
                })
                document.addEventListener("DOMContentLoaded", function (e) {
                    if (document.hasOwnProperty("visibilityState") && document.visibilityState === "prerender") {
                        return;
                    }

                    if (navigator.webdriver || /bot|crawler|spider|crawling|semrushbot|chrome-lighthouse/i.test(navigator.userAgent)) {
                        return;
                    }

                    let referrer_url = null;

                    if (typeof document.referrer === 'string' && document.referrer.length > 0) {
                        referrer_url = document.referrer;
                    }

                    const params = location.search.slice(1).split('&').reduce((acc, s) => {
                        const [k, v] = s.split('=');
                        return Object.assign(acc, { [k]: v });
                    }, {});

                    const url = "https://pezeshk-yar.ir/wp-json/iawp/search";
                    const body = {
                        referrer_url,
                        utm_source: params.utm_source,
                        utm_medium: params.utm_medium,
                        utm_campaign: params.utm_campaign,
                        utm_term: params.utm_term,
                        utm_content: params.utm_content,
                        gclid: params.gclid,
                        ...{ "payload": { "resource": "singular", "singular_id": 304, "page": 1 }, "signature": "a0ecea3d9389b23dcafd73834c398b03" }
                    };

                    if (navigator.sendBeacon) {
                        let blob = new Blob([JSON.stringify(body)], {
                            type: "application/json"
                        });
                        navigator.sendBeacon(url, blob);
                    } else {
                        const xhr = new XMLHttpRequest();
                        xhr.open("POST", url, true);
                        xhr.setRequestHeader("Content-Type", "application/json;charset=UTF-8");
                        xhr.send(JSON.stringify(body))
                    }
                });
            })();
        </script>
        <script type='text/javascript'>
            const lazyloadRunObserver = () => {
                const lazyloadBackgrounds = document.querySelectorAll(`.e-con.e-parent:not(.e-lazyloaded)`);
                const lazyloadBackgroundObserver = new IntersectionObserver((entries) => {
                    entries.forEach((entry) => {
                        if (entry.isIntersecting) {
                            let lazyloadBackground = entry.target;
                            if (lazyloadBackground) {
                                lazyloadBackground.classList.add('e-lazyloaded');
                            }
                            lazyloadBackgroundObserver.unobserve(entry.target);
                        }
                    });
                }, { rootMargin: '200px 0px 200px 0px' });
                lazyloadBackgrounds.forEach((lazyloadBackground) => {
                    lazyloadBackgroundObserver.observe(lazyloadBackground);
                });
            };
            const events = [
                'DOMContentLoaded',
                'elementor/lazyload/observe',
            ];
            events.forEach((event) => {
                document.addEventListener(event, lazyloadRunObserver);
            });
        </script>
        <script type='text/javascript'>
            (function () {
                var c = document.body.className;
                c = c.replace(/woocommerce-no-js/, 'woocommerce-js');
                document.body.className = c;
            })();
        </script>
        <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/client/blocks/wc-blocks-rtl.css?ver=wc-9.5.1' type='text/css' media='all' />
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/yith-woocommerce-wishlist/assets/js/jquery.selectBox.min.js?ver=1.2.0" id="jquery-selectBox-js"></script>
        <script type="text/javascript" src="//pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/js/prettyPhoto/jquery.prettyPhoto.min.js?ver=3.1.6" id="prettyPhoto-js" data-wp-strategy="defer"></script>
        <script type="text/javascript" id="jquery-yith-wcwl-js-extra">
            /* <![CDATA[ */
            var yith_wcwl_l10n = { "ajax_url": "\/wp-admin\/admin-ajax.php", "redirect_to_cart": "no", "yith_wcwl_button_position": "shortcode", "multi_wishlist": "", "hide_add_button": "1", "enable_ajax_loading": "1", "ajax_loader_url": "https:\/\/pezeshk-yar.ir\/wp-content\/plugins\/yith-woocommerce-wishlist\/assets\/images\/ajax-loader-alt.svg", "remove_from_wishlist_after_add_to_cart": "1", "is_wishlist_responsive": "1", "time_to_close_prettyphoto": "3000", "fragments_index_glue": ".", "reload_on_found_variation": "1", "mobile_media_query": "768", "labels": { "cookie_disabled": "\u0645\u062a\u0627\u0633\u0641\u06cc\u0645\u060c \u0644\u06cc\u0633\u062a \u0639\u0644\u0627\u0642\u0647 \u0645\u0646\u062f\u06cc \u0632\u0645\u0627\u0646\u06cc \u0622\u0645\u0627\u062f\u0647 \u0627\u0633\u062a \u06a9\u0647 \u0634\u0645\u0627 \u06a9\u0648\u06a9\u06cc \u0645\u0631\u0648\u06af\u0631\u062a\u0648\u0646 \u0631\u0627 \u0641\u0639\u0627\u0644 \u06a9\u0631\u062f\u0647 \u0628\u0627\u0634\u06cc\u062f.", "added_to_cart_message": "<div class=\"woocommerce-notices-wrapper\"><div class=\"woocommerce-message\" role=\"alert\">\u0645\u062d\u0635\u0648\u0644\u0627\u062a \u0628\u0627 \u0645\u0648\u0641\u0642\u06cc\u062a \u0628\u0647 \u0633\u0628\u062f \u062e\u0631\u06cc\u062f\u062a\u0627\u0646 \u0627\u0636\u0627\u0641\u0647 \u0634\u062f\u0646\u062f<\/div><\/div>" }, "actions": { "add_to_wishlist_action": "add_to_wishlist", "remove_from_wishlist_action": "remove_from_wishlist", "reload_wishlist_and_adding_elem_action": "reload_wishlist_and_adding_elem", "load_mobile_action": "load_mobile", "delete_item_action": "delete_item", "save_title_action": "save_title", "save_privacy_action": "save_privacy", "load_fragments": "load_fragments" }, "nonce": { "add_to_wishlist_nonce": "73594d81d6", "remove_from_wishlist_nonce": "49f48531fd", "reload_wishlist_and_adding_elem_nonce": "64098791cf", "load_mobile_nonce": "ac2683618c", "delete_item_nonce": "ab5e1257c3", "save_title_nonce": "a464bc62f9", "save_privacy_nonce": "b54117c45f", "load_fragments_nonce": "95010332b2" }, "redirect_after_ask_estimate": "", "ask_estimate_redirect_url": "https:\/\/pezeshk-yar.ir" };
/* ]]> */
        </script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/yith-woocommerce-wishlist/assets/js/jquery.yith-wcwl.min.js?ver=4.0.1" id="jquery-yith-wcwl-js"></script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/themes/pezeshkyar/assets/js/init-jquery.js" id="init-jquery-js"></script>
        <script type="text/javascript" id="pzy_core-js-extra">
            /* <![CDATA[ */
            var pzy_staffs_schedule = { "ajax_url": "https:\/\/pezeshk-yar.ir\/wp-admin\/admin-ajax.php", "security": "cb18348ec1", "translations": { "show_more": "\u0645\u0634\u0627\u0647\u062f\u0647 \u0628\u06cc\u0634\u062a\u0631", "show_less": "\u0645\u0634\u0627\u0647\u062f\u0647 \u06a9\u0645\u062a\u0631", "days": ["\u0634\u0646\u0628\u0647", "\u06cc\u06a9\u0634\u0646\u0628\u0647", "\u062f\u0648\u0634\u0646\u0628\u0647", "\u0633\u0647 \u0634\u0646\u0628\u0647", "\u0686\u0647\u0627\u0631\u0634\u0646\u0628\u0647", "\u067e\u0646\u062c\u0634\u0646\u0628\u0647", "\u062c\u0645\u0639\u0647"] } };
/* ]]> */
        </script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/pezeshkyar-core//assets/js/main.js" id="pzy_core-js"></script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/themes/pezeshkyar/assets/lib/swiper/swiper-bundle.min.js" id="swiper.js-js"></script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/themes/pezeshkyar/assets/lib/persian-date/dist/persian-date.min.js" id="persian-date-js"></script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/themes/pezeshkyar/assets/lib/persian-datepicker/dist/js/persian-datepicker.js" id="persian-datepicker-js"></script>
        <script type="text/javascript" id="theme-script.js-js-extra">
            /* <![CDATA[ */
            var pgw_main_ajax_object = { "ajax_url": "https:\/\/pezeshk-yar.ir\/wp-admin\/admin-ajax.php", "security": "225d026c10" };
/* ]]> */
        </script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/themes/pezeshkyar/assets/js/pezeshkyar.js?v=20" id="theme-script.js-js"></script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/pezeshkyar-core//elementor/assets/pzy-staffs-slider/main.js" id="pzy-staffs_slider-js"></script>
        <script type="text/javascript" id="rate-my-post-js-extra">
            /* <![CDATA[ */
            var rmp_frontend = { "admin_ajax": "https:\/\/pezeshk-yar.ir\/wp-admin\/admin-ajax.php", "postID": "304", "noVotes": "\u0647\u0646\u0648\u0632 \u0627\u0645\u062a\u06cc\u0627\u0632\u06cc \u062b\u0628\u062a \u0646\u0634\u062f\u0647! \u0627\u0648\u0644\u06cc\u0646 \u0646\u0641\u0631\u06cc \u0628\u0627\u0634\u06cc\u062f \u06a9\u0647 \u0628\u0647 \u0627\u06cc\u0646 \u067e\u0633\u062a \u0627\u0645\u062a\u06cc\u0627\u0632 \u0645\u06cc \u062f\u0647\u06cc\u062f.", "cookie": "\u0634\u0645\u0627 \u0642\u0628\u0644\u0627 \u0631\u0627\u06cc \u062f\u0627\u062f\u0647 \u0627\u06cc\u062f! \u0627\u06cc\u0646 \u0631\u0627\u06cc \u0628\u0647 \u062d\u0633\u0627\u0628 \u0646\u0645\u06cc \u0622\u06cc\u062f!", "afterVote": "\u0628\u0627\u0628\u062a \u0627\u0645\u062a\u06cc\u0627\u0632 \u062f\u0627\u062f\u0646 \u0628\u0647 \u0627\u06cc\u0646 \u067e\u0633\u062a \u0645\u062a\u0634\u06a9\u0631\u06cc\u0645.", "notShowRating": "1", "social": "1", "feedback": "1", "cookieDisable": "1", "emptyFeedback": "Please insert your feedback in the box above!", "hoverTexts": "2", "preventAccidental": "1", "grecaptcha": "1", "siteKey": "", "votingPriv": "1", "loggedIn": "", "positiveThreshold": "2", "ajaxLoad": "1", "disableClearCache": "1", "nonce": "0c60ac4ea7" };
/* ]]> */
        </script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/rate-my-post/public/js/rate-my-post.min.js?ver=4.2.5" id="rate-my-post-js"></script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/themes/pezeshkyar/assets/js/init-feather.js" id="init-feather-js"></script>
        <script type="text/javascript" id="pzy-newsletter-js-extra">
            /* <![CDATA[ */
            var pzy_newsletter_obj = { "ajax_url": "https:\/\/pezeshk-yar.ir\/wp-admin\/admin-ajax.php", "security": "e3a4f789ec" };
/* ]]> */
        </script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/themes/pezeshkyar/elementor/assets/pzy-newsletter/main.js" id="pzy-newsletter-js"></script>
        <script type="text/javascript" id="pzy-minicart-js-extra">
            /* <![CDATA[ */
            var pzy_mini_crt_obj = { "ajax_url": "https:\/\/pezeshk-yar.ir\/wp-admin\/admin-ajax.php", "security": "d9aab493ec" };
/* ]]> */
        </script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/themes/pezeshkyar/elementor/assets/pzy-minicart/main.js" id="pzy-minicart-js"></script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/js/sourcebuster/sourcebuster.min.js?ver=9.5.1" id="sourcebuster-js-js"></script>
        <script type="text/javascript" id="wc-order-attribution-js-extra">
            /* <![CDATA[ */
            var wc_order_attribution = { "params": { "lifetime": 1.0e-5, "session": 30, "base64": false, "ajaxurl": "https:\/\/pezeshk-yar.ir\/wp-admin\/admin-ajax.php", "prefix": "wc_order_attribution_", "allowTracking": true }, "fields": { "source_type": "current.typ", "referrer": "current_add.rf", "utm_campaign": "current.cmp", "utm_source": "current.src", "utm_medium": "current.mdm", "utm_content": "current.cnt", "utm_id": "current.id", "utm_term": "current.trm", "utm_source_platform": "current.plt", "utm_creative_format": "current.fmt", "utm_marketing_tactic": "current.tct", "session_entry": "current_add.ep", "session_start_time": "current_add.fd", "session_pages": "session.pgs", "session_count": "udata.vst", "user_agent": "udata.uag" } };
/* ]]> */
        </script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/js/frontend/order-attribution.min.js?ver=9.5.1" id="wc-order-attribution-js"></script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/elementor-pro/assets/js/webpack-pro.runtime.min.js?ver=3.25.4" id="elementor-pro-webpack-runtime-js"></script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/elementor/assets/js/webpack.runtime.min.js?ver=3.25.10" id="elementor-webpack-runtime-js"></script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/elementor/assets/js/frontend-modules.min.js?ver=3.25.10" id="elementor-frontend-modules-js"></script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-includes/js/dist/hooks.min.js?ver=4d63a3d491d11ffd8ac6" id="wp-hooks-js"></script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-includes/js/dist/i18n.min.js?ver=5e580eb46a90c2b997e6" id="wp-i18n-js"></script>
        <script type="text/javascript" id="wp-i18n-js-after">
            /* <![CDATA[ */
            wp.i18n.setLocaleData({ 'text direction\u0004ltr': ['rtl'] });
/* ]]> */
        </script>
        <script type="text/javascript" id="elementor-pro-frontend-js-before">
            /* <![CDATA[ */
            var ElementorProFrontendConfig = { "ajaxurl": "https:\/\/pezeshk-yar.ir\/wp-admin\/admin-ajax.php", "nonce": "76c808b3d3", "urls": { "assets": "https:\/\/pezeshk-yar.ir\/wp-content\/plugins\/elementor-pro\/assets\/", "rest": "https:\/\/pezeshk-yar.ir\/wp-json\/" }, "settings": { "lazy_load_background_images": true }, "popup": { "hasPopUps": false }, "shareButtonsNetworks": { "facebook": { "title": "Facebook", "has_counter": true }, "twitter": { "title": "Twitter" }, "linkedin": { "title": "LinkedIn", "has_counter": true }, "pinterest": { "title": "Pinterest", "has_counter": true }, "reddit": { "title": "Reddit", "has_counter": true }, "vk": { "title": "VK", "has_counter": true }, "odnoklassniki": { "title": "OK", "has_counter": true }, "tumblr": { "title": "Tumblr" }, "digg": { "title": "Digg" }, "skype": { "title": "Skype" }, "stumbleupon": { "title": "StumbleUpon", "has_counter": true }, "mix": { "title": "Mix" }, "telegram": { "title": "Telegram" }, "pocket": { "title": "Pocket", "has_counter": true }, "xing": { "title": "XING", "has_counter": true }, "whatsapp": { "title": "WhatsApp" }, "email": { "title": "Email" }, "print": { "title": "Print" }, "x-twitter": { "title": "X" }, "threads": { "title": "Threads" } }, "woocommerce": { "menu_cart": { "cart_page_url": "https:\/\/pezeshk-yar.ir\/cart\/", "checkout_page_url": "https:\/\/pezeshk-yar.ir\/checkout\/", "fragments_nonce": "5f19eb3e94" } }, "facebook_sdk": { "lang": "fa_IR", "app_id": "" }, "lottie": { "defaultAnimationUrl": "https:\/\/pezeshk-yar.ir\/wp-content\/plugins\/elementor-pro\/modules\/lottie\/assets\/animations\/default.json" } };
/* ]]> */
        </script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/elementor-pro/assets/js/frontend.min.js?ver=3.25.4" id="elementor-pro-frontend-js"></script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-includes/js/jquery/ui/core.min.js?ver=1.13.3" id="jquery-ui-core-js"></script>
        <script type="text/javascript" id="elementor-frontend-js-before">
            /* <![CDATA[ */
            var elementorFrontendConfig = { "environmentMode": { "edit": false, "wpPreview": false, "isScriptDebug": false }, "i18n": { "shareOnFacebook": "\u0627\u0634\u062a\u0631\u0627\u06a9 \u06af\u0630\u0627\u0631\u06cc \u062f\u0631 Facebook", "shareOnTwitter": "\u0627\u0634\u062a\u0631\u0627\u06a9 \u06af\u0630\u0627\u0631\u06cc \u062f\u0631 Twitter", "pinIt": "\u067e\u06cc\u0646 \u06a9\u0646\u06cc\u062f", "download": "\u062f\u0627\u0646\u0644\u0648\u062f", "downloadImage": "\u062f\u0627\u0646\u0644\u0648\u062f \u062a\u0635\u0648\u06cc\u0631", "fullscreen": "\u062a\u0645\u0627\u0645\u200c\u0635\u0641\u062d\u0647", "zoom": "\u0628\u0632\u0631\u06af\u0646\u0645\u0627\u06cc\u06cc", "share": "\u0627\u0634\u062a\u0631\u0627\u06a9 \u06af\u0630\u0627\u0631\u06cc", "playVideo": "\u067e\u062e\u0634 \u0648\u06cc\u062f\u06cc\u0648", "previous": "\u0642\u0628\u0644\u06cc", "next": "\u0628\u0639\u062f\u06cc", "close": "\u0628\u0633\u062a\u0646", "a11yCarouselWrapperAriaLabel": "\u0686\u0631\u062e \u0641\u0644\u06a9 | \u067e\u06cc\u0645\u0627\u06cc\u0634 \u0627\u0641\u0642\u06cc: \u0641\u0644\u0634 \u0686\u067e \u0648 \u0631\u0627\u0633\u062a", "a11yCarouselPrevSlideMessage": "\u0627\u0633\u0644\u0627\u06cc\u062f \u0642\u0628\u0644\u06cc", "a11yCarouselNextSlideMessage": "\u0627\u0633\u0644\u0627\u06cc\u062f \u0628\u0639\u062f\u06cc", "a11yCarouselFirstSlideMessage": "\u0627\u06cc\u0646 \u0627\u0648\u0644\u06cc\u0646 \u0627\u0633\u0644\u0627\u06cc\u062f \u0627\u0633\u062a", "a11yCarouselLastSlideMessage": "\u0627\u06cc\u0646 \u0622\u062e\u0631\u06cc\u0646 \u0627\u0633\u0644\u0627\u06cc\u062f \u0627\u0633\u062a", "a11yCarouselPaginationBulletMessage": "\u0631\u0641\u062a\u0646 \u0628\u0647 \u0627\u0633\u0644\u0627\u06cc\u062f" }, "is_rtl": true, "breakpoints": { "xs": 0, "sm": 480, "md": 768, "lg": 1025, "xl": 1440, "xxl": 1600 }, "responsive": { "breakpoints": { "mobile": { "label": "\u062d\u0627\u0644\u062a \u0639\u0645\u0648\u062f\u06cc \u0645\u0648\u0628\u0627\u06cc\u0644", "value": 767, "default_value": 767, "direction": "max", "is_enabled": true }, "mobile_extra": { "label": "\u062d\u0627\u0644\u062a \u0627\u0641\u0642\u06cc \u0645\u0648\u0628\u0627\u06cc\u0644", "value": 880, "default_value": 880, "direction": "max", "is_enabled": true }, "tablet": { "label": "\u062d\u0627\u0644\u062a \u0639\u0645\u0648\u062f\u06cc \u062a\u0628\u0644\u062a", "value": 1024, "default_value": 1024, "direction": "max", "is_enabled": true }, "tablet_extra": { "label": "\u062d\u0627\u0644\u062a \u0627\u0641\u0642\u06cc \u062a\u0628\u0644\u062a", "value": 1200, "default_value": 1200, "direction": "max", "is_enabled": false }, "laptop": { "label": "\u0644\u067e \u062a\u0627\u067e", "value": 1366, "default_value": 1366, "direction": "max", "is_enabled": false }, "widescreen": { "label": "\u0635\u0641\u062d\u0647 \u0639\u0631\u06cc\u0636 (Widescreen)", "value": 2400, "default_value": 2400, "direction": "min", "is_enabled": false } }, "hasCustomBreakpoints": true }, "version": "3.25.10", "is_static": false, "experimentalFeatures": { "e_font_icon_svg": true, "additional_custom_breakpoints": true, "container": true, "e_swiper_latest": true, "e_nested_atomic_repeaters": true, "e_optimized_control_loading": true, "e_onboarding": true, "e_css_smooth_scroll": true, "theme_builder_v2": true, "home_screen": true, "nested-elements": true, "editor_v2": true, "link-in-bio": true, "floating-buttons": true, "mega-menu": true }, "urls": { "assets": "https:\/\/pezeshk-yar.ir\/wp-content\/plugins\/elementor\/assets\/", "ajaxurl": "https:\/\/pezeshk-yar.ir\/wp-admin\/admin-ajax.php", "uploadUrl": "https:\/\/pezeshk-yar.ir\/wp-content\/uploads" }, "nonces": { "floatingButtonsClickTracking": "a12b686f5f" }, "swiperClass": "swiper", "settings": { "page": [], "editorPreferences": [] }, "kit": { "woocommerce_notices_elements": ["wc_info"], "active_breakpoints": ["viewport_mobile", "viewport_mobile_extra", "viewport_tablet"], "global_image_lightbox": "yes", "lightbox_enable_counter": "yes", "lightbox_enable_fullscreen": "yes", "lightbox_enable_zoom": "yes", "lightbox_enable_share": "yes", "lightbox_title_src": "title", "lightbox_description_src": "description" }, "post": { "id": 304, "title": "%D9%88%D8%B1%D9%88%D8%AF%20%D9%88%20%D8%AB%D8%A8%D8%AA%20%D9%86%D8%A7%D9%85%20%E2%80%93%20%D9%BE%D8%B2%D8%B4%DA%A9%20%DB%8C%D8%A7%D8%B1", "excerpt": "", "featuredImage": false } };
/* ]]> */
        </script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/elementor/assets/js/frontend.min.js?ver=3.25.10" id="elementor-frontend-js"></script>
        <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/elementor-pro/assets/js/elements-handlers.min.js?ver=3.25.4" id="pro-elements-handlers-js"></script>

    </form>
</body>
</html>
