<%@ page
        contentType="text/html;charset=UTF-8"
        language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <%@include
            file="component/header.jsp" %>
</head>
<!--/head-->

<body>
<%@include
        file="component/navbar.jsp" %>

<section
        id="slider">
    <!--slider-->
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div id="slider-carousel"
                     class="carousel slide"
                     data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#slider-carousel"
                            data-slide-to="0"
                            class="active"></li>
                        <li data-target="#slider-carousel"
                            data-slide-to="1"></li>
                        <li data-target="#slider-carousel"
                            data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="col-sm-6">
                                <h1>
                                    <span>E</span>-SHOPPER
                                </h1>
                                <h2>
                                    Free
                                    E-Commerce
                                    Template</h2>
                                <p>
                                    Lorem
                                    ipsum
                                    dolor
                                    sit
                                    amet,
                                    consectetur
                                    adipisicing
                                    elit,
                                    sed
                                    do
                                    eiusmod
                                    tempor
                                    incididunt
                                    ut
                                    labore
                                    et
                                    dolore
                                    magna
                                    aliqua. </p>
                                <button type="button"
                                        class="btn btn-default get">
                                    Get
                                    it
                                    now
                                </button>
                            </div>
                            <div class="col-sm-6">
                                <img src="${pageContext.request.contextPath}/resources/images/home/girl1.jpg"
                                     class="girl img-responsive"
                                     alt=""/>
                                <img src="${pageContext.request.contextPath}/resources/images/home/pricing.png"
                                     class="pricing"
                                     alt=""/>
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-sm-6">
                                <h1>
                                    <span>E</span>-SHOPPER
                                </h1>
                                <h2>
                                    100%
                                    Responsive
                                    Design</h2>
                                <p>
                                    Lorem
                                    ipsum
                                    dolor
                                    sit
                                    amet,
                                    consectetur
                                    adipisicing
                                    elit,
                                    sed
                                    do
                                    eiusmod
                                    tempor
                                    incididunt
                                    ut
                                    labore
                                    et
                                    dolore
                                    magna
                                    aliqua. </p>
                                <button type="button"
                                        class="btn btn-default get">
                                    Get
                                    it
                                    now
                                </button>
                            </div>
                            <div class="col-sm-6">
                                <img src="${pageContext.request.contextPath}/resources/images/home/girl2.jpg"
                                     class="girl img-responsive"
                                     alt=""/>
                                <img src="${pageContext.request.contextPath}/resources/images/home/pricing.png"
                                     class="pricing"
                                     alt=""/>
                            </div>
                        </div>

                        <div class="item">
                            <div class="col-sm-6">
                                <h1>
                                    <span>E</span>-SHOPPER
                                </h1>
                                <h2>
                                    Free
                                    Ecommerce
                                    Template</h2>
                                <p>
                                    Lorem
                                    ipsum
                                    dolor
                                    sit
                                    amet,
                                    consectetur
                                    adipisicing
                                    elit,
                                    sed
                                    do
                                    eiusmod
                                    tempor
                                    incididunt
                                    ut
                                    labore
                                    et
                                    dolore
                                    magna
                                    aliqua. </p>
                                <button type="button"
                                        class="btn btn-default get">
                                    Get
                                    it
                                    now
                                </button>
                            </div>
                            <div class="col-sm-6">
                                <img src="${pageContext.request.contextPath}/resources/images/home/girl3.jpg"
                                     class="girl img-responsive"
                                     alt=""/>
                                <img src="${pageContext.request.contextPath}/resources/images/home/pricing.png"
                                     class="pricing"
                                     alt=""/>
                            </div>
                        </div>

                    </div>

                    <a href="#slider-carousel"
                       class="left control-carousel hidden-xs"
                       data-slide="prev">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <a href="#slider-carousel"
                       class="right control-carousel hidden-xs"
                       data-slide="next">
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>

            </div>
        </div>
    </div>
