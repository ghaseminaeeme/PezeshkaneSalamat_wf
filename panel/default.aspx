<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="pezeshkaneSalamat_wf.panel._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <%-- <title>ورود به پنل کاربری پزشکان </title>
    <link href="/Admin/assets/css/login.css" rel="stylesheet" />
    <link href="../assets/css/login.css" rel="stylesheet" />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/uploads/elementor/css/custom-frontend-rtl.min.css?ver=1733764179' type='text/css' media='all' />
    <link rel='stylesheet' href='https://pezeshk-yar.ir/wp-content/uploads/elementor/css/post-146.css?ver=1733764183' type='text/css' media='all' />
        <link rel='stylesheet' href='https://pezeshk-yar.ir/wp-content/uploads/elementor/css/post-304.css?ver=1733771505' type='text/css' media='all' />--%>


        <meta charset="UTF-8">
    <script>document.documentElement.className = document.documentElement.className + ' yes-js js_active js'</script>
    <title>ورود و ثبت نام &#8211; پزشک یار</title>
    <meta name='robots' content='max-image-preview:large' />
    <style>
        img:is([sizes="auto" i], [sizes^="auto," i]) {
            contain-intrinsic-size: 3000px 1500px
        }
    </style>
    <link rel="preload" href="https://pezeshk-yar.ir/wp-content/plugins/rate-my-post/public/css/fonts/ratemypost.ttf" type="font/ttf" as="font" crossorigin="anonymous">
    <link rel="alternate" type="application/rss+xml" title="پزشک یار &raquo; خوراک" href="https://pezeshk-yar.ir/feed/" />
    <link rel="alternate" type="application/rss+xml" title="پزشک یار &raquo; خوراک دیدگاه‌ها" href="https://pezeshk-yar.ir/comments/feed/" />
    <script type="text/javascript">
        /* <![CDATA[ */
        window._wpemojiSettings = { "baseUrl": "https:\/\/s.w.org\/images\/core\/emoji\/15.0.3\/72x72\/", "ext": ".png", "svgUrl": "https:\/\/s.w.org\/images\/core\/emoji\/15.0.3\/svg\/", "svgExt": ".svg", "source": { "concatemoji": "https:\/\/pezeshk-yar.ir\/wp-includes\/js\/wp-emoji-release.min.js?ver=6.7.1" } };
        /*! This file is auto-generated */
        !function (i, n) { var o, s, e; function c(e) { try { var t = { supportTests: e, timestamp: (new Date).valueOf() }; sessionStorage.setItem(o, JSON.stringify(t)) } catch (e) { } } function p(e, t, n) { e.clearRect(0, 0, e.canvas.width, e.canvas.height), e.fillText(t, 0, 0); var t = new Uint32Array(e.getImageData(0, 0, e.canvas.width, e.canvas.height).data), r = (e.clearRect(0, 0, e.canvas.width, e.canvas.height), e.fillText(n, 0, 0), new Uint32Array(e.getImageData(0, 0, e.canvas.width, e.canvas.height).data)); return t.every(function (e, t) { return e === r[t] }) } function u(e, t, n) { switch (t) { case "flag": return n(e, "\ud83c\udff3\ufe0f\u200d\u26a7\ufe0f", "\ud83c\udff3\ufe0f\u200b\u26a7\ufe0f") ? !1 : !n(e, "\ud83c\uddfa\ud83c\uddf3", "\ud83c\uddfa\u200b\ud83c\uddf3") && !n(e, "\ud83c\udff4\udb40\udc67\udb40\udc62\udb40\udc65\udb40\udc6e\udb40\udc67\udb40\udc7f", "\ud83c\udff4\u200b\udb40\udc67\u200b\udb40\udc62\u200b\udb40\udc65\u200b\udb40\udc6e\u200b\udb40\udc67\u200b\udb40\udc7f"); case "emoji": return !n(e, "\ud83d\udc26\u200d\u2b1b", "\ud83d\udc26\u200b\u2b1b") }return !1 } function f(e, t, n) { var r = "undefined" != typeof WorkerGlobalScope && self instanceof WorkerGlobalScope ? new OffscreenCanvas(300, 150) : i.createElement("canvas"), a = r.getContext("2d", { willReadFrequently: !0 }), o = (a.textBaseline = "top", a.font = "600 32px Arial", {}); return e.forEach(function (e) { o[e] = t(a, e, n) }), o } function t(e) { var t = i.createElement("script"); t.src = e, t.defer = !0, i.head.appendChild(t) } "undefined" != typeof Promise && (o = "wpEmojiSettingsSupports", s = ["flag", "emoji"], n.supports = { everything: !0, everythingExceptFlag: !0 }, e = new Promise(function (e) { i.addEventListener("DOMContentLoaded", e, { once: !0 }) }), new Promise(function (t) { var n = function () { try { var e = JSON.parse(sessionStorage.getItem(o)); if ("object" == typeof e && "number" == typeof e.timestamp && (new Date).valueOf() < e.timestamp + 604800 && "object" == typeof e.supportTests) return e.supportTests } catch (e) { } return null }(); if (!n) { if ("undefined" != typeof Worker && "undefined" != typeof OffscreenCanvas && "undefined" != typeof URL && URL.createObjectURL && "undefined" != typeof Blob) try { var e = "postMessage(" + f.toString() + "(" + [JSON.stringify(s), u.toString(), p.toString()].join(",") + "));", r = new Blob([e], { type: "text/javascript" }), a = new Worker(URL.createObjectURL(r), { name: "wpTestEmojiSupports" }); return void (a.onmessage = function (e) { c(n = e.data), a.terminate(), t(n) }) } catch (e) { } c(n = f(s, u, p)) } t(n) }).then(function (e) { for (var t in e) n.supports[t] = e[t], n.supports.everything = n.supports.everything && n.supports[t], "flag" !== t && (n.supports.everythingExceptFlag = n.supports.everythingExceptFlag && n.supports[t]); n.supports.everythingExceptFlag = n.supports.everythingExceptFlag && !n.supports.flag, n.DOMReady = !1, n.readyCallback = function () { n.DOMReady = !0 } }).then(function () { return e }).then(function () { var e; n.supports.everything || (n.readyCallback(), (e = n.source || {}).concatemoji ? t(e.concatemoji) : e.wpemoji && e.twemoji && (t(e.twemoji), t(e.wpemoji))) })) }((window, document), window._wpemojiSettings);
