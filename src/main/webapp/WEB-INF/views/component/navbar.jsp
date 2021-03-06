<%@ taglib
        prefix="c"
        uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ngo Hong Thai
  Date: 6/9/2019
  Time: 2:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page
        contentType="text/html;charset=UTF-8"
        language="java" %>
<header id="header">
    <!--header-->
    <div class="header_top">
        <!--header_top-->
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="contactinfo">
                        <ul class="nav nav-pills">
                            <li>
                                <a href="#"><i
                                        class="fa fa-phone"></i>
                                    +2
                                    95
                                    01
                                    88
                                    821</a>
                            </li>
                            <li>
                                <a href="#"><i
                                        class="fa fa-envelope"></i>
                                    info@domain.com</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="social-icons pull-right">
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="#"><i
                                        class="fa fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="#"><i
                                        class="fa fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="#"><i
                                        class="fa fa-linkedin"></i></a>
                            </li>
                            <li>
                                <a href="#"><i
                                        class="fa fa-dribbble"></i></a>
                            </li>
                            <li>
                                <a href="#"><i
                                        class="fa fa-google-plus"></i></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/header_top-->

    <div class="header-middle">
        <!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="logo pull-left">
                        <a href="${pageContext.request.contextPath}/"><img
                                src="${pageContext.request.contextPath}/resources/images/home/logo.png"
                                alt=""/></a>
                    </div>
                    <div class="btn-group pull-right">
                        <div class="btn-group">
                            <button type="button"
                                    class="btn btn-default dropdown-toggle usa"
                                    data-toggle="dropdown">
                                USA
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Canada</a>
                                </li>
                                <li>
                                    <a href="#">UK</a>
                                </li>
                            </ul>
                        </div>

                        <div class="btn-group">
                            <button type="button"
                                    class="btn btn-default dropdown-toggle usa"
                                    data-toggle="dropdown">
                                DOLLAR
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="#">Canadian
                                        Dollar</a>
                                </li>
                                <li>
                                    <a href="#">Pound</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="#"><i
                                        class="fa fa-star"></i>
                                    Wishlist</a>
                            </li>
                            <li>
                                <a href="checkout.html"><i
                                        class="fa fa-crosshairs"></i>
                                    Checkout</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/cart/index"><i
                                        class="fa fa-shopping-cart"></i>
                                    Giỏ
                                    hàng <span id="cart_quantity">(0)</span></a>
                            </li>
                            <c:choose>
                                <c:when test="${sessionScope.user == null}">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/user/login">
                                            <i class="fa fa-lock"></i>
                                            Tài khoản
                                        </a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li>
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                                                class="fa fa-user"></i>
                                            Chào: ${sessionScope.user.name}</a>
                                        <ul class="dropdown-menu" style="columns: 1">
                                            <li><a href="#">Thông tin cá nhân</a></li>
                                            <li><a href="#">Đổi mật khẩu</a></li>
                                            <li><a href="${pageContext.request.contextPath}/user/logout">Đăng xuất</a></li>
                                        </ul>
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/header-middle-->

    <div class="header-bottom">
        <!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="navbar-header">
                        <button type="button"
                                class="navbar-toggle"
                                data-toggle="collapse"
                                data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="mainmenu pull-left">
                        <ul class="nav navbar-nav collapse navbar-collapse">
                            <li>
                                <a href="${pageContext.request.contextPath}/"
                                   class="active">Home</a>
                            </li>
                            <li class="dropdown">
                                <a href="#">Danh
                                    sách
                                    sản
                                    phẩm<i class="fa fa-angle-down"></i></a>
                                <ul role="menu"
                                    class="sub-menu"
                                    id="list_catalog">
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#">Blog<i
                                        class="fa fa-angle-down"></i></a>
                                <ul role="menu"
                                    class="sub-menu">
                                    <li>
                                        <a href="blog.html">Blog
                                            List</a>
                                    </li>
                                    <li>
                                        <a href="blog-single.html">Blog
                                            Single</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="404.html">404</a>
                            </li>
                            <li>
                                <a href="contact-us.html">Contact</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="search_box pull-right">
                        <input type="text"
                               id="inputSeach"
                               placeholder="Tìm kiếm sản phẩm"/>
                        <div class="box_search"
                             id="box_search">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/header-bottom-->
</header>
<!--/header-->