</section>
<!--/slider-->

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <%@include
                        file="component/left_sidebar.jsp" %>
            </div>

            <div class="col-sm-9 padding-right">
                <div class="features_items"
                     id="features_items">
                    <!--features_items-->
                    <h2 class="title text-center">
                        Sản
                        phẩm
                        mới</h2>
                </div>
                <!--features_items-->

                <div class="category-tab">
                    <!--category-tab-->
                    <div class="col-sm-12">
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a href="#tshirt"
                                   data-toggle="tab">T-Shirt</a>
                            </li>
                            <li>
                                <a href="#blazers"
                                   data-toggle="tab">Blazers</a>
                            </li>
                            <li>
                                <a href="#sunglass"
                                   data-toggle="tab">Sunglass</a>
                            </li>
                            <li>
                                <a href="#kids"
                                   data-toggle="tab">Kids</a>
                            </li>
                            <li>
                                <a href="#poloshirt"
                                   data-toggle="tab">Polo
                                    shirt</a>
                            </li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade active in"
                             id="tshirt">
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="https://salt.tikicdn.com/cache/550x550/ts/product/7c/87/e7/4c619b44ace4c7f4cbe0e470648f1d45.JPG"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="https://salt.tikicdn.com/cache/550x550/ts/product/7c/87/e7/4c619b44ace4c7f4cbe0e470648f1d45.JPG"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery3.jpg"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="https://salt.tikicdn.com/cache/550x550/ts/product/7c/87/e7/4c619b44ace4c7f4cbe0e470648f1d45.JPG"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade"
                             id="blazers">
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="https://salt.tikicdn.com/cache/550x550/ts/product/7c/87/e7/4c619b44ace4c7f4cbe0e470648f1d45.JPG"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="https://salt.tikicdn.com/cache/550x550/ts/product/7c/87/e7/4c619b44ace4c7f4cbe0e470648f1d45.JPG"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="https://salt.tikicdn.com/cache/550x550/ts/product/7c/87/e7/4c619b44ace4c7f4cbe0e470648f1d45.JPG"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="https://salt.tikicdn.com/cache/550x550/ts/product/7c/87/e7/4c619b44ace4c7f4cbe0e470648f1d45.JPG"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade"
                             id="sunglass">
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery3.jpg"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery4.jpg"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery1.jpg"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery2.jpg"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade"
                             id="kids">
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery1.jpg"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery2.jpg"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery3.jpg"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery4.jpg"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade"
                             id="poloshirt">
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery2.jpg"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery4.jpg"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery3.jpg"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="images/home/gallery1.jpg"
                                                 alt=""/>
                                            <h2>
                                                $56</h2>
                                            <p>
                                                Easy
                                                Polo
                                                Black
                                                Edition</p>
                                            <a href="#"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Add
                                                to
                                                cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--/category-tab-->

                <div class="recommended_items">
                    <!--recommended_items-->
                    <h2 class="title text-center">
                        recommended
                        items</h2>

                    <div id="recommended-item-carousel"
                         class="carousel slide"
                         data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="item active">
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/recommend1.jpg"
                                                     alt=""/>
                                                <h2>
                                                    $56</h2>
                                                <p>
                                                    Easy
                                                    Polo
                                                    Black
                                                    Edition</p>
                                                <a href="#"
                                                   class="btn btn-default add-to-cart"><i
                                                        class="fa fa-shopping-cart"></i>Add
                                                    to
                                                    cart</a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/recommend2.jpg"
                                                     alt=""/>
                                                <h2>
                                                    $56</h2>
                                                <p>
                                                    Easy
                                                    Polo
                                                    Black
                                                    Edition</p>
                                                <a href="#"
                                                   class="btn btn-default add-to-cart"><i
                                                        class="fa fa-shopping-cart"></i>Add
                                                    to
                                                    cart</a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/recommend3.jpg"
                                                     alt=""/>
                                                <h2>
                                                    $56</h2>
                                                <p>
                                                    Easy
                                                    Polo
                                                    Black
                                                    Edition</p>
                                                <a href="#"
                                                   class="btn btn-default add-to-cart"><i
                                                        class="fa fa-shopping-cart"></i>Add
                                                    to
                                                    cart</a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/recommend1.jpg"
                                                     alt=""/>
                                                <h2>
                                                    $56</h2>
                                                <p>
                                                    Easy
                                                    Polo
                                                    Black
                                                    Edition</p>
                                                <a href="#"
                                                   class="btn btn-default add-to-cart"><i
                                                        class="fa fa-shopping-cart"></i>Add
                                                    to
                                                    cart</a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/recommend2.jpg"
                                                     alt=""/>
                                                <h2>
                                                    $56</h2>
                                                <p>
                                                    Easy
                                                    Polo
                                                    Black
                                                    Edition</p>
                                                <a href="#"
                                                   class="btn btn-default add-to-cart"><i
                                                        class="fa fa-shopping-cart"></i>Add
                                                    to
                                                    cart</a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="product-image-wrapper">
                                        <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="images/home/recommend3.jpg"
                                                     alt=""/>
                                                <h2>
                                                    $56</h2>
                                                <p>
                                                    Easy
                                                    Polo
                                                    Black
                                                    Edition</p>
                                                <a href="#"
                                                   class="btn btn-default add-to-cart"><i
                                                        class="fa fa-shopping-cart"></i>Add
                                                    to
                                                    cart</a>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <a class="left recommended-item-control"
                           href="#recommended-item-carousel"
                           data-slide="prev">
                            <i class="fa fa-angle-left"></i>
                        </a>
                        <a class="right recommended-item-control"
                           href="#recommended-item-carousel"
                           data-slide="next">
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </div>
                </div>
                <!--/recommended_items-->

            </div>
        </div>
    </div>
</section>
<%@include
        file="component/footer.jsp" %>
<script>
    $(document).ready(function () {
        $.ajax({
            url: '${pageContext.request.contextPath}/product/all',
            method: 'GET',
            data: {
                maxSize: 6
            },
            dataType: 'json',
            success: function (data) {
                console.log(data)
                $.each(data, function (index, item) {
                    $('#features_items').append(
                        '<div class="col-sm-4">' +
                        '<div class="product-image-wrapper">' +
                        '<div class="productinfo text-center">' +
                        '<a href="${pageContext.request.contextPath}/product/details?id=' + item.id + '">' +
                        '<img src="${pageContext.request.contextPath}/' + item.image + '" style="height: 255px" alt="" />' +
                        '<h2>' + item.price.toLocaleString().replace(',', '.') + 'đ</h2>' +
                        '<p title="' + item.name + '">' + item.name + '</p>' +
                        '</a>' +
                        '<button onclick="addToCart(' + item.id + ', 1)" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</button>' +
                        '</div>' +
                        '</div>' +
                        '</div>'
                    )
                })
            }
        })
        // Thêm sản phẩm vào giỏ hàng
    })
</script>
</body>
</html>
