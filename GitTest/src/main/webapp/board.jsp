<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,user-scalable=no">



	<title>게시판 중고거래 | 당신 근처의 SafeSpot</title>
	<meta name="keywords" content="게시판, 게시">
	<link rel="author" href="SafeSpot">
	<meta property="og:url" content="https://www.daangn.com/search/%EA%B2%8C%EC%8B%9C%ED%8C%90">
	<meta property="og:title" content="게시판 중고거래 | 당신 근처의 SafeSpot">
	<meta property="og:site_name" content="SafeSpot">
	<meta property="og:image" content="https://www.daangn.com/images/meta/home/rebranded_daangn.png">
	<meta property="og:type" content="article">
	<meta property="og:locale" content="ko_KR">
	<meta property="fb:app_id" content="1463621440622064">
	<meta name="twitter:card" content="summary_large_image">
	<meta name="twitter:site" content="@danggeunmarket">
	<meta name="twitter:title" content="게시판 중고거래 | 당신 근처의 SafeSpot">
	<meta name="twitter:image" content="https://www.daangn.com/images/meta/home/rebranded_daangn.png">
	<meta name="naver-site-verification" content="d1f8112731c18313535732cf2516d6401bfed40a">
	<meta name="csrf-param" content="authenticity_token">
	<meta name="csrf-token"
		content="40GepBIVt04rpsoLGIvva2Br1nLfAx78-ngcvsbyfUqDsGMC8Y7QvgnyP33yNVFdtSVsYn0U6yc8l5zZw_S9Vg">

	<link rel="icon" type="image/x-icon" href="./로고.png">
	<link rel="apple-touch-icon" sizes="192x192" href="/images/icons/rebranded_daangn_logo_192.png">
	<link rel="apple-touch-icon-precomposed" href="/images/icons/rebranded_daangn_logo_192.png">
	<link rel="icon" sizes="192x192" href="/images/icons/rebranded_daangn_logo_android_192.png">


	<link rel="canonical" href="https://www.daangn.com/search/%EA%B2%8C%EC%8B%9C%ED%8C%90">



	<link rel="stylesheet"
		href="https://d1unjqcospf8gs.cloudfront.net/assets/home/search/index-63bb8724b79a790303e742f8af07d830b31ddc8a90725858e9647f8a3726f63b.css"
		media="all">
	<script async="" src="https://websdk.appsflyer.com?st=banners&amp;"></script>
	<script async="" src="//www.google-analytics.com/analytics.js"></script>
	<script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-PJSK4QL"></script>
	<script async="" src="//connect.facebook.net/en_US/fbevents.js"></script>
	<script
		src="https://connect.facebook.net/signals/config/992961397411651?v=2.9.167&amp;r=stable&amp;domain=127.0.0.1&amp;hme=da9a399065fb1c492026018b9e54864148adfb49d800f41752428fb7b59190f8&amp;ex_m=69%2C118%2C104%2C108%2C60%2C4%2C97%2C68%2C16%2C94%2C86%2C50%2C53%2C168%2C171%2C183%2C179%2C180%2C182%2C29%2C98%2C52%2C75%2C181%2C163%2C166%2C176%2C177%2C184%2C127%2C40%2C34%2C139%2C15%2C49%2C190%2C189%2C129%2C18%2C39%2C1%2C42%2C64%2C65%2C66%2C70%2C90%2C17%2C14%2C93%2C89%2C88%2C105%2C51%2C107%2C38%2C106%2C30%2C91%2C26%2C164%2C167%2C136%2C28%2C11%2C12%2C13%2C6%2C7%2C25%2C22%2C23%2C56%2C61%2C63%2C73%2C99%2C27%2C74%2C9%2C8%2C78%2C47%2C21%2C101%2C100%2C102%2C95%2C10%2C20%2C3%2C19%2C83%2C55%2C81%2C33%2C72%2C0%2C92%2C32%2C80%2C85%2C46%2C45%2C84%2C37%2C5%2C87%2C79%2C43%2C35%2C82%2C2%2C36%2C62%2C41%2C103%2C44%2C77%2C67%2C109%2C59%2C58%2C31%2C96%2C57%2C54%2C48%2C76%2C71%2C24%2C110"
		async=""></script>
	<script src="https://connect.facebook.net/en_US/sdk.js?hash=e2a12414905e828d6fdcb02dd7caa465" async=""
		crossorigin="anonymous"></script>
	<script type="text/javascript" async=""
		src="https://www.googletagmanager.com/gtag/js?id=G-B0ZBDE1GGK&amp;l=dataLayer&amp;cx=c"></script>
	<script
		src="https://connect.facebook.net/signals/config/992961397411651?v=2.9.167&amp;r=stable&amp;domain=www.daangn.com&amp;hme=da9a399065fb1c492026018b9e54864148adfb49d800f41752428fb7b59190f8&amp;ex_m=69%2C118%2C104%2C108%2C60%2C4%2C97%2C68%2C16%2C94%2C86%2C50%2C53%2C168%2C171%2C183%2C179%2C180%2C182%2C29%2C98%2C52%2C75%2C181%2C163%2C166%2C176%2C177%2C184%2C127%2C40%2C34%2C139%2C15%2C49%2C190%2C189%2C129%2C18%2C39%2C1%2C42%2C64%2C65%2C66%2C70%2C90%2C17%2C14%2C93%2C89%2C88%2C105%2C51%2C107%2C38%2C106%2C30%2C91%2C26%2C164%2C167%2C136%2C28%2C11%2C12%2C13%2C6%2C7%2C25%2C22%2C23%2C56%2C61%2C63%2C73%2C99%2C27%2C74%2C9%2C8%2C78%2C47%2C21%2C101%2C100%2C102%2C95%2C10%2C20%2C3%2C19%2C83%2C55%2C81%2C33%2C72%2C0%2C92%2C32%2C80%2C85%2C46%2C45%2C84%2C37%2C5%2C87%2C79%2C43%2C35%2C82%2C2%2C36%2C62%2C41%2C103%2C44%2C77%2C67%2C109%2C59%2C58%2C31%2C96%2C57%2C54%2C48%2C76%2C71%2C24%2C110"
		async=""></script>
	<script src="https://connect.facebook.net/en_US/sdk.js?hash=e2a12414905e828d6fdcb02dd7caa465" async=""
		crossorigin="anonymous"></script>
	<script async="" src="https://websdk.appsflyer.com?st=banners&amp;"></script>
	<script async="" src="//www.google-analytics.com/analytics.js"></script>
	<script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-PJSK4QL"></script>
	<script async="" src="//connect.facebook.net/en_US/fbevents.js"></script>
	<script id="facebook-jssdk" src="//connect.facebook.net/en_US/sdk.js"></script>
	<script
		src="https://d1unjqcospf8gs.cloudfront.net/assets/home/search/index-d0add6174cb47840fc343fd85b9181ea19754c85a9fe4980c99421a7ebe4681c.js"></script>

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
	<script>
		window.fbAsyncInit = function () {
			FB.init({
				appId: '1463621440622064',
				xfbml: true,
				version: 'v2.4'
			});
		};

		(function (d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) {return;}
			js = d.createElement(s); js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>

	<!-- Facebook Pixel Code -->
	<script>
		!function (f, b, e, v, n, t, s) {
			if (f.fbq) return; n = f.fbq = function () {
				n.callMethod ?
					n.callMethod.apply(n, arguments) : n.queue.push(arguments)
			}; if (!f._fbq) f._fbq = n;
			n.push = n; n.loaded = !0; n.version = '2.0'; n.queue = []; t = b.createElement(e); t.async = !0;
			t.src = v; s = b.getElementsByTagName(e)[0]; s.parentNode.insertBefore(t, s)
		}(window,
			document, 'script', '//connect.facebook.net/en_US/fbevents.js');

		fbq('init', '992961397411651');
		facebookClickEvent("PageView")

		function facebookClickEvent(eventName, data) {
			if (data !== undefined) {
				fbq('track', eventName, data)
			} else {
				fbq('track', eventName)
			}
		}

		function facebookClickEventWithPageMove(eventName, data, targetUrl) {
			facebookClickEvent(eventName, data);
			window.location.href = targetUrl;
		}
	</script>
	<!-- End Facebook Pixel Code -->
	<!-- Google Tag Manager -->
	<script>(function (w, d, s, l, i) {
			w[l] = w[l] || []; w[l].push({
				'gtm.start':
					new Date().getTime(), event: 'gtm.js'
			}); var f = d.getElementsByTagName(s)[0],
				j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : ''; j.async = true; j.src =
					'https://www.googletagmanager.com/gtm.js?id=' + i + dl; f.parentNode.insertBefore(j, f);
		})(window, document, 'script', 'dataLayer', 'GTM-PJSK4QL');</script>
	<!-- End Google Tag Manager -->

	<script>
		(function (i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date(); a = s.createElement(o),
				m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
		})(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

		ga('create', 'UA-64551386-2', 'auto');
		ga('send', 'pageview'); </script>
	<script type="application/ld+json">
  {
    "@context": "http://schema.org",
    "@type": "Organization",
    "name": "SafeSpot",
    "url": "https://www.daangn.com",
    "sameAs": [
      "https://www.facebook.com/daangn",
      "https://blog.naver.com/daangn",
      "https://www.youtube.com/channel/UC8tsBsQBuF7QybxgLmStihA",
      "https://twitter.com/daangnmarket",
      "https://www.instagram.com/daangnmarket",
      "https://apps.apple.com/kr/app/id1018769995",
      "https://play.google.com/store/apps/details?id=com.towneers.www"
    ],
    "logo": "https://www.daangn.com/logo.png"
  }
  </script>

	<style type="text/css"
		data-fbcssmodules="css:fb.css.base css:fb.css.dialog css:fb.css.iframewidget css:fb.css.customer_chat_plugin_iframe">
		.fb_hidden {
			position: absolute;
			top: -10000px;
			z-index: 10001
		}

		.fb_reposition {
			overflow: hidden;
			position: relative
		}

		.fb_invisible {
			display: none
		}

		.fb_reset {
			background: none;
			border: 0;
			border-spacing: 0;
			color: #000;
			cursor: auto;
			direction: ltr;
			font-family: 'lucida grande', tahoma, verdana, arial, sans-serif;
			font-size: 11px;
			font-style: normal;
			font-variant: normal;
			font-weight: normal;
			letter-spacing: normal;
			line-height: 1;
			margin: 0;
			overflow: visible;
			padding: 0;
			text-align: left;
			text-decoration: none;
			text-indent: 0;
			text-shadow: none;
			text-transform: none;
			visibility: visible;
			white-space: normal;
			word-spacing: normal
		}

		.fb_reset>div {
			overflow: hidden
		}

		@keyframes fb_transform {
			from {
				opacity: 0;
				transform: scale(.95)
			}

			to {
				opacity: 1;
				transform: scale(1)
			}
		}

		.fb_animate {
			animation: fb_transform .3s forwards
		}

		.fb_hidden {
			position: absolute;
			top: -10000px;
			z-index: 10001
		}

		.fb_reposition {
			overflow: hidden;
			position: relative
		}

		.fb_invisible {
			display: none
		}

		.fb_reset {
			background: none;
			border: 0;
			border-spacing: 0;
			color: #000;
			cursor: auto;
			direction: ltr;
			font-family: 'lucida grande', tahoma, verdana, arial, sans-serif;
			font-size: 11px;
			font-style: normal;
			font-variant: normal;
			font-weight: normal;
			letter-spacing: normal;
			line-height: 1;
			margin: 0;
			overflow: visible;
			padding: 0;
			text-align: left;
			text-decoration: none;
			text-indent: 0;
			text-shadow: none;
			text-transform: none;
			visibility: visible;
			white-space: normal;
			word-spacing: normal
		}

		.fb_reset>div {
			overflow: hidden
		}

		@keyframes fb_transform {
			from {
				opacity: 0;
				transform: scale(.95)
			}

			to {
				opacity: 1;
				transform: scale(1)
			}
		}

		.fb_animate {
			animation: fb_transform .3s forwards
		}

		.fb_dialog {
			background: rgba(82, 82, 82, .7);
			position: absolute;
			top: -10000px;
			z-index: 10001
		}

		.fb_dialog_advanced {
			border-radius: 8px;
			padding: 10px
		}

		.fb_dialog_content {
			background: #fff;
			color: #373737
		}

		.fb_dialog_close_icon {
			background: url(https://connect.facebook.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;
			cursor: pointer;
			display: block;
			height: 15px;
			position: absolute;
			right: 18px;
			top: 17px;
			width: 15px
		}

		.fb_dialog_mobile .fb_dialog_close_icon {
			left: 5px;
			right: auto;
			top: 5px
		}

		.fb_dialog_padding {
			background-color: transparent;
			position: absolute;
			width: 1px;
			z-index: -1
		}

		.fb_dialog_close_icon:hover {
			background: url(https://connect.facebook.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent
		}

		.fb_dialog_close_icon:active {
			background: url(https://connect.facebook.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent
		}

		.fb_dialog_iframe {
			line-height: 0
		}

		.fb_dialog_content .dialog_title {
			background: #6d84b4;
			border: 1px solid #365899;
			color: #fff;
			font-size: 14px;
			font-weight: bold;
			margin: 0
		}

		.fb_dialog_content .dialog_title>span {
			background: url(https://connect.facebook.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;
			float: left;
			padding: 5px 0 7px 26px
		}

		body.fb_hidden {
			height: 100%;
			left: 0;
			margin: 0;
			overflow: visible;
			position: absolute;
			top: -10000px;
			transform: none;
			width: 100%
		}

		.fb_dialog.fb_dialog_mobile.loading {
			background: url(https://connect.facebook.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;
			min-height: 100%;
			min-width: 100%;
			overflow: hidden;
			position: absolute;
			top: 0;
			z-index: 10001
		}

		.fb_dialog.fb_dialog_mobile.loading.centered {
			background: none;
			height: auto;
			min-height: initial;
			min-width: initial;
			width: auto
		}

		.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner {
			width: 100%
		}

		.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content {
			background: none
		}

		.loading.centered #fb_dialog_loader_close {
			clear: both;
			color: #fff;
			display: block;
			font-size: 18px;
			padding-top: 20px
		}

		#fb-root #fb_dialog_ipad_overlay {
			background: rgba(0, 0, 0, .4);
			bottom: 0;
			left: 0;
			min-height: 100%;
			position: absolute;
			right: 0;
			top: 0;
			width: 100%;
			z-index: 10000
		}

		#fb-root #fb_dialog_ipad_overlay.hidden {
			display: none
		}

		.fb_dialog.fb_dialog_mobile.loading iframe {
			visibility: hidden
		}

		.fb_dialog_mobile .fb_dialog_iframe {
			position: sticky;
			top: 0
		}

		.fb_dialog_content .dialog_header {
			background: linear-gradient(from(#738aba), to(#2c4987));
			border-bottom: 1px solid;
			border-color: #043b87;
			box-shadow: white 0 1px 1px -1px inset;
			color: #fff;
			font: bold 14px Helvetica, sans-serif;
			text-overflow: ellipsis;
			text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0;
			vertical-align: middle;
			white-space: nowrap
		}

		.fb_dialog_content .dialog_header table {
			height: 43px;
			width: 100%
		}

		.fb_dialog_content .dialog_header td.header_left {
			font-size: 12px;
			padding-left: 5px;
			vertical-align: middle;
			width: 60px
		}

		.fb_dialog_content .dialog_header td.header_right {
			font-size: 12px;
			padding-right: 5px;
			vertical-align: middle;
			width: 60px
		}

		.fb_dialog_content .touchable_button {
			background: linear-gradient(from(#4267B2), to(#2a4887));
			background-clip: padding-box;
			border: 1px solid #29487d;
			border-radius: 3px;
			display: inline-block;
			line-height: 18px;
			margin-top: 3px;
			max-width: 85px;
			padding: 4px 12px;
			position: relative
		}

		.fb_dialog_content .dialog_header .touchable_button input {
			background: none;
			border: none;
			color: #fff;
			font: bold 12px Helvetica, sans-serif;
			margin: 2px -12px;
			padding: 2px 6px 3px 6px;
			text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
		}

		.fb_dialog_content .dialog_header .header_center {
			color: #fff;
			font-size: 16px;
			font-weight: bold;
			line-height: 18px;
			text-align: center;
			vertical-align: middle
		}

		.fb_dialog_content .dialog_content {
			background: url(https://connect.facebook.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;
			border: 1px solid #4a4a4a;
			border-bottom: 0;
			border-top: 0;
			height: 150px
		}

		.fb_dialog_content .dialog_footer {
			background: #f5f6f7;
			border: 1px solid #4a4a4a;
			border-top-color: #ccc;
			height: 40px
		}

		#fb_dialog_loader_close {
			float: left
		}

		.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon {
			visibility: hidden
		}

		#fb_dialog_loader_spinner {
			animation: rotateSpinner 1.2s linear infinite;
			background-color: transparent;
			background-image: url(https://connect.facebook.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);
			background-position: 50% 50%;
			background-repeat: no-repeat;
			height: 24px;
			width: 24px
		}

		@keyframes rotateSpinner {
			0% {
				transform: rotate(0deg)
			}

			100% {
				transform: rotate(360deg)
			}
		}

		.fb_iframe_widget {
			display: inline-block;
			position: relative
		}

		.fb_iframe_widget span {
			display: inline-block;
			position: relative;
			text-align: justify
		}

		.fb_iframe_widget iframe {
			position: absolute
		}

		.fb_iframe_widget_fluid_desktop,
		.fb_iframe_widget_fluid_desktop span,
		.fb_iframe_widget_fluid_desktop iframe {
			max-width: 100%
		}

		.fb_iframe_widget_fluid_desktop iframe {
			min-width: 220px;
			position: relative
		}

		.fb_iframe_widget_lift {
			z-index: 1
		}

		.fb_iframe_widget_fluid {
			display: inline
		}

		.fb_iframe_widget_fluid span {
			width: 100%
		}

		.fb_mpn_mobile_landing_page_slide_out {
			animation-duration: 200ms;
			animation-name: fb_mpn_landing_page_slide_out;
			transition-timing-function: ease-in
		}

		.fb_mpn_mobile_landing_page_slide_out_from_left {
			animation-duration: 200ms;
			animation-name: fb_mpn_landing_page_slide_out_from_left;
			transition-timing-function: ease-in
		}

		.fb_mpn_mobile_landing_page_slide_up {
			animation-duration: 500ms;
			animation-name: fb_mpn_landing_page_slide_up;
			transition-timing-function: ease-in
		}

		.fb_mpn_mobile_bounce_in {
			animation-duration: 300ms;
			animation-name: fb_mpn_bounce_in;
			transition-timing-function: ease-in
		}

		.fb_mpn_mobile_bounce_out {
			animation-duration: 300ms;
			animation-name: fb_mpn_bounce_out;
			transition-timing-function: ease-in
		}

		.fb_mpn_mobile_bounce_out_v2 {
			animation-duration: 300ms;
			animation-name: fb_mpn_fade_out;
			transition-timing-function: ease-in
		}

		.fb_customer_chat_bounce_in_v2 {
			animation-duration: 300ms;
			animation-name: fb_bounce_in_v2;
			transition-timing-function: ease-in
		}

		.fb_customer_chat_bounce_in_from_left {
			animation-duration: 300ms;
			animation-name: fb_bounce_in_from_left;
			transition-timing-function: ease-in
		}

		.fb_customer_chat_bounce_out_v2 {
			animation-duration: 300ms;
			animation-name: fb_bounce_out_v2;
			transition-timing-function: ease-in
		}

		.fb_customer_chat_bounce_out_from_left {
			animation-duration: 300ms;
			animation-name: fb_bounce_out_from_left;
			transition-timing-function: ease-in
		}

		.fb_invisible_flow {
			display: inherit;
			height: 0;
			overflow-x: hidden;
			width: 0
		}

		@keyframes fb_mpn_landing_page_slide_out {
			0% {
				margin: 0 12px;
				width: 100% - 24px
			}

			60% {
				border-radius: 18px
			}

			100% {
				border-radius: 50%;
				margin: 0 24px;
				width: 60px
			}
		}

		@keyframes fb_mpn_landing_page_slide_out_from_left {
			0% {
				left: 12px;
				width: 100% - 24px
			}

			60% {
				border-radius: 18px
			}

			100% {
				border-radius: 50%;
				left: 12px;
				width: 60px
			}
		}

		@keyframes fb_mpn_landing_page_slide_up {
			0% {
				bottom: 0;
				opacity: 0
			}

			100% {
				bottom: 24px;
				opacity: 1
			}
		}

		@keyframes fb_mpn_bounce_in {
			0% {
				opacity: .5;
				top: 100%
			}

			100% {
				opacity: 1;
				top: 0
			}
		}

		@keyframes fb_mpn_fade_out {
			0% {
				bottom: 30px;
				opacity: 1
			}

			100% {
				bottom: 0;
				opacity: 0
			}
		}

		@keyframes fb_mpn_bounce_out {
			0% {
				opacity: 1;
				top: 0
			}

			100% {
				opacity: .5;
				top: 100%
			}
		}

		@keyframes fb_bounce_in_v2 {
			0% {
				opacity: 0;
				transform: scale(0, 0);
				transform-origin: bottom right
			}

			50% {
				transform: scale(1.03, 1.03);
				transform-origin: bottom right
			}

			100% {
				opacity: 1;
				transform: scale(1, 1);
				transform-origin: bottom right
			}
		}

		@keyframes fb_bounce_in_from_left {
			0% {
				opacity: 0;
				transform: scale(0, 0);
				transform-origin: bottom left
			}

			50% {
				transform: scale(1.03, 1.03);
				transform-origin: bottom left
			}

			100% {
				opacity: 1;
				transform: scale(1, 1);
				transform-origin: bottom left
			}
		}

		@keyframes fb_bounce_out_v2 {
			0% {
				opacity: 1;
				transform: scale(1, 1);
				transform-origin: bottom right
			}

			100% {
				opacity: 0;
				transform: scale(0, 0);
				transform-origin: bottom right
			}
		}

		@keyframes fb_bounce_out_from_left {
			0% {
				opacity: 1;
				transform: scale(1, 1);
				transform-origin: bottom left
			}

			100% {
				opacity: 0;
				transform: scale(0, 0);
				transform-origin: bottom left
			}
		}

		@keyframes slideInFromBottom {
			0% {
				opacity: .1;
				transform: translateY(100%)
			}

			100% {
				opacity: 1;
				transform: translateY(0)
			}
		}

		@keyframes slideInFromBottomDelay {
			0% {
				opacity: 0;
				transform: translateY(100%)
			}

			97% {
				opacity: 0;
				transform: translateY(100%)
			}

			100% {
				opacity: 1;
				transform: translateY(0)
			}
		}
	</style>
	<style type="text/css"
		data-fbcssmodules="css:fb.css.base css:fb.css.dialog css:fb.css.iframewidget css:fb.css.customer_chat_plugin_iframe">
		.fb_hidden {
			position: absolute;
			top: -10000px;
			z-index: 10001
		}

		.fb_reposition {
			overflow: hidden;
			position: relative
		}

		.fb_invisible {
			display: none
		}

		.fb_reset {
			background: none;
			border: 0;
			border-spacing: 0;
			color: #000;
			cursor: auto;
			direction: ltr;
			font-family: 'lucida grande', tahoma, verdana, arial, sans-serif;
			font-size: 11px;
			font-style: normal;
			font-variant: normal;
			font-weight: normal;
			letter-spacing: normal;
			line-height: 1;
			margin: 0;
			overflow: visible;
			padding: 0;
			text-align: left;
			text-decoration: none;
			text-indent: 0;
			text-shadow: none;
			text-transform: none;
			visibility: visible;
			white-space: normal;
			word-spacing: normal
		}

		.fb_reset>div {
			overflow: hidden
		}

		@keyframes fb_transform {
			from {
				opacity: 0;
				transform: scale(.95)
			}

			to {
				opacity: 1;
				transform: scale(1)
			}
		}

		.fb_animate {
			animation: fb_transform .3s forwards
		}

		.fb_hidden {
			position: absolute;
			top: -10000px;
			z-index: 10001
		}

		.fb_reposition {
			overflow: hidden;
			position: relative
		}

		.fb_invisible {
			display: none
		}

		.fb_reset {
			background: none;
			border: 0;
			border-spacing: 0;
			color: #000;
			cursor: auto;
			direction: ltr;
			font-family: 'lucida grande', tahoma, verdana, arial, sans-serif;
			font-size: 11px;
			font-style: normal;
			font-variant: normal;
			font-weight: normal;
			letter-spacing: normal;
			line-height: 1;
			margin: 0;
			overflow: visible;
			padding: 0;
			text-align: left;
			text-decoration: none;
			text-indent: 0;
			text-shadow: none;
			text-transform: none;
			visibility: visible;
			white-space: normal;
			word-spacing: normal
		}

		.fb_reset>div {
			overflow: hidden
		}

		@keyframes fb_transform {
			from {
				opacity: 0;
				transform: scale(.95)
			}

			to {
				opacity: 1;
				transform: scale(1)
			}
		}

		.fb_animate {
			animation: fb_transform .3s forwards
		}

		.fb_dialog {
			background: rgba(82, 82, 82, .7);
			position: absolute;
			top: -10000px;
			z-index: 10001
		}

		.fb_dialog_advanced {
			border-radius: 8px;
			padding: 10px
		}

		.fb_dialog_content {
			background: #fff;
			color: #373737
		}

		.fb_dialog_close_icon {
			background: url(https://connect.facebook.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 0 transparent;
			cursor: pointer;
			display: block;
			height: 15px;
			position: absolute;
			right: 18px;
			top: 17px;
			width: 15px
		}

		.fb_dialog_mobile .fb_dialog_close_icon {
			left: 5px;
			right: auto;
			top: 5px
		}

		.fb_dialog_padding {
			background-color: transparent;
			position: absolute;
			width: 1px;
			z-index: -1
		}

		.fb_dialog_close_icon:hover {
			background: url(https://connect.facebook.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -15px transparent
		}

		.fb_dialog_close_icon:active {
			background: url(https://connect.facebook.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png) no-repeat scroll 0 -30px transparent
		}

		.fb_dialog_iframe {
			line-height: 0
		}

		.fb_dialog_content .dialog_title {
			background: #6d84b4;
			border: 1px solid #365899;
			color: #fff;
			font-size: 14px;
			font-weight: bold;
			margin: 0
		}

		.fb_dialog_content .dialog_title>span {
			background: url(https://connect.facebook.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif) no-repeat 5px 50%;
			float: left;
			padding: 5px 0 7px 26px
		}

		body.fb_hidden {
			height: 100%;
			left: 0;
			margin: 0;
			overflow: visible;
			position: absolute;
			top: -10000px;
			transform: none;
			width: 100%
		}

		.fb_dialog.fb_dialog_mobile.loading {
			background: url(https://connect.facebook.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif) white no-repeat 50% 50%;
			min-height: 100%;
			min-width: 100%;
			overflow: hidden;
			position: absolute;
			top: 0;
			z-index: 10001
		}

		.fb_dialog.fb_dialog_mobile.loading.centered {
			background: none;
			height: auto;
			min-height: initial;
			min-width: initial;
			width: auto
		}

		.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner {
			width: 100%
		}

		.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content {
			background: none
		}

		.loading.centered #fb_dialog_loader_close {
			clear: both;
			color: #fff;
			display: block;
			font-size: 18px;
			padding-top: 20px
		}

		#fb-root #fb_dialog_ipad_overlay {
			background: rgba(0, 0, 0, .4);
			bottom: 0;
			left: 0;
			min-height: 100%;
			position: absolute;
			right: 0;
			top: 0;
			width: 100%;
			z-index: 10000
		}

		#fb-root #fb_dialog_ipad_overlay.hidden {
			display: none
		}

		.fb_dialog.fb_dialog_mobile.loading iframe {
			visibility: hidden
		}

		.fb_dialog_mobile .fb_dialog_iframe {
			position: sticky;
			top: 0
		}

		.fb_dialog_content .dialog_header {
			background: linear-gradient(from(#738aba), to(#2c4987));
			border-bottom: 1px solid;
			border-color: #043b87;
			box-shadow: white 0 1px 1px -1px inset;
			color: #fff;
			font: bold 14px Helvetica, sans-serif;
			text-overflow: ellipsis;
			text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0;
			vertical-align: middle;
			white-space: nowrap
		}

		.fb_dialog_content .dialog_header table {
			height: 43px;
			width: 100%
		}

		.fb_dialog_content .dialog_header td.header_left {
			font-size: 12px;
			padding-left: 5px;
			vertical-align: middle;
			width: 60px
		}

		.fb_dialog_content .dialog_header td.header_right {
			font-size: 12px;
			padding-right: 5px;
			vertical-align: middle;
			width: 60px
		}

		.fb_dialog_content .touchable_button {
			background: linear-gradient(from(#4267B2), to(#2a4887));
			background-clip: padding-box;
			border: 1px solid #29487d;
			border-radius: 3px;
			display: inline-block;
			line-height: 18px;
			margin-top: 3px;
			max-width: 85px;
			padding: 4px 12px;
			position: relative
		}

		.fb_dialog_content .dialog_header .touchable_button input {
			background: none;
			border: none;
			color: #fff;
			font: bold 12px Helvetica, sans-serif;
			margin: 2px -12px;
			padding: 2px 6px 3px 6px;
			text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
		}

		.fb_dialog_content .dialog_header .header_center {
			color: #fff;
			font-size: 16px;
			font-weight: bold;
			line-height: 18px;
			text-align: center;
			vertical-align: middle
		}

		.fb_dialog_content .dialog_content {
			background: url(https://connect.facebook.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif) no-repeat 50% 50%;
			border: 1px solid #4a4a4a;
			border-bottom: 0;
			border-top: 0;
			height: 150px
		}

		.fb_dialog_content .dialog_footer {
			background: #f5f6f7;
			border: 1px solid #4a4a4a;
			border-top-color: #ccc;
			height: 40px
		}

		#fb_dialog_loader_close {
			float: left
		}

		.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon {
			visibility: hidden
		}

		#fb_dialog_loader_spinner {
			animation: rotateSpinner 1.2s linear infinite;
			background-color: transparent;
			background-image: url(https://connect.facebook.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);
			background-position: 50% 50%;
			background-repeat: no-repeat;
			height: 24px;
			width: 24px
		}

		@keyframes rotateSpinner {
			0% {
				transform: rotate(0deg)
			}

			100% {
				transform: rotate(360deg)
			}
		}

		.fb_iframe_widget {
			display: inline-block;
			position: relative
		}

		.fb_iframe_widget span {
			display: inline-block;
			position: relative;
			text-align: justify
		}

		.fb_iframe_widget iframe {
			position: absolute
		}

		.fb_iframe_widget_fluid_desktop,
		.fb_iframe_widget_fluid_desktop span,
		.fb_iframe_widget_fluid_desktop iframe {
			max-width: 100%
		}

		.fb_iframe_widget_fluid_desktop iframe {
			min-width: 220px;
			position: relative
		}

		.fb_iframe_widget_lift {
			z-index: 1
		}

		.fb_iframe_widget_fluid {
			display: inline
		}

		.fb_iframe_widget_fluid span {
			width: 100%
		}

		.fb_mpn_mobile_landing_page_slide_out {
			animation-duration: 200ms;
			animation-name: fb_mpn_landing_page_slide_out;
			transition-timing-function: ease-in
		}

		.fb_mpn_mobile_landing_page_slide_out_from_left {
			animation-duration: 200ms;
			animation-name: fb_mpn_landing_page_slide_out_from_left;
			transition-timing-function: ease-in
		}

		.fb_mpn_mobile_landing_page_slide_up {
			animation-duration: 500ms;
			animation-name: fb_mpn_landing_page_slide_up;
			transition-timing-function: ease-in
		}

		.fb_mpn_mobile_bounce_in {
			animation-duration: 300ms;
			animation-name: fb_mpn_bounce_in;
			transition-timing-function: ease-in
		}

		.fb_mpn_mobile_bounce_out {
			animation-duration: 300ms;
			animation-name: fb_mpn_bounce_out;
			transition-timing-function: ease-in
		}

		.fb_mpn_mobile_bounce_out_v2 {
			animation-duration: 300ms;
			animation-name: fb_mpn_fade_out;
			transition-timing-function: ease-in
		}

		.fb_customer_chat_bounce_in_v2 {
			animation-duration: 300ms;
			animation-name: fb_bounce_in_v2;
			transition-timing-function: ease-in
		}

		.fb_customer_chat_bounce_in_from_left {
			animation-duration: 300ms;
			animation-name: fb_bounce_in_from_left;
			transition-timing-function: ease-in
		}

		.fb_customer_chat_bounce_out_v2 {
			animation-duration: 300ms;
			animation-name: fb_bounce_out_v2;
			transition-timing-function: ease-in
		}

		.fb_customer_chat_bounce_out_from_left {
			animation-duration: 300ms;
			animation-name: fb_bounce_out_from_left;
			transition-timing-function: ease-in
		}

		.fb_invisible_flow {
			display: inherit;
			height: 0;
			overflow-x: hidden;
			width: 0
		}

		@keyframes fb_mpn_landing_page_slide_out {
			0% {
				margin: 0 12px;
				width: 100% - 24px
			}

			60% {
				border-radius: 18px
			}

			100% {
				border-radius: 50%;
				margin: 0 24px;
				width: 60px
			}
		}

		@keyframes fb_mpn_landing_page_slide_out_from_left {
			0% {
				left: 12px;
				width: 100% - 24px
			}

			60% {
				border-radius: 18px
			}

			100% {
				border-radius: 50%;
				left: 12px;
				width: 60px
			}
		}

		@keyframes fb_mpn_landing_page_slide_up {
			0% {
				bottom: 0;
				opacity: 0
			}

			100% {
				bottom: 24px;
				opacity: 1
			}
		}

		@keyframes fb_mpn_bounce_in {
			0% {
				opacity: .5;
				top: 100%
			}

			100% {
				opacity: 1;
				top: 0
			}
		}

		@keyframes fb_mpn_fade_out {
			0% {
				bottom: 30px;
				opacity: 1
			}

			100% {
				bottom: 0;
				opacity: 0
			}
		}

		@keyframes fb_mpn_bounce_out {
			0% {
				opacity: 1;
				top: 0
			}

			100% {
				opacity: .5;
				top: 100%
			}
		}

		@keyframes fb_bounce_in_v2 {
			0% {
				opacity: 0;
				transform: scale(0, 0);
				transform-origin: bottom right
			}

			50% {
				transform: scale(1.03, 1.03);
				transform-origin: bottom right
			}

			100% {
				opacity: 1;
				transform: scale(1, 1);
				transform-origin: bottom right
			}
		}

		@keyframes fb_bounce_in_from_left {
			0% {
				opacity: 0;
				transform: scale(0, 0);
				transform-origin: bottom left
			}

			50% {
				transform: scale(1.03, 1.03);
				transform-origin: bottom left
			}

			100% {
				opacity: 1;
				transform: scale(1, 1);
				transform-origin: bottom left
			}
		}

		@keyframes fb_bounce_out_v2 {
			0% {
				opacity: 1;
				transform: scale(1, 1);
				transform-origin: bottom right
			}

			100% {
				opacity: 0;
				transform: scale(0, 0);
				transform-origin: bottom right
			}
		}

		@keyframes fb_bounce_out_from_left {
			0% {
				opacity: 1;
				transform: scale(1, 1);
				transform-origin: bottom left
			}

			100% {
				opacity: 0;
				transform: scale(0, 0);
				transform-origin: bottom left
			}
		}

		@keyframes slideInFromBottom {
			0% {
				opacity: .1;
				transform: translateY(100%)
			}

			100% {
				opacity: 1;
				transform: translateY(0)
			}
		}

		@keyframes slideInFromBottomDelay {
			0% {
				opacity: 0;
				transform: translateY(100%)
			}

			97% {
				opacity: 0;
				transform: translateY(100%)
			}

			100% {
				opacity: 1;
				transform: translateY(0)
			}
		}
	</style>
</head>

<body class="hoian-kr">
	<noscript><img height="1" width="1" style="display:none" alt="facebook"
			src="https://www.facebook.com/tr?id=992961397411651&ev=PageView&noscript=1" /></noscript>



	<!-- Appsflyer Smart Banner -->
	<script>
		!function (t, e, n, s, a, c, i, o, p) {t.AppsFlyerSdkObject = a, t.AF = t.AF || function () {(t.AF.q = t.AF.q || []).push([Date.now()].concat(Array.prototype.slice.call(arguments)))}, t.AF.id = t.AF.id || i, t.AF.plugins = {}, o = e.createElement(n), p = e.getElementsByTagName(n)[0], o.async = 1, o.src = "https://websdk.appsflyer.com?" + (c.length > 0 ? "st=" + c.split(",").sort().join(",") + "&" : "") + (i.length > 0 ? "af_id=" + i : ""), p.parentNode.insertBefore(o, p)}(window, document, "script", 0, "AF", "banners", {banners: {key: "629f6f7a-a2a6-49c0-8d27-ffa48df1cd0e"}})
		AF('banners', 'showBanner')
	</script>
	<!-- End Appsflyer Smart Banner-->

	<div id="gnb-root">
		<div class="light-theme">
			<div class="_1knjz490">
				<div class="_1knjz491 _1s38h9c0"><a class="_1knjz492" href="https://www.daangn.com"><span></span></a>
					<nav class="_1knjz49j _1s38h9c0">
						<ul class="_1knjz49l _1s38h9c5">
							<li class="_1knjz49n"><a href="#"><img class="_1knjz49o _1s38h9c4 _1s38h9c2 undefined"
										src="./로고.png" alt="이미지 준비중입니다." width="46px" height="46px"></a></li>
							<li class="_1knjz49n"><a class="_1knjz49o _1s38h9c4 _1s38h9c2 undefined"
									href="main.jsp">중고거래</a></li>
							<li class="_1knjz49n"></li>
							<li class="_1knjz49n"></li>
							<li class="_1knjz49n"><a class="_1knjz49o _1s38h9c4 _1s38h9c2 undefined"
									href="board.jsp">자유
									게시판</a></li>
						</ul>
					</nav>
					<div class="_1s38h9c1 _1s38h9c0"><span><button class="_1knjz496 _1s38h9c3 _1s38h9c0 _1s38h9c2"><svg
									width="24" height="24" viewBox="0 0 24 24" fill="none"
									xmlns="http://www.w3.org/2000/svg">
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M3.5999 10.5C3.5999 6.68926 6.68914 3.60002 10.4999 3.60002C14.3107 3.60002 17.3999 6.68926 17.3999 10.5C17.3999 14.3108 14.3107 17.4 10.4999 17.4C6.68914 17.4 3.5999 14.3108 3.5999 10.5ZM10.4999 2.40002C6.0264 2.40002 2.3999 6.02652 2.3999 10.5C2.3999 14.9735 6.0264 18.6 10.4999 18.6C12.5207 18.6 14.3687 17.86 15.7876 16.6362L20.5756 21.4243C20.81 21.6586 21.1899 21.6586 21.4242 21.4243C21.6585 21.19 21.6585 20.8101 21.4242 20.5758L16.6361 15.7877C17.8599 14.3688 18.5999 12.5208 18.5999 10.5C18.5999 6.02652 14.9734 2.40002 10.4999 2.40002Z"
										fill="#212124"></path>
								</svg></button>
							<form novalidate="" class="_1knjz498"><input type="search" class="_1knjz49a"
									placeholder="물품을 검색하세요." value=""></form>


						</span>
						<span><button type="button"
								class="karrot-button r14vym0 _1s38h9c3 _1s38h9c4 r14vym4 r14vym7 _1knjz49i"
								style="margin-right: 50px;">찾기</button></span>
						<span><button type="button"
								class="karrot-button r14vym0 _1s38h9c3 _1s38h9c4 r14vym4 r14vym7 _1knjz49i"
								style="margin-right: 50px;">게시판 등록</button></span>

						<span><button class="_1knjz495 _1s38h9c3 _1s38h9c0 _1s38h9c2"><svg width="24" height="24"
									viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M3 5.00002C3 4.66865 3.26863 4.40002 3.6 4.40002H20.4C20.7314 4.40002 21 4.66865 21 5.00002C21 5.3314 20.7314 5.60002 20.4 5.60002H3.6C3.26863 5.60002 3 5.3314 3 5.00002Z"
										fill="#212124"></path>
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M3 12C3 11.6687 3.26863 11.4 3.6 11.4H20.4C20.7314 11.4 21 11.6687 21 12C21 12.3314 20.7314 12.6 20.4 12.6H3.6C3.26863 12.6 3 12.3314 3 12Z"
										fill="#212124"></path>
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M3 19C3 18.6687 3.26863 18.4 3.6 18.4H20.4C20.7314 18.4 21 18.6687 21 19C21 19.3314 20.7314 19.6 20.4 19.6H3.6C3.26863 19.6 3 19.3314 3 19Z"
										fill="#212124"></path>
								</svg></button> <c:if test="${info==null}">
								<button type="button"
									class="karrot-button r14vym0 _1s38h9c3 _1s38h9c4 r14vym4 r14vym7 _1knjz49i"
									onclick="location.href='LoginJoin.html'">로그인</button>
							</c:if> <c:if test="${info !=null}">
								<button type="button"
									class="karrot-button r14vym0 _1s38h9c3 _1s38h9c4 r14vym4 r14vym7 _1knjz49i"
									onclick="location.href='#'">개인정보수정</button>
								<button type="button"
									class="karrot-button r14vym0 _1s38h9c3 _1s38h9c4 r14vym4 r14vym7 _1knjz49i"
									 onclick="window.location.href='LogoutService'">로그아웃</button>
							</c:if> </span></span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<section id="header-message" class="header-message">
		<div class="header-message-container">
			<div class="recommend-wrap">
				<span class="recommend-text">추천</span>
				<a class="recommend-keyword" href="/search/%ED%99%8D%EB%8C%80%20%EC%87%BC%ED%8C%8C">홍대 쇼파</a>
				<a class="recommend-keyword" href="/search/%EB%B6%80%EC%82%B0%20%EC%B1%85%EC%83%81">부산 책상</a>
				<a class="recommend-keyword" href="/search/%EC%A3%BD%EC%A0%84%20%EC%9E%90%EC%A0%84%EA%B1%B0">죽전 자전거</a>
				<a class="recommend-keyword" href="/search/%EA%B0%95%EB%82%A8%20%EB%AA%85%ED%92%88%EA%B0%80%EB%B0%A9">강남
					명품가방</a>
				<a class="recommend-keyword" href="/search/%EC%9E%A0%EC%8B%A4%20%EB%83%89%EC%9E%A5%EA%B3%A0">잠실 냉장고</a>
				<a class="recommend-keyword" href="/search/%EC%9E%90%EC%A0%84%EA%B1%B0">자전거</a>
			</div>
		</div>
	</section>

	<section id="result">
		<div class="result-container">
			<div id="local-wrap" class="articles-wrap">
				<p class="article-kind local-article-kind">동네정보</p>
				<article class="story-article" data-next-page="2">
					<a class="story-article-link" href="/story_articles/729123618">
						<div class="article-photo">
							<img alt="청사포 마을버스요금 게시판?"
								src="https://img.kr.gcp-karroter.net/community/community/20240921/15df6035-d8eb-4d2f-8c0b-7a14fabe3e5d.jpeg?f=webp">
						</div>
						<p class="story-article-content">
							한달여전 SafeSpot <mark>게시판</mark>에 청사포 마을버스정류장 <mark>게시판</mark>에 요금이 몇년전 금액을 올려 지금 금액과 달라 버스
							운전사와 마찰이
							있다 라는 글을 보았습니다.

							지난 추석때 가보고 확인하여 청사포가 있는 중2동 주민자치위...
						</p>
						<p class="article-region-name">
							부산 해운대구 좌제4동
						</p>
						<span class="article-sub-info">
						</span>
					</a>
				</article>
				<hr class="article-hr-border">
				<hr class="mobile-article-hr-border">
				<article class="story-article" data-next-page="2">
					<a class="story-article-link" href="/story_articles/728904837">
						<div class="article-photo">
							<img alt="정부24 앱에서 2024 주민등록 비대면 사실조사 참여 한번 해보시라고 자유게시판에 올려봅니다 ㅎㅎ  * 비대면 사실조사에 참여하지 않은 세대와 중점조사 대상이 포함된 세대에는 방"
								src="https://img.kr.gcp-karroter.net/community/community/20240827/e4255ece-02b2-42af-bfa9-b3840267fb37.jpeg?f=webp">
						</div>
						<p class="story-article-content">
							정부24 앱에서 2024 주민등록 비대면 사실조사 참여 한번 해보시라고 자유<mark>게시판</mark>에 올려봅니다 ㅎㅎ

							* 비대면 사실조사에 참여하지 않은 세대와 중점조사 대상이 포함된 세대에는 방문조사가 이뤄진다고 하니 비대면...
						</p>
						<p class="article-region-name">
							전북 전주시 덕진구 인후동1가
						</p>
						<span class="article-sub-info">
							<span class="article-watch">
								<img class="watch-icon" alt="Watch count"
									src="https://d1unjqcospf8gs.cloudfront.net/assets/home/base/like-8111aa74d4b1045d7d5943a901896992574dd94c090cef92c26ae53e8da58260.svg">
								1
							</span>
						</span>
					</a>
				</article>
				<hr class="article-hr-border">
				<hr class="mobile-article-hr-border">
				<article class="story-article" data-next-page="2">
					<a class="story-article-link" href="/story_articles/728981541">
						<div class="article-photo">
							<img alt="옥수 어울림더리버, 극동 아파트, 게시판 봐주세요!!"
								src="https://img.kr.gcp-karroter.net/community/community/20240905/8ad8ed9c-83de-4cfb-8869-e33eae5f0b67.png?f=webp">
						</div>
						<p class="story-article-content">
							안녕하세요. 저는 옥수동에 거주하고 있는 4살 아이 엄마이자 연세대학교 실내건축학과에서 양육 친화 근린환경 (아이 키우기 좋은 동네 환경)에 관한 연구를 하고
							있습니다.

							위 아파트 지하 1층 또는 1층 게시...
						</p>
						<p class="article-region-name">
							서울 성동구 옥수동
						</p>
						<span class="article-sub-info">
						</span>
					</a>
				</article>
				<hr class="article-hr-border">
				<hr class="mobile-article-hr-border">
				<article class="story-article" data-next-page="2">
					<a class="story-article-link" href="/story_articles/728981571">
						<div class="article-photo">
							<img alt="금호 래미안 하이리버, 금호대우, 금호벽산, 자이2차 아파트 게시판 봐주세요!!"
								src="https://img.kr.gcp-karroter.net/community/community/20240905/5adc8499-3298-43d0-9c76-e26aaa2d5331.png?f=webp">
						</div>
						<p class="story-article-content">
							안녕하세요. 저는 옥수동에 거주하고 있는 4살 아이 엄마이자 연세대학교 실내건축학과에서 양육 친화 근린환경 (아이 키우기 좋은 동네 환경)에 관한 연구를 하고
							있습니다.

							위 아파트 지하 1층 또는 1층 게시...
						</p>
						<p class="article-region-name">
							서울 성동구 옥수동
						</p>
						<span class="article-sub-info">
						</span>
					</a>
				</article>
				<hr class="article-hr-border">
				<hr class="mobile-article-hr-border">
				<article class="story-article" data-next-page="2">
					<a class="story-article-link" href="/story_articles/728535121">
						<p class="story-article-content">
							자기 동물자랑, 키우는 애완동물 분실 이런거야 나쁘지않은데 지난번에 길고양이 주워다 팔면서 뭔 계약서를 쓰니 집으로 찾아가니 하는 이상한 아줌마부터 길고양이
							병걸렸는데 도와주실분. 우리집에 길고양이 안키울껀데...
						</p>
						<p class="article-region-name">
							경북 김천시 율곡동
						</p>
						<span class="article-sub-info">
						</span>
					</a>
				</article>
				<hr class="article-hr-border">
				<hr class="mobile-article-hr-border">
				<article class="story-article" data-next-page="2">
					<a class="story-article-link" href="/story_articles/728451103">
						<p class="story-article-content">
							부산온지얼마되지않앗다
							타지에서왓다? (반년이지나도1년이지나도타지?)
							드라이브갈분?
							SafeSpot<mark>게시판</mark>여자꼬시는곳인가요?
							몇달을<mark>게시판</mark>을보니글쓰고지우고닉네임바꾸고
							여자노리는사람이한둘이아니네요
							글써서반응없어서지우고
							남자가댓글...
						</p>
						<p class="article-region-name">
							부산 수영구 광안제2동
						</p>
						<span class="article-sub-info">
						</span>
					</a>
				</article>
			</div>
			<div onclick="moreResult(this, 'local', 'local-wrap');" class="more-btn" data-o-keyword="게시판"
				data-next-page="2">
				<span class="more-text">더보기</span>
				<div class="more-loading">
					<div class="loader"></div>
				</div>
			</div>
		</div>
	</section>

	<script>
		$(document).ready(function () {
			facebookClickEvent("Search");
			facebookClickEvent("ViewContent");
		});
	</script>

	<style>
		#gnb-root .light-theme {
			--seed-static-color-static-black: #000000;
			--seed-static-color-static-white: #ffffff;
			--seed-static-color-static-gray-900: #212124;
			--seed-static-color-static-carrot-50: #fff5f0;
			--seed-static-color-static-carrot-800: #cc4700;
			--seed-static-color-static-green-50: #e8faf6;
			--seed-static-color-static-green-800: #008c72;
			--seed-static-color-static-yellow-50: #fff7e6;
			--seed-static-color-static-yellow-800: #ba5e02;
			--seed-static-color-static-red-50: #fff3f2;
			--seed-static-color-static-red-800: #e81300;
			--seed-static-color-static-blue-50: #ebf7fa;
			--seed-static-color-static-blue-800: #0a85b5;
			--seed-static-color-static-black-alpha-200: #00000033;
			--seed-static-color-static-black-alpha-500: #00000080;
			--seed-static-color-static-white-alpha-50: #ffffff0d;
			--seed-static-color-static-white-alpha-200: #ffffff33;
			--seed-semantic-color-on-primary: var(--seed-static-color-static-white);
			--seed-semantic-color-overlay-low: var(--seed-static-color-static-black-alpha-200);
			--seed-semantic-color-overlay-dim: var(--seed-static-color-static-black-alpha-500);
			--seed-semantic-color-on-primary-overlay-50: var(--seed-static-color-static-white-alpha-50);
			--seed-semantic-color-on-primary-overlay-200: var(--seed-static-color-static-white-alpha-200);
			--seed-scale-dimension-font-size-10: 10px;
			--seed-scale-dimension-font-size-25: 11px;
			--seed-scale-dimension-font-size-50: 12px;
			--seed-scale-dimension-font-size-75: 13px;
			--seed-scale-dimension-font-size-100: 14px;
			--seed-scale-dimension-font-size-150: 15px;
			--seed-scale-dimension-font-size-200: 16px;
			--seed-scale-dimension-font-size-300: 18px;
			--seed-scale-dimension-font-size-400: 20px;
			--seed-scale-dimension-font-size-500: 24px;
			--seed-scale-dimension-font-size-600: 26px;
			--seed-scale-dimension-font-size-700: 32px;
			--seed-scale-dimension-font-size-800: 34px;
			--seed-scale-dimension-font-size-900: 42px;
			--seed-scale-dimension-font-size-1000: 48px;
			--seed-scale-dimension-font-size-1100: 54px;
			--seed-scale-dimension-font-size-1200: 60px;
			--seed-scale-dimension-font-size-1300: 72px;
			--seed-semantic-typography-h1-font-size: var(--seed-scale-dimension-font-size-1000);
			--seed-semantic-typography-h2-font-size: var(--seed-scale-dimension-font-size-900);
			--seed-semantic-typography-h3-font-size: var(--seed-scale-dimension-font-size-800);
			--seed-semantic-typography-h4-font-size: var(--seed-scale-dimension-font-size-600);
			--seed-semantic-typography-title1-bold-font-size: var(--seed-scale-dimension-font-size-500);
			--seed-semantic-typography-title1-regular-font-size: var(--seed-scale-dimension-font-size-500);
			--seed-semantic-typography-title2-bold-font-size: var(--seed-scale-dimension-font-size-400);
			--seed-semantic-typography-title2-regular-font-size: var(--seed-scale-dimension-font-size-400);
			--seed-semantic-typography-title3-bold-font-size: var(--seed-scale-dimension-font-size-300);
			--seed-semantic-typography-title3-regular-font-size: var(--seed-scale-dimension-font-size-300);
			--seed-semantic-typography-subtitle1-bold-font-size: var(--seed-scale-dimension-font-size-200);
			--seed-semantic-typography-subtitle1-regular-font-size: var(--seed-scale-dimension-font-size-200);
			--seed-semantic-typography-subtitle2-bold-font-size: var(--seed-scale-dimension-font-size-100);
			--seed-semantic-typography-subtitle2-regular-font-size: var(--seed-scale-dimension-font-size-100);
			--seed-semantic-typography-body-l1-bold-font-size: var(--seed-scale-dimension-font-size-200);
			--seed-semantic-typography-body-l1-regular-font-size: var(--seed-scale-dimension-font-size-200);
			--seed-semantic-typography-body-l2-bold-font-size: var(--seed-scale-dimension-font-size-100);
			--seed-semantic-typography-body-l2-regular-font-size: var(--seed-scale-dimension-font-size-100);
			--seed-semantic-typography-body-m1-bold-font-size: var(--seed-scale-dimension-font-size-200);
			--seed-semantic-typography-body-m1-regular-font-size: var(--seed-scale-dimension-font-size-200);
			--seed-semantic-typography-body-m2-bold-font-size: var(--seed-scale-dimension-font-size-100);
			--seed-semantic-typography-body-m2-regular-font-size: var(--seed-scale-dimension-font-size-100);
			--seed-semantic-typography-caption1-bold-font-size: var(--seed-scale-dimension-font-size-75);
			--seed-semantic-typography-caption1-regular-font-size: var(--seed-scale-dimension-font-size-75);
			--seed-semantic-typography-caption2-bold-font-size: var(--seed-scale-dimension-font-size-50);
			--seed-semantic-typography-caption2-regular-font-size: var(--seed-scale-dimension-font-size-50);
			--seed-semantic-typography-label1-bold-font-size: var(--seed-scale-dimension-font-size-300);
			--seed-semantic-typography-label1-regular-font-size: var(--seed-scale-dimension-font-size-300);
			--seed-semantic-typography-label2-bold-font-size: var(--seed-scale-dimension-font-size-200);
			--seed-semantic-typography-label2-regular-font-size: var(--seed-scale-dimension-font-size-200);
			--seed-semantic-typography-label3-bold-font-size: var(--seed-scale-dimension-font-size-100);
			--seed-semantic-typography-label3-regular-font-size: var(--seed-scale-dimension-font-size-100);
			--seed-semantic-typography-label4-bold-font-size: var(--seed-scale-dimension-font-size-50);
			--seed-semantic-typography-label4-regular-font-size: var(--seed-scale-dimension-font-size-50);
			--seed-semantic-typography-label5-bold-font-size: var(--seed-scale-dimension-font-size-25);
			--seed-semantic-typography-label5-regular-font-size: var(--seed-scale-dimension-font-size-25);
			--seed-semantic-typography-label6-bold-font-size: var(--seed-scale-dimension-font-size-10);
			--seed-semantic-typography-label6-regular-font-size: var(--seed-scale-dimension-font-size-10);
			--seed-static-font-weight-regular: normal;
			--seed-static-font-weight-bold: bold;
			--seed-semantic-typography-h1-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-h2-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-h3-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-h4-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-title1-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-title1-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-title2-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-title2-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-title3-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-title3-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-subtitle1-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-subtitle1-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-subtitle2-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-subtitle2-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-body-l1-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-body-l1-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-body-l2-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-body-l2-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-body-m1-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-body-m1-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-body-m2-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-body-m2-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-caption1-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-caption1-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-caption2-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-caption2-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-label1-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-label1-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-label2-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-label2-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-label3-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-label3-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-label4-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-label4-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-label5-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-label5-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-label6-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-label6-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-static-line-height-static-small: 135%;
			--seed-static-line-height-static-medium: 150%;
			--seed-static-line-height-static-large: 162%;
			--seed-semantic-typography-h1-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-h2-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-h3-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-h4-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-title1-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-title1-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-title2-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-title2-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-title3-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-title3-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-subtitle1-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-subtitle1-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-subtitle2-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-subtitle2-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-body-l1-bold-line-height: var(--seed-static-line-height-static-large);
			--seed-semantic-typography-body-l1-regular-line-height: var(--seed-static-line-height-static-large);
			--seed-semantic-typography-body-l2-bold-line-height: var(--seed-static-line-height-static-medium);
			--seed-semantic-typography-body-l2-regular-line-height: var(--seed-static-line-height-static-medium);
			--seed-semantic-typography-body-m1-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-body-m1-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-body-m2-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-body-m2-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-caption1-bold-line-height: var(--seed-static-line-height-static-medium);
			--seed-semantic-typography-caption1-regular-line-height: var(--seed-static-line-height-static-medium);
			--seed-semantic-typography-caption2-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-caption2-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label1-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label1-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label2-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label2-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label3-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label3-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label4-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label4-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label5-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label5-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label6-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label6-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-scale-color-gray-00: #ffffff;
			--seed-scale-color-gray-50: #f7f8fa;
			--seed-scale-color-gray-100: #f2f3f6;
			--seed-scale-color-gray-200: #eaebee;
			--seed-scale-color-gray-300: #dcdee3;
			--seed-scale-color-gray-400: #d1d3d8;
			--seed-scale-color-gray-500: #adb1ba;
			--seed-scale-color-gray-600: #868b94;
			--seed-scale-color-gray-700: #4d5159;
			--seed-scale-color-gray-800: #393a40;
			--seed-scale-color-gray-900: #212124;
			--seed-scale-color-carrot-50: #fff5f0;
			--seed-scale-color-carrot-100: #ffe2d2;
			--seed-scale-color-carrot-200: #ffd2b9;
			--seed-scale-color-carrot-300: #ffbc97;
			--seed-scale-color-carrot-400: #ff9e66;
			--seed-scale-color-carrot-500: #ff6f0f;
			--seed-scale-color-carrot-600: #fa6616;
			--seed-scale-color-carrot-700: #f05705;
			--seed-scale-color-carrot-800: #cc4700;
			--seed-scale-color-carrot-900: #b44104;
			--seed-scale-color-carrot-950: #a03a03;
			--seed-scale-color-blue-50: #ebf7fa;
			--seed-scale-color-blue-100: #d2edfa;
			--seed-scale-color-blue-200: #b9e3fa;
			--seed-scale-color-blue-300: #87d7ff;
			--seed-scale-color-blue-400: #57c7ff;
			--seed-scale-color-blue-500: #009ceb;
			--seed-scale-color-blue-600: #0088cc;
			--seed-scale-color-blue-700: #0077b2;
			--seed-scale-color-blue-800: #006199;
			--seed-scale-color-blue-900: #004c73;
			--seed-scale-color-blue-950: #003b59;
			--seed-scale-color-red-50: #fff3f2;
			--seed-scale-color-red-100: #ffe5e3;
			--seed-scale-color-red-200: #fcd2cf;
			--seed-scale-color-red-300: #ffaca6;
			--seed-scale-color-red-400: #ff7e75;
			--seed-scale-color-red-500: #ff4133;
			--seed-scale-color-red-600: #fa2314;
			--seed-scale-color-red-700: #e81607;
			--seed-scale-color-red-800: #a62014;
			--seed-scale-color-red-900: #910c00;
			--seed-scale-color-red-950: #821006;
			--seed-scale-color-green-50: #e8faf6;
			--seed-scale-color-green-100: #c7f2e4;
			--seed-scale-color-green-200: #96ebc3;
			--seed-scale-color-green-300: #6adeac;
			--seed-scale-color-green-400: #30c795;
			--seed-scale-color-green-500: #1aa174;
			--seed-scale-color-green-600: #128c6e;
			--seed-scale-color-green-700: #077a5e;
			--seed-scale-color-green-800: #06614a;
			--seed-scale-color-green-900: #004f40;
			--seed-scale-color-green-950: #004034;
			--seed-scale-color-yellow-50: #fff7e6;
			--seed-scale-color-yellow-100: #ffe3ba;
			--seed-scale-color-yellow-200: #facc87;
			--seed-scale-color-yellow-300: #f7be68;
			--seed-scale-color-yellow-400: #dea651;
			--seed-scale-color-yellow-500: #c27f29;
			--seed-scale-color-yellow-600: #a66c21;
			--seed-scale-color-yellow-700: #805217;
			--seed-scale-color-yellow-800: #6b4717;
			--seed-scale-color-yellow-900: #593d17;
			--seed-scale-color-yellow-950: #4d361a;
			--seed-scale-color-pink-50: #fff5f5;
			--seed-scale-color-pink-100: #ffdddb;
			--seed-scale-color-pink-200: #ffbfc5;
			--seed-scale-color-pink-300: #ffadb4;
			--seed-scale-color-pink-400: #ff8a9d;
			--seed-scale-color-pink-500: #f0657c;
			--seed-scale-color-pink-600: #db4b6a;
			--seed-scale-color-pink-700: #bd2b5c;
			--seed-scale-color-pink-800: #991c45;
			--seed-scale-color-pink-900: #800d3d;
			--seed-scale-color-pink-950: #660a30;
			--seed-scale-color-purple-50: #f6f4fe;
			--seed-scale-color-purple-100: #e3dafe;
			--seed-scale-color-purple-200: #d5c7ff;
			--seed-scale-color-purple-300: #cfbfff;
			--seed-scale-color-purple-400: #b69eff;
			--seed-scale-color-purple-500: #9675fa;
			--seed-scale-color-purple-600: #8361e8;
			--seed-scale-color-purple-700: #6748c7;
			--seed-scale-color-purple-800: #4f3699;
			--seed-scale-color-purple-900: #3f2687;
			--seed-scale-color-purple-950: #331e70;
			--seed-scale-color-gray-alpha-50: #0000000d;
			--seed-scale-color-gray-alpha-100: #0000001a;
			--seed-scale-color-gray-alpha-200: #00000033;
			--seed-scale-color-gray-alpha-500: #00000080;
			--seed-scale-color-carrot-alpha-50: #ff6f0f0d;
			--seed-scale-color-carrot-alpha-100: #ff6f0f24;
			--seed-scale-color-carrot-alpha-200: #ff6f0f33;
			--seed-scale-color-blue-alpha-50: #009ceb0d;
			--seed-scale-color-blue-alpha-100: #009ceb1a;
			--seed-scale-color-blue-alpha-200: #009ceb33;
			--seed-scale-color-red-alpha-50: #ff41330d;
			--seed-scale-color-red-alpha-100: #ff41331a;
			--seed-scale-color-red-alpha-200: #ff413333;
			--seed-scale-color-yellow-alpha-50: #f7be6814;
			--seed-scale-color-yellow-alpha-100: #f7be6824;
			--seed-scale-color-yellow-alpha-200: #f7be683d;
			--seed-scale-color-green-alpha-50: #1aa1740d;
			--seed-scale-color-green-alpha-100: #1aa17424;
			--seed-scale-color-green-alpha-200: #1aa17433;
			--seed-semantic-color-primary: var(--seed-scale-color-carrot-500);
			--seed-semantic-color-primary-low: var(--seed-scale-color-carrot-alpha-100);
			--seed-semantic-color-secondary: var(--seed-scale-color-gray-900);
			--seed-semantic-color-secondary-low: var(--seed-scale-color-gray-alpha-50);
			--seed-semantic-color-success: var(--seed-scale-color-green-500);
			--seed-semantic-color-success-low: var(--seed-scale-color-green-alpha-50);
			--seed-semantic-color-warning: var(--seed-scale-color-yellow-400);
			--seed-semantic-color-warning-low: var(--seed-scale-color-yellow-alpha-100);
			--seed-semantic-color-danger: var(--seed-scale-color-red-600);
			--seed-semantic-color-danger-low: var(--seed-scale-color-red-alpha-50);
			--seed-semantic-color-paper-sheet: var(--seed-scale-color-gray-00);
			--seed-semantic-color-paper-dialog: var(--seed-scale-color-gray-00);
			--seed-semantic-color-paper-floating: var(--seed-scale-color-gray-00);
			--seed-semantic-color-paper-contents: var(--seed-scale-color-gray-50);
			--seed-semantic-color-paper-default: var(--seed-scale-color-gray-00);
			--seed-semantic-color-paper-background: var(--seed-scale-color-gray-100);
			--seed-semantic-color-paper-accent: var(--seed-scale-color-carrot-50);
			--seed-semantic-color-primary-hover: var(--seed-scale-color-carrot-400);
			--seed-semantic-color-primary-pressed: var(--seed-scale-color-carrot-400);
			--seed-semantic-color-primary-low-hover: var(--seed-scale-color-carrot-alpha-200);
			--seed-semantic-color-primary-low-active: var(--seed-scale-color-carrot-alpha-200);
			--seed-semantic-color-primary-low-pressed: var(--seed-scale-color-carrot-alpha-200);
			--seed-semantic-color-gray-hover: var(--seed-scale-color-gray-100);
			--seed-semantic-color-gray-pressed: var(--seed-scale-color-gray-100);
			--seed-semantic-color-on-primary-low-overlay-50: var(--seed-scale-color-carrot-alpha-50);
			--seed-semantic-color-on-primary-low-overlay-100: var(--seed-scale-color-carrot-alpha-100);
			--seed-semantic-color-on-primary-low-overlay-200: var(--seed-scale-color-carrot-alpha-200);
			--seed-semantic-color-on-gray-overlay-50: var(--seed-scale-color-gray-alpha-50);
			--seed-semantic-color-on-gray-overlay-100: var(--seed-scale-color-gray-alpha-100);
			--seed-semantic-color-text-selection: var(--seed-scale-color-carrot-50);
			--seed-semantic-color-divider-1: var(--seed-scale-color-gray-alpha-50);
			--seed-semantic-color-divider-2: var(--seed-scale-color-gray-200);
			--seed-semantic-color-divider-3: var(--seed-scale-color-gray-300);
			--seed-semantic-color-accent: var(--seed-scale-color-blue-500);
			--seed-semantic-color-ink-text: var(--seed-scale-color-gray-900);
			--seed-semantic-color-ink-text-low: var(--seed-scale-color-gray-600);
			--seed-semantic-color-gray-active: var(--seed-scale-color-gray-700)
		}

		#gnb-root ._1s38h9c0 {
			display: flex;
			align-items: center
		}

		#gnb-root ._1s38h9c1 {
			display: flex;
			justify-content: center
		}

		#gnb-root ._1s38h9c2 {
			cursor: pointer;
			-webkit-tap-highlight-color: transparent
		}

		#gnb-root ._1s38h9c3 {
			appearance: none;
			border: 0;
			background: none;
			padding: 0
		}

		#gnb-root ._1s38h9c4 {
			text-decoration: none
		}

		#gnb-root ._1s38h9c5 {
			list-style: none;
			padding: 0;
			margin: 0
		}

		#gnb-root .r14vym0 {
			background: none;
			appearance: none;
			border: 0;
			padding: 0;
			display: flex;
			justify-content: center;
			align-items: center;
			cursor: pointer;
			white-space: nowrap;
			box-sizing: border-box
		}

		#gnb-root .r14vym1 {
			color: var(--seed-scale-color-gray-00);
			background-color: var(--seed-scale-color-carrot-500)
		}

		#gnb-root .r14vym1:hover,
		#gnb-root .r14vym1:active {
			background-color: var(--seed-scale-color-carrot-600)
		}

		#gnb-root .r14vym2 {
			color: var(--seed-scale-color-gray-900);
			background-color: var(--seed-semantic-color-secondary-low)
		}

		#gnb-root .r14vym2:hover,
		#gnb-root .r14vym2:active {
			background-color: var(--seed-scale-color-gray-300)
		}

		#gnb-root .r14vym3 {
			color: var(--seed-semantic-color-primary);
			background-color: var(--seed-semantic-color-primary-low)
		}

		#gnb-root .r14vym3:hover,
		#gnb-root .r14vym3:active {
			background-color: var(--seed-semantic-color-primary-low-pressed)
		}

		#gnb-root .r14vym4 {
			color: var(--seed-scale-color-gray-900);
			background-color: transparent;
			border: 1px solid var(--seed-scale-color-gray-400)
		}

		#gnb-root .r14vym4:hover,
		#gnb-root .r14vym4:active {
			background-color: var(--seed-scale-color-gray-100);
			opacity: .7
		}

		#gnb-root .r14vym5 {
			font-weight: 700;
			line-height: 1.4;
			font-size: 1.4rem;
			width: 100%;
			min-height: 4.8rem;
			padding: 1.4rem 2rem;
			border-radius: 0.6rem
		}

		#gnb-root .r14vym6 {
			font-weight: 700;
			line-height: 1.4;
			font-size: 1.4rem;
			width: 100%;
			min-height: 4rem;
			padding: 1rem;
			border-radius: 0.4rem
		}

		#gnb-root .r14vym7 {
			font-weight: 700;
			line-height: 1.4;
			font-size: 1.4rem;
			width: fit-content;
			min-height: 3.6rem;
			padding: 0.8rem 1.4rem;
			border-radius: 0.4rem
		}

		#gnb-root .r14vym8 {
			font-weight: 700;
			line-height: 1.42;
			font-size: 1.1008rem;
			width: fit-content;
			min-height: 3.2rem;
			padding: 0.5rem 1rem;
			border-radius: 0.4rem
		}

		#gnb-root .r14vymi {
			width: 100%
		}

		#gnb-root .r14vymj {
			width: fit-content
		}

		@media (prefers-reduced-motion: no-preference) {
			#gnb-root .r14vym0 {
				transition: background-color .15s;
				will-change: background-color
			}
		}

		@media screen and (min-width: 768px) {
			#gnb-root .r14vym5 {
				line-height: 1.32;
				font-size: 1.8rem;
				letter-spacing: -2%;
				min-height: 5.2rem
			}

			#gnb-root .r14vym6 {
				line-height: 1.32;
				font-size: 1.8rem;
				letter-spacing: -2%;
				min-height: 4.4rem
			}

			#gnb-root .r14vym7 {
				line-height: 1.32;
				font-size: 1.8rem;
				letter-spacing: -2%;
				min-height: 4rem
			}

			#gnb-root .r14vym8 {
				line-height: 1.4;
				font-size: 1.4rem;
				min-height: 3.4rem
			}
		}

		#gnb-root ._1knjz490 {
			background-color: var(--seed-semantic-color-paper-default);
			color: var(--seed-scale-color-gray-900);
			position: fixed;
			top: 0;
			left: 0;
			width: 100%;
			max-width: 100vw;
			z-index: 999
		}

		#gnb-root ._1knjz491 {
			padding: 1.2rem 2rem;
			height: 5.6rem;
			box-sizing: border-box;
			justify-content: space-between;
			width: 100%;
			margin: 0 auto;
			position: relative
		}

		#gnb-root ._1knjz492 {
			display: inline-flex;
			align-items: center;
			margin-right: 3.6rem
		}

		#gnb-root ._1knjz496 {
			margin-right: 1.6rem
		}

		#gnb-root ._1knjz497 {
			position: absolute;
			left: 0;
			width: 100%;
			padding: 0 1.6rem;
			box-sizing: border-box;
			background-color: var(--seed-scale-color-gray-00)
		}

		#gnb-root ._1knjz498 {
			display: none
		}

		#gnb-root ._1knjz499 {
			display: block;
			margin-right: 1.6rem;
			position: relative;
			width: 100%;
			box-sizing: border-box
		}

		#gnb-root ._1knjz49a {
			line-height: 1.4;
			font-size: 1.4rem;
			background-color: var(--seed-scale-color-gray-100);
			box-sizing: border-box;
			height: 4rem;
			padding: 0.9rem 1.2rem;
			border: none;
			border-radius: 0.6rem;
			width: 100%;
			color: var(--seed-scale-color-gray-900)
		}

		#gnb-root ._1knjz49a:focus {
			outline: 0
		}

		#gnb-root ._1knjz49a::placeholder {
			color: var(--seed-scale-color-gray-600)
		}

		#gnb-root ._1knjz49a::-webkit-search-cancel-button,
		#gnb-root ._1knjz49a::-webkit-search-decoration,
		#gnb-root ._1knjz49a::-webkit-search-results-button,
		#gnb-root ._1knjz49a::-webkit-search-results-decoration {
			display: none
		}

		#gnb-root ._1knjz49b {
			position: absolute;
			height: 100%;
			top: 0;
			right: 1.2rem;
			display: flex;
			align-items: center;
			cursor: pointer
		}

		#gnb-root ._1knjz49c {
			line-height: 1.36;
			font-size: 1.6rem;
			color: var(--seed-scale-color-gray-900);
			white-space: nowrap;
			cursor: pointer
		}

		#gnb-root ._1knjz49d {
			margin-left: 0.4rem;
			transition: all ease .3s
		}

		#gnb-root ._1knjz49e {
			transform: rotate(-180deg);
			transition: all ease .3s
		}

		#gnb-root ._1knjz49f {
			flex: 1
		}

		#gnb-root ._1knjz49g {
			font-weight: 700;
			line-height: 150%;
			font-size: 1.4rem;
			padding: 0.55rem 1rem;
			border: 1px solid #868B94;
			border-radius: 0.6rem;
			margin-right: 0.8rem
		}

		#gnb-root ._1knjz49i {
			display: none;
			font-weight: 700;
			line-height: 1.36;
			font-size: 1.6rem
		}

		#gnb-root ._1knjz49j {
			display: none
		}

		#gnb-root ._1knjz49k {
			font-weight: 700;
			line-height: 1.42;
			font-size: 1.1008rem;
			background-color: var(--seed-scale-color-carrot-500);
			color: var(--seed-scale-color-gray-00);
			padding: 0.4rem 1.2rem;
			display: flex;
			white-space: nowrap;
			justify-content: center;
			align-items: center;
			border: 1px solid var(--seed-scale-color-carrot-500);
			border-radius: 0.4rem;
			cursor: pointer
		}

		#gnb-root ._1knjz49l {
			padding: 0;
			margin: 0;
			display: flex;
		}

		#gnb-root ._1knjz49m {
			display: flex;
			flex-direction: column
		}

		#gnb-root ._1knjz49n {
			display: flex;
			margin: 3;
			text-align: center;
			align-items: center;
		}

		#gnb-root ._1knjz49o {
			font-weight: 700;
			line-height: 1.4;
			font-size: 1.4rem;
			color: var(--seed-scale-color-gray-700);
			font-style: normal;
			margin-right: 3rem
		}

		#gnb-root ._1knjz49o:hover {
			color: var(--seed-scale-color-gray-600)
		}

		#gnb-root ._1knjz49p {
			color: var(--seed-scale-color-carrot-500)
		}

		#gnb-root ._1knjz49p:hover {
			color: var(--seed-scale-color-carrot-600)
		}

		#gnb-root ._1knjz49q {
			background-color: var(--seed-scale-color-gray-00);
			display: flex;
			flex-direction: column;
			width: 100%;
			overflow: hidden;
			transform: translateY(-1.6rem);
			opacity: 0;
			transition: transform .3s, opacity .1s;
			padding: 0.8rem 1.6rem;
			box-sizing: border-box
		}

		#gnb-root ._1knjz49r {
			font-weight: 700;
			line-height: 1.4;
			font-size: 1.4rem;
			margin: 0;
			padding-top: 0.4rem;
			padding-right: 0;
			padding-bottom: 0.4rem;
			padding-left: 0;
			color: var(--seed-scale-color-gray-600)
		}

		#gnb-root ._1knjz49s {
			width: 100%;
			display: flex;
			flex-wrap: wrap;
			padding: 0
		}

		#gnb-root ._1knjz49t {
			line-height: 1.4;
			font-size: 1.4rem;
			outline: 0;
			margin: 0;
			width: 50%;
			padding: 1.6rem 0;
			border-bottom: 1px solid var(--seed-scale-color-gray-200);
			cursor: pointer;
			list-style: none;
			-moz-osx-font-smoothing: grayscale;
			-webkit-font-smoothing: antialiased
		}

		#gnb-root ._1knjz49t:last-child {
			border-bottom: none
		}

		#gnb-root ._1knjz49t:nth-last-child(2) {
			border-bottom: none
		}

		#gnb-root ._1knjz49u {
			background-color: var(--seed-scale-color-gray-00);
			display: block;
			width: 100%;
			overflow: hidden;
			transform: translateY(-1.6rem);
			opacity: 0;
			transition: transform .3s, opacity .1s;
			border-top: 1px solid var(--seed-scale-color-gray-200)
		}

		#gnb-root ._1knjz49v {
			opacity: 1;
			transform: translateY(0)
		}

		#gnb-root ._1knjz49w {
			display: none
		}

		#gnb-root ._1knjz49x {
			color: var(--seed-scale-color-gray-700);
			text-decoration: none;
			padding: 1.6rem;
			display: block;
			opacity: 1;
			transition: opacity .3s;
			font-size: 1.6rem
		}

		#gnb-root ._1knjz49x:hover {
			background-color: var(--seed-scale-color-gray-200)
		}

		#gnb-root ._1knjz49y {
			color: var(--seed-scale-color-carrot-500)
		}

		#gnb-root ._1knjz49z {
			opacity: 1
		}

		#gnb-root ._1knjz4911 {
			background: rgba(23, 23, 26);
			opacity: .5;
			position: absolute;
			width: 100%;
			height: 100vh
		}

		#gnb-root ._1knjz496>svg>path {
			fill: var(--seed-scale-color-gray-900)
		}

		#gnb-root ._1knjz495>svg>path {
			fill: var(--seed-scale-color-gray-900)
		}

		@media screen and (min-width: 768px) {
			#gnb-root ._1knjz491 {
				max-width: 120rem;
				height: 6.4rem
			}

			#gnb-root ._1knjz495 {
				display: none
			}

			#gnb-root ._1knjz49a {
				line-height: 1.36;
				font-size: 1.6rem;
				letter-spacing: -1%
			}

			#gnb-root ._1knjz49c {
				line-height: 1.32;
				font-size: 1.8rem;
				letter-spacing: -1%
			}

			#gnb-root ._1knjz49i {
				line-height: 1.3;
				font-size: 1.6rem;
				letter-spacing: -2%;
				display: block;
				white-space: nowrap;
				background-color: var(--seed-scale-color-gray-00);
				color: var(--seed-scale-color-gray-900);
				padding-left: 1.6rem;
				padding-right: 1.6rem
			}

			#gnb-root ._1knjz49j {
				display: flex;
				align-items: center;
				width: 100%;
				padding-top: 0;
				padding-right: 4rem;
				padding-bottom: 0;
				padding-left: 0
			}

			#gnb-root ._1knjz49k {
				line-height: 1.4;
				font-size: 1.4rem;
				display: none
			}

			#gnb-root ._1knjz49o,
			#gnb-root ._1knjz49r,
			#gnb-root ._1knjz49t {
				line-height: 1.32;
				font-size: 1.8rem;
				letter-spacing: -2%
			}

			#gnb-root ._1knjz49u {
				display: none
			}
		}

		@media screen and (min-width: 992px) {

			#gnb-root ._1knjz496,
			#gnb-root ._1knjz497 {
				display: none
			}

			#gnb-root ._1knjz498 {
				display: block;
				position: relative;
				margin-right: 1.2rem
			}

			#gnb-root ._1knjz499 {
				display: none
			}

			#gnb-root ._1knjz49a {
				width: 28.8rem
			}

			#gnb-root ._1knjz49q {
				display: none
			}
		}

		#footer-root .light-theme {
			--seed-static-color-static-black: #000000;
			--seed-static-color-static-white: #ffffff;
			--seed-static-color-static-gray-900: #212124;
			--seed-static-color-static-carrot-50: #fff5f0;
			--seed-static-color-static-carrot-800: #cc4700;
			--seed-static-color-static-green-50: #e8faf6;
			--seed-static-color-static-green-800: #008c72;
			--seed-static-color-static-yellow-50: #fff7e6;
			--seed-static-color-static-yellow-800: #ba5e02;
			--seed-static-color-static-red-50: #fff3f2;
			--seed-static-color-static-red-800: #e81300;
			--seed-static-color-static-blue-50: #ebf7fa;
			--seed-static-color-static-blue-800: #0a85b5;
			--seed-static-color-static-black-alpha-200: #00000033;
			--seed-static-color-static-black-alpha-500: #00000080;
			--seed-static-color-static-white-alpha-50: #ffffff0d;
			--seed-static-color-static-white-alpha-200: #ffffff33;
			--seed-semantic-color-on-primary: var(--seed-static-color-static-white);
			--seed-semantic-color-overlay-low: var(--seed-static-color-static-black-alpha-200);
			--seed-semantic-color-overlay-dim: var(--seed-static-color-static-black-alpha-500);
			--seed-semantic-color-on-primary-overlay-50: var(--seed-static-color-static-white-alpha-50);
			--seed-semantic-color-on-primary-overlay-200: var(--seed-static-color-static-white-alpha-200);
			--seed-scale-dimension-font-size-10: 10px;
			--seed-scale-dimension-font-size-25: 11px;
			--seed-scale-dimension-font-size-50: 12px;
			--seed-scale-dimension-font-size-75: 13px;
			--seed-scale-dimension-font-size-100: 14px;
			--seed-scale-dimension-font-size-150: 15px;
			--seed-scale-dimension-font-size-200: 16px;
			--seed-scale-dimension-font-size-300: 18px;
			--seed-scale-dimension-font-size-400: 20px;
			--seed-scale-dimension-font-size-500: 24px;
			--seed-scale-dimension-font-size-600: 26px;
			--seed-scale-dimension-font-size-700: 32px;
			--seed-scale-dimension-font-size-800: 34px;
			--seed-scale-dimension-font-size-900: 42px;
			--seed-scale-dimension-font-size-1000: 48px;
			--seed-scale-dimension-font-size-1100: 54px;
			--seed-scale-dimension-font-size-1200: 60px;
			--seed-scale-dimension-font-size-1300: 72px;
			--seed-semantic-typography-h1-font-size: var(--seed-scale-dimension-font-size-1000);
			--seed-semantic-typography-h2-font-size: var(--seed-scale-dimension-font-size-900);
			--seed-semantic-typography-h3-font-size: var(--seed-scale-dimension-font-size-800);
			--seed-semantic-typography-h4-font-size: var(--seed-scale-dimension-font-size-600);
			--seed-semantic-typography-title1-bold-font-size: var(--seed-scale-dimension-font-size-500);
			--seed-semantic-typography-title1-regular-font-size: var(--seed-scale-dimension-font-size-500);
			--seed-semantic-typography-title2-bold-font-size: var(--seed-scale-dimension-font-size-400);
			--seed-semantic-typography-title2-regular-font-size: var(--seed-scale-dimension-font-size-400);
			--seed-semantic-typography-title3-bold-font-size: var(--seed-scale-dimension-font-size-300);
			--seed-semantic-typography-title3-regular-font-size: var(--seed-scale-dimension-font-size-300);
			--seed-semantic-typography-subtitle1-bold-font-size: var(--seed-scale-dimension-font-size-200);
			--seed-semantic-typography-subtitle1-regular-font-size: var(--seed-scale-dimension-font-size-200);
			--seed-semantic-typography-subtitle2-bold-font-size: var(--seed-scale-dimension-font-size-100);
			--seed-semantic-typography-subtitle2-regular-font-size: var(--seed-scale-dimension-font-size-100);
			--seed-semantic-typography-body-l1-bold-font-size: var(--seed-scale-dimension-font-size-200);
			--seed-semantic-typography-body-l1-regular-font-size: var(--seed-scale-dimension-font-size-200);
			--seed-semantic-typography-body-l2-bold-font-size: var(--seed-scale-dimension-font-size-100);
			--seed-semantic-typography-body-l2-regular-font-size: var(--seed-scale-dimension-font-size-100);
			--seed-semantic-typography-body-m1-bold-font-size: var(--seed-scale-dimension-font-size-200);
			--seed-semantic-typography-body-m1-regular-font-size: var(--seed-scale-dimension-font-size-200);
			--seed-semantic-typography-body-m2-bold-font-size: var(--seed-scale-dimension-font-size-100);
			--seed-semantic-typography-body-m2-regular-font-size: var(--seed-scale-dimension-font-size-100);
			--seed-semantic-typography-caption1-bold-font-size: var(--seed-scale-dimension-font-size-75);
			--seed-semantic-typography-caption1-regular-font-size: var(--seed-scale-dimension-font-size-75);
			--seed-semantic-typography-caption2-bold-font-size: var(--seed-scale-dimension-font-size-50);
			--seed-semantic-typography-caption2-regular-font-size: var(--seed-scale-dimension-font-size-50);
			--seed-semantic-typography-label1-bold-font-size: var(--seed-scale-dimension-font-size-300);
			--seed-semantic-typography-label1-regular-font-size: var(--seed-scale-dimension-font-size-300);
			--seed-semantic-typography-label2-bold-font-size: var(--seed-scale-dimension-font-size-200);
			--seed-semantic-typography-label2-regular-font-size: var(--seed-scale-dimension-font-size-200);
			--seed-semantic-typography-label3-bold-font-size: var(--seed-scale-dimension-font-size-100);
			--seed-semantic-typography-label3-regular-font-size: var(--seed-scale-dimension-font-size-100);
			--seed-semantic-typography-label4-bold-font-size: var(--seed-scale-dimension-font-size-50);
			--seed-semantic-typography-label4-regular-font-size: var(--seed-scale-dimension-font-size-50);
			--seed-semantic-typography-label5-bold-font-size: var(--seed-scale-dimension-font-size-25);
			--seed-semantic-typography-label5-regular-font-size: var(--seed-scale-dimension-font-size-25);
			--seed-semantic-typography-label6-bold-font-size: var(--seed-scale-dimension-font-size-10);
			--seed-semantic-typography-label6-regular-font-size: var(--seed-scale-dimension-font-size-10);
			--seed-static-font-weight-regular: normal;
			--seed-static-font-weight-bold: bold;
			--seed-semantic-typography-h1-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-h2-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-h3-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-h4-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-title1-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-title1-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-title2-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-title2-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-title3-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-title3-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-subtitle1-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-subtitle1-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-subtitle2-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-subtitle2-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-body-l1-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-body-l1-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-body-l2-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-body-l2-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-body-m1-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-body-m1-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-body-m2-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-body-m2-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-caption1-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-caption1-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-caption2-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-caption2-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-label1-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-label1-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-label2-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-label2-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-label3-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-label3-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-label4-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-label4-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-label5-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-label5-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-semantic-typography-label6-bold-font-weight: var(--seed-static-font-weight-bold);
			--seed-semantic-typography-label6-regular-font-weight: var(--seed-static-font-weight-regular);
			--seed-static-line-height-static-small: 135%;
			--seed-static-line-height-static-medium: 150%;
			--seed-static-line-height-static-large: 162%;
			--seed-semantic-typography-h1-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-h2-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-h3-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-h4-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-title1-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-title1-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-title2-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-title2-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-title3-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-title3-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-subtitle1-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-subtitle1-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-subtitle2-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-subtitle2-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-body-l1-bold-line-height: var(--seed-static-line-height-static-large);
			--seed-semantic-typography-body-l1-regular-line-height: var(--seed-static-line-height-static-large);
			--seed-semantic-typography-body-l2-bold-line-height: var(--seed-static-line-height-static-medium);
			--seed-semantic-typography-body-l2-regular-line-height: var(--seed-static-line-height-static-medium);
			--seed-semantic-typography-body-m1-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-body-m1-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-body-m2-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-body-m2-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-caption1-bold-line-height: var(--seed-static-line-height-static-medium);
			--seed-semantic-typography-caption1-regular-line-height: var(--seed-static-line-height-static-medium);
			--seed-semantic-typography-caption2-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-caption2-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label1-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label1-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label2-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label2-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label3-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label3-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label4-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label4-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label5-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label5-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label6-bold-line-height: var(--seed-static-line-height-static-small);
			--seed-semantic-typography-label6-regular-line-height: var(--seed-static-line-height-static-small);
			--seed-scale-color-gray-00: #ffffff;
			--seed-scale-color-gray-50: #f7f8fa;
			--seed-scale-color-gray-100: #f2f3f6;
			--seed-scale-color-gray-200: #eaebee;
			--seed-scale-color-gray-300: #dcdee3;
			--seed-scale-color-gray-400: #d1d3d8;
			--seed-scale-color-gray-500: #adb1ba;
			--seed-scale-color-gray-600: #868b94;
			--seed-scale-color-gray-700: #4d5159;
			--seed-scale-color-gray-800: #393a40;
			--seed-scale-color-gray-900: #212124;
			--seed-scale-color-carrot-50: #fff5f0;
			--seed-scale-color-carrot-100: #ffe2d2;
			--seed-scale-color-carrot-200: #ffd2b9;
			--seed-scale-color-carrot-300: #ffbc97;
			--seed-scale-color-carrot-400: #ff9e66;
			--seed-scale-color-carrot-500: #ff6f0f;
			--seed-scale-color-carrot-600: #fa6616;
			--seed-scale-color-carrot-700: #f05705;
			--seed-scale-color-carrot-800: #cc4700;
			--seed-scale-color-carrot-900: #b44104;
			--seed-scale-color-carrot-950: #a03a03;
			--seed-scale-color-blue-50: #ebf7fa;
			--seed-scale-color-blue-100: #d2edfa;
			--seed-scale-color-blue-200: #b9e3fa;
			--seed-scale-color-blue-300: #87d7ff;
			--seed-scale-color-blue-400: #57c7ff;
			--seed-scale-color-blue-500: #009ceb;
			--seed-scale-color-blue-600: #0088cc;
			--seed-scale-color-blue-700: #0077b2;
			--seed-scale-color-blue-800: #006199;
			--seed-scale-color-blue-900: #004c73;
			--seed-scale-color-blue-950: #003b59;
			--seed-scale-color-red-50: #fff3f2;
			--seed-scale-color-red-100: #ffe5e3;
			--seed-scale-color-red-200: #fcd2cf;
			--seed-scale-color-red-300: #ffaca6;
			--seed-scale-color-red-400: #ff7e75;
			--seed-scale-color-red-500: #ff4133;
			--seed-scale-color-red-600: #fa2314;
			--seed-scale-color-red-700: #e81607;
			--seed-scale-color-red-800: #a62014;
			--seed-scale-color-red-900: #910c00;
			--seed-scale-color-red-950: #821006;
			--seed-scale-color-green-50: #e8faf6;
			--seed-scale-color-green-100: #c7f2e4;
			--seed-scale-color-green-200: #96ebc3;
			--seed-scale-color-green-300: #6adeac;
			--seed-scale-color-green-400: #30c795;
			--seed-scale-color-green-500: #1aa174;
			--seed-scale-color-green-600: #128c6e;
			--seed-scale-color-green-700: #077a5e;
			--seed-scale-color-green-800: #06614a;
			--seed-scale-color-green-900: #004f40;
			--seed-scale-color-green-950: #004034;
			--seed-scale-color-yellow-50: #fff7e6;
			--seed-scale-color-yellow-100: #ffe3ba;
			--seed-scale-color-yellow-200: #facc87;
			--seed-scale-color-yellow-300: #f7be68;
			--seed-scale-color-yellow-400: #dea651;
			--seed-scale-color-yellow-500: #c27f29;
			--seed-scale-color-yellow-600: #a66c21;
			--seed-scale-color-yellow-700: #805217;
			--seed-scale-color-yellow-800: #6b4717;
			--seed-scale-color-yellow-900: #593d17;
			--seed-scale-color-yellow-950: #4d361a;
			--seed-scale-color-pink-50: #fff5f5;
			--seed-scale-color-pink-100: #ffdddb;
			--seed-scale-color-pink-200: #ffbfc5;
			--seed-scale-color-pink-300: #ffadb4;
			--seed-scale-color-pink-400: #ff8a9d;
			--seed-scale-color-pink-500: #f0657c;
			--seed-scale-color-pink-600: #db4b6a;
			--seed-scale-color-pink-700: #bd2b5c;
			--seed-scale-color-pink-800: #991c45;
			--seed-scale-color-pink-900: #800d3d;
			--seed-scale-color-pink-950: #660a30;
			--seed-scale-color-purple-50: #f6f4fe;
			--seed-scale-color-purple-100: #e3dafe;
			--seed-scale-color-purple-200: #d5c7ff;
			--seed-scale-color-purple-300: #cfbfff;
			--seed-scale-color-purple-400: #b69eff;
			--seed-scale-color-purple-500: #9675fa;
			--seed-scale-color-purple-600: #8361e8;
			--seed-scale-color-purple-700: #6748c7;
			--seed-scale-color-purple-800: #4f3699;
			--seed-scale-color-purple-900: #3f2687;
			--seed-scale-color-purple-950: #331e70;
			--seed-scale-color-gray-alpha-50: #0000000d;
			--seed-scale-color-gray-alpha-100: #0000001a;
			--seed-scale-color-gray-alpha-200: #00000033;
			--seed-scale-color-gray-alpha-500: #00000080;
			--seed-scale-color-carrot-alpha-50: #ff6f0f0d;
			--seed-scale-color-carrot-alpha-100: #ff6f0f24;
			--seed-scale-color-carrot-alpha-200: #ff6f0f33;
			--seed-scale-color-blue-alpha-50: #009ceb0d;
			--seed-scale-color-blue-alpha-100: #009ceb1a;
			--seed-scale-color-blue-alpha-200: #009ceb33;
			--seed-scale-color-red-alpha-50: #ff41330d;
			--seed-scale-color-red-alpha-100: #ff41331a;
			--seed-scale-color-red-alpha-200: #ff413333;
			--seed-scale-color-yellow-alpha-50: #f7be6814;
			--seed-scale-color-yellow-alpha-100: #f7be6824;
			--seed-scale-color-yellow-alpha-200: #f7be683d;
			--seed-scale-color-green-alpha-50: #1aa1740d;
			--seed-scale-color-green-alpha-100: #1aa17424;
			--seed-scale-color-green-alpha-200: #1aa17433;
			--seed-semantic-color-primary: var(--seed-scale-color-carrot-500);
			--seed-semantic-color-primary-low: var(--seed-scale-color-carrot-alpha-100);
			--seed-semantic-color-secondary: var(--seed-scale-color-gray-900);
			--seed-semantic-color-secondary-low: var(--seed-scale-color-gray-alpha-50);
			--seed-semantic-color-success: var(--seed-scale-color-green-500);
			--seed-semantic-color-success-low: var(--seed-scale-color-green-alpha-50);
			--seed-semantic-color-warning: var(--seed-scale-color-yellow-400);
			--seed-semantic-color-warning-low: var(--seed-scale-color-yellow-alpha-100);
			--seed-semantic-color-danger: var(--seed-scale-color-red-600);
			--seed-semantic-color-danger-low: var(--seed-scale-color-red-alpha-50);
			--seed-semantic-color-paper-sheet: var(--seed-scale-color-gray-00);
			--seed-semantic-color-paper-dialog: var(--seed-scale-color-gray-00);
			--seed-semantic-color-paper-floating: var(--seed-scale-color-gray-00);
			--seed-semantic-color-paper-contents: var(--seed-scale-color-gray-50);
			--seed-semantic-color-paper-default: var(--seed-scale-color-gray-00);
			--seed-semantic-color-paper-background: var(--seed-scale-color-gray-100);
			--seed-semantic-color-paper-accent: var(--seed-scale-color-carrot-50);
			--seed-semantic-color-primary-hover: var(--seed-scale-color-carrot-400);
			--seed-semantic-color-primary-pressed: var(--seed-scale-color-carrot-400);
			--seed-semantic-color-primary-low-hover: var(--seed-scale-color-carrot-alpha-200);
			--seed-semantic-color-primary-low-active: var(--seed-scale-color-carrot-alpha-200);
			--seed-semantic-color-primary-low-pressed: var(--seed-scale-color-carrot-alpha-200);
			--seed-semantic-color-gray-hover: var(--seed-scale-color-gray-100);
			--seed-semantic-color-gray-pressed: var(--seed-scale-color-gray-100);
			--seed-semantic-color-on-primary-low-overlay-50: var(--seed-scale-color-carrot-alpha-50);
			--seed-semantic-color-on-primary-low-overlay-100: var(--seed-scale-color-carrot-alpha-100);
			--seed-semantic-color-on-primary-low-overlay-200: var(--seed-scale-color-carrot-alpha-200);
			--seed-semantic-color-on-gray-overlay-50: var(--seed-scale-color-gray-alpha-50);
			--seed-semantic-color-on-gray-overlay-100: var(--seed-scale-color-gray-alpha-100);
			--seed-semantic-color-text-selection: var(--seed-scale-color-carrot-50);
			--seed-semantic-color-divider-1: var(--seed-scale-color-gray-alpha-50);
			--seed-semantic-color-divider-2: var(--seed-scale-color-gray-200);
			--seed-semantic-color-divider-3: var(--seed-scale-color-gray-300);
			--seed-semantic-color-accent: var(--seed-scale-color-blue-500);
			--seed-semantic-color-ink-text: var(--seed-scale-color-gray-900);
			--seed-semantic-color-ink-text-low: var(--seed-scale-color-gray-600);
			--seed-semantic-color-gray-active: var(--seed-scale-color-gray-700)
		}

		#footer-root ._1s38h9c0 {
			display: flex;
			align-items: center
		}

		#footer-root ._1s38h9c1 {
			display: flex;
			justify-content: center
		}

		#footer-root ._1s38h9c2 {
			cursor: pointer;
			-webkit-tap-highlight-color: transparent
		}

		#footer-root ._1s38h9c3 {
			appearance: none;
			border: 0;
			background: none;
			padding: 0
		}

		#footer-root ._1s38h9c4 {
			text-decoration: none
		}

		#footer-root ._1s38h9c5 {
			list-style: none;
			padding: 0;
			margin: 0
		}

		#footer-root ._1y9kelh0 {
			background-color: var(--seed-semantic-color-paper-default);
			color: var(--seed-scale-color-gray-900);
			padding: 0 1.6rem 2rem
		}

		#footer-root ._1y9kelh0:not(:last-child) {
			margin-bottom: 0.8rem
		}

		#footer-root ._1y9kelh1 {
			font-weight: 700;
			line-height: 1.36;
			font-size: 1.6rem;
			padding: 1.6rem 0
		}

		#footer-root ._1y9kelh2 {
			max-width: 76.8rem;
			margin: 0 auto
		}

		@media screen and (min-width: 768px) {
			#footer-root ._1y9kelh0 {
				padding: 0
			}

			#footer-root ._1y9kelh0:not(:last-child) {
				margin-bottom: 5.6rem
			}

			#footer-root ._1y9kelh1 {
				line-height: 1.3;
				font-size: 2rem;
				letter-spacing: -2%
			}
		}

		#footer-root ._1trxeqs0 {
			background-color: var(--seed-semantic-color-paper-default);
			color: var(--seed-scale-color-gray-900);
			border-top: 1px solid var(--seed-scale-color-gray-200);
			padding: 0 1.6rem;
			box-sizing: border-box;
			width: 100%;
			max-width: 100vw
		}

		#footer-root ._1trxeqs1 {
			display: flex;
			flex-direction: column
		}

		#footer-root ._1trxeqs2 {
			display: flex;
			margin-bottom: 2rem
		}

		#footer-root ._1trxeqs3 {
			font-weight: 700;
			line-height: 1.5;
			font-size: 1.3008rem
		}

		#footer-root ._1trxeqs4 {
			display: flex;
			margin-left: 2.4rem
		}

		#footer-root ._1trxeqs4:not(:first-child) {
			margin-left: 1.6rem
		}

		#footer-root ._1trxeqs5 {
			font-weight: 700;
			line-height: 1.5;
			font-size: 1.3008rem;
			color: var(--seed-scale-color-gray-900);
			margin-right: 0.8rem
		}

		#footer-root ._1trxeqs6 {
			color: var(--seed-scale-color-gray-900);
			margin-right: 0.6rem
		}

		#footer-root ._1trxeqs7 {
			display: flex
		}

		#footer-root ._1trxeqs8 {
			display: none
		}

		#footer-root ._1trxeqs8>svg>rect {
			fill: var(--seed-scale-color-gray-100)
		}

		#footer-root ._1trxeqs8>svg>path {
			fill: var(--seed-scale-color-gray-900)
		}

		#footer-root ._1trxeqs8:hover>svg>path {
			opacity: .5
		}

		#footer-root ._1trxeqs9 {
			line-height: 1.5;
			font-size: 1.3008rem;
			display: flex;
			max-width: 76.8rem
		}

		#footer-root ._1trxeqsa {
			display: flex;
			flex-direction: column;
			padding-inline-start: 0;
			margin-block-start: 0;
			margin-block-end: 0;
			width: 33%
		}

		#footer-root ._1trxeqsa:last-child {
			margin-right: 15%
		}

		#footer-root ._1trxeqsb {
			grid-column: 1 / 3;
			grid-row: 1 / 2
		}

		#footer-root ._1trxeqsc {
			line-height: 1.3;
			font-size: 1.2rem;
			margin-bottom: 1.6rem;
			flex-wrap: wrap;
			color: var(--seed-scale-color-gray-600)
		}

		#footer-root ._1trxeqsd {
			margin: 0 0.4rem
		}

		#footer-root ._1trxeqse {
			font-style: normal
		}

		#footer-root ._1trxeqsf {
			flex-wrap: wrap;
			display: flex;
			grid-column: 1 / 4
		}

		#footer-root ._1trxeqsg {
			font-weight: 700;
			line-height: 1.3;
			font-size: 1.2rem;
			white-space: nowrap;
			color: var(--seed-scale-color-gray-600)
		}

		#footer-root ._1trxeqsg:not(:last-child) {
			margin-right: 1.6rem
		}

		#footer-root ._1trxeqsg:hover {
			text-decoration: underline
		}

		#footer-root ._1trxeqsh {
			color: var(--seed-scale-color-gray-700)
		}

		#footer-root ._1trxeqsi {
			padding: 4.8rem 0
		}

		#footer-root ._1trxeqsj {
			display: grid;
			padding: 2.4rem 0 10rem;
			border-top: 1px solid var(--seed-scale-color-gray-200)
		}

		#footer-root ._1trxeqsk {
			margin-bottom: 1.6rem
		}

		#footer-root ._1trxeqsl {
			margin-top: 2.4rem;
			display: flex;
			align-items: center;
			grid-column: 1 / 4;
			grid-row: 3 / 4
		}

		#footer-root ._1trxeqsm {
			padding-top: 0.4rem
		}

		#footer-root ._1trxeqsm:hover {
			opacity: 64%
		}

		#footer-root ._1trxeqsn {
			color: var(--seed-scale-color-gray-600);
			display: flex;
			align-items: center;
			padding: 0.8rem;
			border-radius: 0.4rem;
			cursor: pointer
		}

		#footer-root ._1trxeqsn:hover {
			background-color: var(--seed-scale-color-gray-100)
		}

		#footer-root ._1trxeqso {
			background-color: var(--seed-scale-color-gray-00);
			color: var(--seed-scale-color-gray-600);
			padding-left: 0.4rem;
			border: none;
			-webkit-appearance: none;
			-moz-appearance: none;
			text-indent: 0.1rem;
			cursor: pointer
		}

		#footer-root ._1trxeqso:focus {
			outline: 0
		}

		#footer-root ._1trxeqso:hover {
			background-color: var(--seed-scale-color-gray-100)
		}

		#footer-root ._1trxeqsp {
			text-decoration: none;
			outline: 0
		}

		#footer-root ._1trxeqs3>._1trxeqsp {
			color: var(--seed-scale-color-gray-900)
		}

		#footer-root ._1trxeqs9 ._1trxeqsp {
			color: var(--seed-scale-color-gray-900)
		}

		#footer-root ._1trxeqsl>._1trxeqsp:not(:last-child) {
			margin-right: 1.6rem
		}

		#footer-root ._1trxeqsq {
			width: fit-content;
			list-style: none
		}

		#footer-root ._1trxeqsa ._1trxeqsq:not(:last-child) {
			margin-bottom: 1.6rem
		}

		#footer-root ._1trxeqsa ._1trxeqsq:hover {
			text-decoration: underline
		}

		@media screen and (min-width: 768px) {
			#footer-root ._1trxeqs2 {
				float: right;
				margin-bottom: 0;
				display: flex;
				flex-direction: column
			}

			#footer-root ._1trxeqs3 {
				line-height: 1.4;
				font-size: 1.4rem
			}

			#footer-root ._1trxeqs4 {
				margin-top: 0.8rem;
				margin-left: 0
			}

			#footer-root ._1trxeqs4:not(:first-child) {
				margin-left: 1rem
			}

			#footer-root ._1trxeqs5 {
				line-height: 1.4;
				font-size: 1.4rem;
				display: none
			}

			#footer-root ._1trxeqs6 {
				display: none
			}

			#footer-root ._1trxeqs8 {
				display: block
			}

			#footer-root ._1trxeqs9 {
				line-height: 1.4;
				font-size: 1.4rem
			}

			#footer-root ._1trxeqsc,
			#footer-root ._1trxeqsg {
				line-height: 1.5;
				font-size: 1.3008rem
			}

			#footer-root ._1trxeqsj {
				display: grid;
				justify-content: space-between;
				align-items: flex-start
			}

			#footer-root ._1trxeqsl {
				margin-top: 0;
				grid-column: 3 / 4;
				grid-row: 1 / 2
			}
		}
	</style>
	<div id="footer-root">
		<div class="light-theme">
			<footer class="_1trxeqs0">
				<div class="_1trxeqs1 _1y9kelh2"></div>
			</footer>
		</div>
	</div>
	





	<script type="text/javascript"
		id="">!function (b, e, f, g, a, c, d) {b.fbq || (a = b.fbq = function () {a.callMethod ? a.callMethod.apply(a, arguments) : a.queue.push(arguments)}, b._fbq || (b._fbq = a), a.push = a, a.loaded = !0, a.version = "2.0", a.queue = [], c = e.createElement(f), c.async = !0, c.src = g, d = e.getElementsByTagName(f)[0], d.parentNode.insertBefore(c, d))}(window, document, "script", "https://connect.facebook.net/en_US/fbevents.js"); fbq("init", "992961397411651"); fbq("set", "agent", "tmgoogletagmanager", "992961397411651"); fbq("track", "PageView");</script>
	<div id="fb-root" class=" fb_reset fb_reset">
		<div style="position: absolute; top: -10000px; width: 0px; height: 0px;">
			<div></div>
		</div>
		<div style="position: absolute; top: -10000px; width: 0px; height: 0px;">
			<div></div>
		</div>
	</div>
	<!-- Code injected by live-server -->
	<script>
		// <![CDATA[  <-- For SVG support
		if ('WebSocket' in window) {
			(function () {
				function refreshCSS() {
					var sheets = [].slice.call(document.getElementsByTagName("link"));
					var head = document.getElementsByTagName("head")[0];
					for (var i = 0; i < sheets.length; ++i) {
						var elem = sheets[i];
						var parent = elem.parentElement || head;
						parent.removeChild(elem);
						var rel = elem.rel;
						if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
							var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
							elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
						}
						parent.appendChild(elem);
					}
				}
				var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
				var address = protocol + window.location.host + window.location.pathname + '/ws';
				var socket = new WebSocket(address);
				socket.onmessage = function (msg) {
					if (msg.data == 'reload') window.location.reload();
					else if (msg.data == 'refreshcss') refreshCSS();
				};
				if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
					console.log('Live reload enabled.');
					sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
				}
			})();
		}
		else {
			console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
		}
		// ]]>
	</script>



	<script type="text/javascript"
		id="">!function (b, e, f, g, a, c, d) {b.fbq || (a = b.fbq = function () {a.callMethod ? a.callMethod.apply(a, arguments) : a.queue.push(arguments)}, b._fbq || (b._fbq = a), a.push = a, a.loaded = !0, a.version = "2.0", a.queue = [], c = e.createElement(f), c.async = !0, c.src = g, d = e.getElementsByTagName(f)[0], d.parentNode.insertBefore(c, d))}(window, document, "script", "https://connect.facebook.net/en_US/fbevents.js"); fbq("init", "992961397411651"); fbq("set", "agent", "tmgoogletagmanager", "992961397411651"); fbq("track", "PageView");</script>
</body>

</html>