<%@ page
        contentType="text/html;charset=UTF-8"
        language="java" %>
<meta charset="utf-8">
<meta name="viewport"
      content="width=device-width, initial-scale=1.0">
<meta name="description"
      content="">
<meta name="author"
      content="">
<title>
    Home
    |
    E-Shopper</title>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
      rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"
      rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/prettyPhoto.css"
      rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/price-range.css"
      rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/animate.css"
      rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/main.css"
      rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/responsive.css"
      rel="stylesheet">
<!--[if lt IE 9]>
<script src="${pageContext.request.contextPath}/resources/js/html5shiv.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/respond.min.js"></script>
<![endif]-->
<link rel="shortcut icon"
      href="${pageContext.request.contextPath}/resources/images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed"
      sizes="144x144"
      href="${pageContext.request.contextPath}/resources/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed"
      sizes="114x114"
      href="images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed"
      sizes="72x72"
      href="${pageContext.request.contextPath}/resources/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
      href="${pageContext.request.contextPath}/resources/images/ico/apple-touch-icon-57-precomposed.png">
<style>
    ul.sub-menu {
        width: inherit;
    }

    .error {
        color: red
    }

    .productinfo p {
        text-overflow: ellipsis;
        overflow: hidden;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 1;
        max-width: 256px;
        display: -webkit-box;
        font-family: 'Roboto', sans-serif;
        font-size: 14px;
        font-weight: 400;
        color: #696763;
    }

    .box_search {
        width: 100%;
        border: 1px solid #5bc0de;
        position: absolute;
        z-index: 999;
        background-color: #fff;
        max-height: 391px;
        overflow: scroll;
    }

    .box_search hr {
        margin: 0;
    }

    .name_product {
        text-overflow: ellipsis;
        overflow: hidden;
        -webkit-box-orient: vertical;
        -webkit-line-clamp: 1;
        max-width: 256px;
        display: -webkit-box;
    }

</style>