/* ]]> */
    </script>
    <style type='text/css'>

        img.wp-smiley, img.emoji {
            display: inline !important;
            border: none !important;
            box-shadow: none !important;
            height: 1em !important;
            width: 1em !important;
            margin: 0 0.07em !important;
            vertical-align: -0.1em !important;
            background: none !important;
            padding: 0 !important;
        }
    </style>
    <link rel='stylesheet' href='https://pezeshk-yar.ir/wp-content/plugins/yith-woocommerce-wishlist/assets/css/jquery.selectBox.css?ver=1.2.0' type='text/css' media='all' />
    <link rel='stylesheet' href='//pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/css/prettyPhoto-rtl.css?ver=3.1.6' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/yith-woocommerce-wishlist/assets/css/style.css?ver=4.0.1' type='text/css' media='all' />
    <style  type='text/css'>
        :root {
            --color-add-to-wishlist-background: #333333;
            --color-add-to-wishlist-text: #FFFFFF;
            --color-add-to-wishlist-border: #333333;
            --color-add-to-wishlist-background-hover: #333333;
            --color-add-to-wishlist-text-hover: #FFFFFF;
            --color-add-to-wishlist-border-hover: #333333;
            --rounded-corners-radius: 16px;
            --add-to-cart-rounded-corners-radius: 16px;
            --color-headers-background: #F4F4F4;
            --feedback-duration: 3s
        }

        :root {
            --color-add-to-wishlist-background: #333333;
            --color-add-to-wishlist-text: #FFFFFF;
            --color-add-to-wishlist-border: #333333;
            --color-add-to-wishlist-background-hover: #333333;
            --color-add-to-wishlist-text-hover: #FFFFFF;
            --color-add-to-wishlist-border-hover: #333333;
            --rounded-corners-radius: 16px;
            --add-to-cart-rounded-corners-radius: 16px;
            --color-headers-background: #F4F4F4;
            --feedback-duration: 3s
        }
    </style>
    <style  type='text/css'>
        /*! This file is auto-generated */
        .wp-block-button__link {
            color: #fff;
            background-color: #32373c;
            border-radius: 9999px;
            box-shadow: none;
            text-decoration: none;
            padding: calc(.667em + 2px) calc(1.333em + 2px);
            font-size: 1.125em
        }

        .wp-block-file__button {
            background: #32373c;
            color: #fff;
            text-decoration: none
        }
    </style>
    <style id='global-styles-inline-css' type='text/css'>
        :root {
            --wp--preset--aspect-ratio--square: 1;
            --wp--preset--aspect-ratio--4-3: 4/3;
            --wp--preset--aspect-ratio--3-4: 3/4;
            --wp--preset--aspect-ratio--3-2: 3/2;
            --wp--preset--aspect-ratio--2-3: 2/3;
            --wp--preset--aspect-ratio--16-9: 16/9;
            --wp--preset--aspect-ratio--9-16: 9/16;
            --wp--preset--color--black: #000000;
            --wp--preset--color--cyan-bluish-gray: #abb8c3;
            --wp--preset--color--white: #ffffff;
            --wp--preset--color--pale-pink: #f78da7;
            --wp--preset--color--vivid-red: #cf2e2e;
            --wp--preset--color--luminous-vivid-orange: #ff6900;
            --wp--preset--color--luminous-vivid-amber: #fcb900;
            --wp--preset--color--light-green-cyan: #7bdcb5;
            --wp--preset--color--vivid-green-cyan: #00d084;
            --wp--preset--color--pale-cyan-blue: #8ed1fc;
            --wp--preset--color--vivid-cyan-blue: #0693e3;
            --wp--preset--color--vivid-purple: #9b51e0;
            --wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);
            --wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);
            --wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);
            --wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);
            --wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);
            --wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);
            --wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);
            --wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);
            --wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);
            --wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);
            --wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);
            --wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);
            --wp--preset--font-size--small: 13px;
            --wp--preset--font-size--medium: 20px;
            --wp--preset--font-size--large: 36px;
            --wp--preset--font-size--x-large: 42px;
            --wp--preset--font-family--inter: "Inter", sans-serif;
            --wp--preset--font-family--cardo: Cardo;
            --wp--preset--spacing--20: 0.44rem;
            --wp--preset--spacing--30: 0.67rem;
            --wp--preset--spacing--40: 1rem;
            --wp--preset--spacing--50: 1.5rem;
            --wp--preset--spacing--60: 2.25rem;
            --wp--preset--spacing--70: 3.38rem;
            --wp--preset--spacing--80: 5.06rem;
            --wp--preset--shadow--natural: 6px 6px 9px rgba(0, 0, 0, 0.2);
            --wp--preset--shadow--deep: 12px 12px 50px rgba(0, 0, 0, 0.4);
            --wp--preset--shadow--sharp: 6px 6px 0px rgba(0, 0, 0, 0.2);
            --wp--preset--shadow--outlined: 6px 6px 0px -3px rgba(255, 255, 255, 1), 6px 6px rgba(0, 0, 0, 1);
            --wp--preset--shadow--crisp: 6px 6px 0px rgba(0, 0, 0, 1);
        }

        :where(.is-layout-flex) {
            gap: 0.5em;
        }

        :where(.is-layout-grid) {
            gap: 0.5em;
        }

        body .is-layout-flex {
            display: flex;
        }

        .is-layout-flex {
            flex-wrap: wrap;
            align-items: center;
        }

            .is-layout-flex > :is(*, div) {
                margin: 0;
            }

        body .is-layout-grid {
            display: grid;
        }

        .is-layout-grid > :is(*, div) {
            margin: 0;
        }

        :where(.wp-block-columns.is-layout-flex) {
            gap: 2em;
        }

        :where(.wp-block-columns.is-layout-grid) {
            gap: 2em;
        }

        :where(.wp-block-post-template.is-layout-flex) {
            gap: 1.25em;
        }

        :where(.wp-block-post-template.is-layout-grid) {
            gap: 1.25em;
        }

        .has-black-color {
            color: var(--wp--preset--color--black) !important;
        }

        .has-cyan-bluish-gray-color {
            color: var(--wp--preset--color--cyan-bluish-gray) !important;
        }

        .has-white-color {
            color: var(--wp--preset--color--white) !important;
        }

        .has-pale-pink-color {
            color: var(--wp--preset--color--pale-pink) !important;
        }

        .has-vivid-red-color {
            color: var(--wp--preset--color--vivid-red) !important;
        }

        .has-luminous-vivid-orange-color {
            color: var(--wp--preset--color--luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-amber-color {
            color: var(--wp--preset--color--luminous-vivid-amber) !important;
        }

        .has-light-green-cyan-color {
            color: var(--wp--preset--color--light-green-cyan) !important;
        }

        .has-vivid-green-cyan-color {
            color: var(--wp--preset--color--vivid-green-cyan) !important;
        }

        .has-pale-cyan-blue-color {
            color: var(--wp--preset--color--pale-cyan-blue) !important;
        }

        .has-vivid-cyan-blue-color {
            color: var(--wp--preset--color--vivid-cyan-blue) !important;
        }

        .has-vivid-purple-color {
            color: var(--wp--preset--color--vivid-purple) !important;
        }

        .has-black-background-color {
            background-color: var(--wp--preset--color--black) !important;
        }

        .has-cyan-bluish-gray-background-color {
            background-color: var(--wp--preset--color--cyan-bluish-gray) !important;
        }

        .has-white-background-color {
            background-color: var(--wp--preset--color--white) !important;
        }

        .has-pale-pink-background-color {
            background-color: var(--wp--preset--color--pale-pink) !important;
        }

        .has-vivid-red-background-color {
            background-color: var(--wp--preset--color--vivid-red) !important;
        }

        .has-luminous-vivid-orange-background-color {
            background-color: var(--wp--preset--color--luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-amber-background-color {
            background-color: var(--wp--preset--color--luminous-vivid-amber) !important;
        }

        .has-light-green-cyan-background-color {
            background-color: var(--wp--preset--color--light-green-cyan) !important;
        }

        .has-vivid-green-cyan-background-color {
            background-color: var(--wp--preset--color--vivid-green-cyan) !important;
        }

        .has-pale-cyan-blue-background-color {
            background-color: var(--wp--preset--color--pale-cyan-blue) !important;
        }

        .has-vivid-cyan-blue-background-color {
            background-color: var(--wp--preset--color--vivid-cyan-blue) !important;
        }

        .has-vivid-purple-background-color {
            background-color: var(--wp--preset--color--vivid-purple) !important;
        }

        .has-black-border-color {
            border-color: var(--wp--preset--color--black) !important;
        }

        .has-cyan-bluish-gray-border-color {
            border-color: var(--wp--preset--color--cyan-bluish-gray) !important;
        }

        .has-white-border-color {
            border-color: var(--wp--preset--color--white) !important;
        }

        .has-pale-pink-border-color {
            border-color: var(--wp--preset--color--pale-pink) !important;
        }

        .has-vivid-red-border-color {
            border-color: var(--wp--preset--color--vivid-red) !important;
        }

        .has-luminous-vivid-orange-border-color {
            border-color: var(--wp--preset--color--luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-amber-border-color {
            border-color: var(--wp--preset--color--luminous-vivid-amber) !important;
        }

        .has-light-green-cyan-border-color {
            border-color: var(--wp--preset--color--light-green-cyan) !important;
        }

        .has-vivid-green-cyan-border-color {
            border-color: var(--wp--preset--color--vivid-green-cyan) !important;
        }

        .has-pale-cyan-blue-border-color {
            border-color: var(--wp--preset--color--pale-cyan-blue) !important;
        }

        .has-vivid-cyan-blue-border-color {
            border-color: var(--wp--preset--color--vivid-cyan-blue) !important;
        }

        .has-vivid-purple-border-color {
            border-color: var(--wp--preset--color--vivid-purple) !important;
        }

        .has-vivid-cyan-blue-to-vivid-purple-gradient-background {
            background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;
        }

        .has-light-green-cyan-to-vivid-green-cyan-gradient-background {
            background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;
        }

        .has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background {
            background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;
        }

        .has-luminous-vivid-orange-to-vivid-red-gradient-background {
            background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;
        }

        .has-very-light-gray-to-cyan-bluish-gray-gradient-background {
            background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;
        }

        .has-cool-to-warm-spectrum-gradient-background {
            background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;
        }

        .has-blush-light-purple-gradient-background {
            background: var(--wp--preset--gradient--blush-light-purple) !important;
        }

        .has-blush-bordeaux-gradient-background {
            background: var(--wp--preset--gradient--blush-bordeaux) !important;
        }

        .has-luminous-dusk-gradient-background {
            background: var(--wp--preset--gradient--luminous-dusk) !important;
        }

        .has-pale-ocean-gradient-background {
            background: var(--wp--preset--gradient--pale-ocean) !important;
        }

        .has-electric-grass-gradient-background {
            background: var(--wp--preset--gradient--electric-grass) !important;
        }

        .has-midnight-gradient-background {
            background: var(--wp--preset--gradient--midnight) !important;
        }

        .has-small-font-size {
            font-size: var(--wp--preset--font-size--small) !important;
        }

        .has-medium-font-size {
            font-size: var(--wp--preset--font-size--medium) !important;
        }

        .has-large-font-size {
            font-size: var(--wp--preset--font-size--large) !important;
        }

        .has-x-large-font-size {
            font-size: var(--wp--preset--font-size--x-large) !important;
        }

        :where(.wp-block-post-template.is-layout-flex) {
            gap: 1.25em;
        }

        :where(.wp-block-post-template.is-layout-grid) {
            gap: 1.25em;
        }

        :where(.wp-block-columns.is-layout-flex) {
            gap: 2em;
        }

        :where(.wp-block-columns.is-layout-grid) {
            gap: 2em;
        }

        :root :where(.wp-block-pullquote) {
            font-size: 1.5em;
            line-height: 1.6;
        }
    </style>
    <link rel='stylesheet' href='https://pezeshk-yar.ir/wp-content/plugins/pezeshkyar-core/assets/css/main.css?ver=6.7.1' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/pezeshkyar-core//elementor/assets/pzy-staffs-slider/main.css?ver=6.7.1' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/rate-my-post/public/css/rate-my-post.min.css?ver=4.2.5' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/css/woocommerce-layout-rtl.css?ver=9.5.1' type='text/css' media='all' />
    <link rel='stylesheet'  href='https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/css/woocommerce-smallscreen-rtl.css?ver=9.5.1' type='text/css' media='only screen and (max-width: 768px)' />
    <link rel='stylesheet' href='https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/css/woocommerce-rtl.css?ver=9.5.1' type='text/css' media='all' />
    <style id='woocommerce-inline-inline-css' type='text/css'>
        .woocommerce form .form-row .required {
            visibility: visible;
        }
    </style>
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
    <link rel='stylesheet' ' href='https://pezeshk-yar.ir/wp-content/uploads/elementor/css/post-304.css?ver=1733771505' type='text/css' media='all' />
    <script type="text/javascript" src="https://pezeshk-yar.ir/wp-includes/js/jquery/jquery.min.js?ver=3.7.1" ></script>
    <script type="text/javascript" src="https://pezeshk-yar.ir/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.4.1" ></script>
    <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/js/jquery-blockui/jquery.blockUI.min.js?ver=2.7.0-wc.9.5.1"  defer="defer" data-wp-strategy="defer"></script>
    <script type="text/javascript" id="wc-add-to-cart-js-extra">
        /* <![CDATA[ */
        var wc_add_to_cart_params = { "ajax_url": "\/wp-admin\/admin-ajax.php", "wc_ajax_url": "\/?wc-ajax=%%endpoint%%", "i18n_view_cart": "\u0645\u0634\u0627\u0647\u062f\u0647 \u0633\u0628\u062f \u062e\u0631\u06cc\u062f", "cart_url": "https:\/\/pezeshk-yar.ir\/cart\/", "is_cart": "", "cart_redirect_after_add": "no" };
/* ]]> */
    </script>
    <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/js/frontend/add-to-cart.min.js?ver=9.5.1"  defer="defer" data-wp-strategy="defer"></script>
    <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/js/js-cookie/js.cookie.min.js?ver=2.1.4-wc.9.5.1"  defer="defer" data-wp-strategy="defer"></script>
    <script type="text/javascript" id="woocommerce-js-extra">
        /* <![CDATA[ */
        var woocommerce_params = { "ajax_url": "\/wp-admin\/admin-ajax.php", "wc_ajax_url": "\/?wc-ajax=%%endpoint%%" };
/* ]]> */
    </script>
    <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/js/frontend/woocommerce.min.js?ver=9.5.1" defer="defer" data-wp-strategy="defer"></script>
    <script type="text/javascript" src="https://pezeshk-yar.ir/wp-content/themes/pezeshkyar/assets/lib/feather-icons/dist/feather.min.js?ver=6.7.1" ></script>
    <link rel="https://api.w.org/" href="https://pezeshk-yar.ir/wp-json/" />
    <link rel="alternate" title="JSON" type="application/json" href="https://pezeshk-yar.ir/wp-json/wp/v2/pages/304" />
    <link rel="EditURI" type="application/rsd+xml" title="RSD" href="https://pezeshk-yar.ir/xmlrpc.php?rsd" />
    <meta name="generator" content="WordPress 6.7.1" />
    <meta name="generator" content="WooCommerce 9.5.1" />
    <link rel="canonical" href="https://pezeshk-yar.ir/%d9%88%d8%b1%d9%88%d8%af-%d9%88-%d8%ab%d8%a8%d8%aa-%d9%86%d8%a7%d9%85/" />
    <link rel='shortlink' href='https://pezeshk-yar.ir/?p=304' />
    <link rel="alternate" title="oEmbed (JSON)" type="application/json+oembed" href="https://pezeshk-yar.ir/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fpezeshk-yar.ir%2F%25d9%2588%25d8%25b1%25d9%2588%25d8%25af-%25d9%2588-%25d8%25ab%25d8%25a8%25d8%25aa-%25d9%2586%25d8%25a7%25d9%2585%2F" />
    <link rel="alternate" title="oEmbed (XML)" type="text/xml+oembed" href="https://pezeshk-yar.ir/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fpezeshk-yar.ir%2F%25d9%2588%25d8%25b1%25d9%2588%25d8%25af-%25d9%2588-%25d8%25ab%25d8%25a8%25d8%25aa-%25d9%2586%25d8%25a7%25d9%2585%2F&#038;format=xml" />
    <meta name="generator" content="Redux 4.5.4" />
    <style>
        :root {
            --content-width: 1216px;
        }

        .woocommerce ul.products {
            gap: 24px 2.5%;
        }

        ul.products li.product.pzy-loop-item {
            width: 31.666666666667%;
        }

        @media (min-width: 768px) and (max-width: 1023px) {
            .woocommerce ul.products {
                gap: 24px 2.5%;
            }

            ul.products li.product.pzy-loop-item {
                width: 31.666666666667%;
            }
        }

        @media (max-width: 767px) {
            .woocommerce ul.products {
                gap: 24px 2.5%;
            }

            ul.products li.product.pzy-loop-item {
                width: 48.75%;
            }
        }

        @media (max-width: 488px) {
            ul.products li.product.pzy-loop-item {
                width: 100%;
            }
        }

        /*    related products */
        .woocommerce .related-products ul.products {
            gap: 24px 1.1%;
        }

        .related-products ul.products li.product.pzy-loop-item {
            width: 19.12%;
        }

        @media (min-width: 768px) and (max-width: 1023px) {
            .woocommerce .related-products ul.products {
                gap: 24px 1.0%;
            }

            .related-products ul.products li.product.pzy-loop-item {
                width: 32.666666666667%;
            }
        }

        @media (max-width: 767px) {
            .woocommerce .related-products ul.products {
                gap: 24px 1.0%;
            }

            .related-products ul.products li.product.pzy-loop-item {
                width: 49.5%;
            }
        }

        @media (max-width: 488px) {
            .related-products ul.products li.product.pzy-loop-item {
                width: 100%;
            }
        }

        /**/
        .pzy-blog-posts {
            grid-template-columns: repeat(2, 1fr);
            gap: 24px 2.0%;
        }

            .pzy-blog-posts .pzy-post:nth-child(2n+3):before {
                content: "";
                display: block;
                z-index: 1;
                position: absolute;
                left: 0;
                right: 0;
                width: 100%;
                height: 1px;
                background: #D7DBDF;
                margin-top: -36px;
            }

        @media (min-width: 768px) and (max-width: 1023px) {
            .pzy-blog-posts {
                grid-template-columns: repeat(2, 1fr);
                gap: 24px 2.0%;
            }
        }

        @media (max-width: 767px) {
            .pzy-blog-posts {
                grid-template-columns: repeat(1, 1fr);
                gap: 24px 2.0%;
            }

                .pzy-blog-posts .pzy-post:nth-child(2n+3):before {
                    content: unset;
                    display: none;
                }

                .pzy-blog-posts .pzy-post:nth-child(1n+2):before {
                    content: "";
                    display: block;
                    z-index: 1;
                    position: absolute;
                    left: 0;
                    right: 0;
                    width: 100%;
                    height: 1px;
                    background: #D7DBDF;
                    margin-top: -36px;
                }
        }
    </style>
    <style>
        @font-face {
            font-family: 'Morabba';
            font-style: normal;
            font-weight: normal;
            font-display: auto;
            src: url('https://pezeshk-yar.ir/wp-content/uploads/2024/12/Morabba-Regular.ttf') format('truetype');
        }

        @font-face {
            font-family: 'Yekan Bakh FaNum';
            font-style: normal;
            font-weight: 100;
            font-display: auto;
            src: url('https://pezeshk-yar.ir/wp-content/uploads/2024/07/YekanBakhFaNum-Thin-1.woff2') format('woff2'), url('https://pezeshk-yar.ir/wp-content/uploads/2024/07/YekanBakhFaNum-Thin.woff') format('woff');
        }

        @font-face {
            font-family: 'Yekan Bakh FaNum';
            font-style: normal;
            font-weight: 300;
            font-display: auto;
            src: url('https://pezeshk-yar.ir/wp-content/uploads/2024/07/YekanBakhFaNum-Light.woff2') format('woff2'), url('https://pezeshk-yar.ir/wp-content/uploads/2024/07/YekanBakhFaNum-Light.woff') format('woff');
        }

        @font-face {
            font-family: 'Yekan Bakh FaNum';
            font-style: normal;
            font-weight: normal;
            font-display: auto;
            src: url('https://pezeshk-yar.ir/wp-content/uploads/2024/07/YekanBakhFaNum-Regular.woff2') format('woff2'), url('https://pezeshk-yar.ir/wp-content/uploads/2024/07/YekanBakhFaNum-Regular.woff') format('woff');
        }

        @font-face {
            font-family: 'Yekan Bakh FaNum';
            font-style: normal;
            font-weight: 600;
            font-display: auto;
            src: url('https://pezeshk-yar.ir/wp-content/uploads/2024/07/YekanBakhFaNum-SemiBold.woff2') format('woff2'), url('https://pezeshk-yar.ir/wp-content/uploads/2024/07/YekanBakhFaNum-SemiBold.woff') format('woff');
        }

        @font-face {
            font-family: 'Yekan Bakh FaNum';
            font-style: normal;
            font-weight: bold;
            font-display: auto;
            src: url('https://pezeshk-yar.ir/wp-content/uploads/2024/07/YekanBakhFaNum-Bold.woff2') format('woff2'), url('https://pezeshk-yar.ir/wp-content/uploads/2024/07/YekanBakhFaNum-Bold.woff') format('woff');
        }

        @font-face {
            font-family: 'Yekan Bakh FaNum';
            font-style: normal;
            font-weight: 800;
            font-display: auto;
            src: url('https://pezeshk-yar.ir/wp-content/uploads/2024/07/YekanBakhFaNum-ExtraBold.woff2') format('woff2'), url('https://pezeshk-yar.ir/wp-content/uploads/2024/07/YekanBakhFaNum-ExtraBold.woff') format('woff');
        }

        @font-face {
            font-family: 'Yekan Bakh FaNum';
            font-style: normal;
            font-weight: 900;
            font-display: auto;
            src: url('https://pezeshk-yar.ir/wp-content/uploads/2024/07/YekanBakhFaNum-Black.woff2') format('woff2'), url('https://pezeshk-yar.ir/wp-content/uploads/2024/07/YekanBakhFaNum-Black.woff') format('woff');
        }
    </style>
    <noscript>
    <style>
        .woocommerce-product-gallery {
            opacity: 1 !important;
        }
    </style>
    </noscript>
    <meta name="generator" content="Elementor 3.25.10; features: e_font_icon_svg, additional_custom_breakpoints, e_optimized_control_loading; settings: css_print_method-external, google_font-enabled, font_display-swap">
    <style>
        .e-con.e-parent:nth-of-type(n+4):not(.e-lazyloaded):not(.e-no-lazyload),
        .e-con.e-parent:nth-of-type(n+4):not(.e-lazyloaded):not(.e-no-lazyload) * {
            background-image: none !important;
        }

        @media screen and (max-height: 1024px) {
            .e-con.e-parent:nth-of-type(n+3):not(.e-lazyloaded):not(.e-no-lazyload),
            .e-con.e-parent:nth-of-type(n+3):not(.e-lazyloaded):not(.e-no-lazyload) * {
                background-image: none !important;
            }
        }

        @media screen and (max-height: 640px) {
            .e-con.e-parent:nth-of-type(n+2):not(.e-lazyloaded):not(.e-no-lazyload),
            .e-con.e-parent:nth-of-type(n+2):not(.e-lazyloaded):not(.e-no-lazyload) * {
                background-image: none !important;
            }
        }
    </style>
    <style class='wp-fonts-local' type='text/css'>
        @font-face {
            font-family: Inter;
            font-style: normal;
            font-weight: 300 900;
            font-display: fallback;
            src: url('https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/fonts/Inter-VariableFont_slnt,wght.woff2') format('woff2');
            font-stretch: normal;
        }

        @font-face {
            font-family: Cardo;
            font-style: normal;
            font-weight: 400;
            font-display: fallback;
            src: url('https://pezeshk-yar.ir/wp-content/plugins/woocommerce/assets/fonts/cardo_normal_400.woff2') format('woff2');
        }
    </style>
    <link rel="icon" href="https://pezeshk-yar.ir/wp-content/uploads/2024/07/Logo-1.svg" sizes="32x32" />
    <link rel="icon" href="https://pezeshk-yar.ir/wp-content/uploads/2024/07/Logo-1.svg" sizes="192x192" />
    <link rel="apple-touch-icon" href="https://pezeshk-yar.ir/wp-content/uploads/2024/07/Logo-1.svg" />
    <meta name="msapplication-TileImage" content="https://pezeshk-yar.ir/wp-content/uploads/2024/07/Logo-1.svg" />
    <style  title="dynamic-css" class="redux-options-output">
        :root {
            --primary-500: #0052A8;
            --primary-400: #5C91C7;
            --primary-300: #A3C1E0;
            --primary-200: #D6E3F1;
            --primary-100: #F5F8FC;
            --secondary-500: #00DCA7;
            --secondary-400: #5CE9C7;
            --secondary-300: #A3F2DF;
            --secondary-200: #D6F9F1;
            --secondary-100: #F5FEFB;
            --tertiary-500: #F53751;
            --tertiary-400: #F97F90;
            --tertiary-300: #FBB7C1;
            --tertiary-200: #FDDFE3;
            --tertiary-100: #FFF7F8;
            --gray-500: #071F39;
            --gray-400: #617081;
            --gray-300: #A6AFB8;
            --gray-200: #D7DBDF;
            --gray-100: #F5F6F7;
            --blue: #1D9BF0;
        }

        body, input, textarea, button, select, .datepicker-plot-area {
            font-family: "Yekan Bakh FaNum";
            font-style: normal;
        }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />



</head>
<body class="rtl page-template page-template-elementor_canvas page page-id-304 theme-pezeshkyar woocommerce-js e-wc-info-notice elementor-default elementor-template-canvas elementor-kit-146 elementor-page elementor-page-304 e--ua-blink e--ua-chrome e--ua-webkit">
    <form id="form1" runat="server">

        <div class="elementor elementor-304">
            <div class="elementor-element elementor-element-f959313 e-flex e-con-boxed e-con e-parent e-lazyloaded" data-id="f959313" data-element_type="container">
                <div class="e-con-inner">
                    <div class="elementor-element elementor-element-14722ac e-con-full e-flex e-con e-child" data-id="14722ac" data-element_type="container">
                        <div class="elementor-element elementor-element-2d7ce53 e-con-full e-flex e-con e-child" data-id="2d7ce53" data-element_type="container">
                            <div class="elementor-element elementor-element-e53412e elementor-widget__width-initial elementor-widget elementor-widget-shortcode" data-id="e53412e" data-element_type="widget" data-widget_type="shortcode.default">
                                <div class="elementor-widget-container">
                                    <div class="elementor-shortcode">
                                        <div class="pzy-account-form-box-wrapper">
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

                                                    <h2>ورود به پنل پزشکان </h2>

                                                    <h5>لطفا نام کاربری و رمز عبور خود را جهت ورود به پنل کاربری خود وارد کنید.</h5>
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
                                                        <a href="/default.aspx">بازگشت به صفحه اصلی</a>
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
                            <div class="elementor-element elementor-element-551510d elementor-absolute e-transform elementor-widget elementor-widget-image" data-id="551510d" data-element_type="widget" data-settings="{&quot;_position&quot;:&quot;absolute&quot;,&quot;_transform_translateY_effect&quot;:{&quot;unit&quot;:&quot;%&quot;,&quot;size&quot;:-50,&quot;sizes&quot;:[]},&quot;_transform_translateY_effect_tablet&quot;:{&quot;unit&quot;:&quot;%&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;_transform_translateY_effect_mobile&quot;:{&quot;unit&quot;:&quot;%&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;_transform_translateX_effect&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;_transform_translateX_effect_tablet&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;_transform_translateX_effect_mobile_extra&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;_transform_translateX_effect_mobile&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]},&quot;_transform_translateY_effect_mobile_extra&quot;:{&quot;unit&quot;:&quot;px&quot;,&quot;size&quot;:&quot;&quot;,&quot;sizes&quot;:[]}}" data-widget_type="image.default" style="display: none;">
                                <div class="elementor-widget-container">
                                    <img decoding="async" width="189" height="45" src="https://pezeshk-yar.ir/wp-content/uploads/2024/08/auth-Logo.png" class="attachment-large size-large wp-image-3329" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </form>
</body>
</html>
