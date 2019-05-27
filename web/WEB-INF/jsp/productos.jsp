<%--
    Document   : nameView
    Created on : May 2, 2010, 2:06:51 PM
    Author     : nbuser
--%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">
        <link rel="stylesheet" href="../resources/css/animate.css">
        <link rel="stylesheet" href="../resources/css/icomoon.css">
        <link rel="stylesheet" href="../resources/css/bootstrap.css">
        <link rel="stylesheet" href="../resources/css/magnific-popup.css">
        <link rel="stylesheet" href="../resources/css/flexslider.css">
        <link rel="stylesheet" href="../resources/css/owl.carousel.min.css">
        <link rel="stylesheet" href="../resources/css/owl.theme.default.min.css">
        <link rel="stylesheet" href="../resources/css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="../resources/fonts/flaticon/font/flaticon.css">
        <link rel="stylesheet" href="../resources/css/style.css">
        <script src="../resources/js/modernizr-2.6.2.min.js"></script>

        <title>Detalle de producto</title>
    </head>
    <body>

        <div class="colorlib-loader"></div>

        <div id="page">
            <nav class="colorlib-nav" role="navigation">
                <div class="top-menu">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-2">
                                <div id="colorlib-logo"><a href="../productos/productos.htm">Store</a></div>
                            </div>
                            <div class="col-xs-10 text-right menu-1">
                                <ul>
                                    <li><a href="../productos/productos.htm">Home</a></li>
                                    <li class="has-dropdown active">
                                        <a href="../productos/productos.htm">Shop</a>
                                        <ul class="dropdown">
                                            <li><a href="../detalle/cart.htm">Shipping Cart</a></li>
                                            <li><a href="checkout.html">Checkout</a></li>
                                            <li><a href="order-complete.html">Order Complete</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="../detalle/cart.htm"><i class="icon-shopping-cart"></i> Cart </a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
            <aside id="colorlib-hero" class="breadcrumbs">
                <div class="flexslider">
                    <ul class="slides">
                        <li style="background-image: url(../resources/images/cover-img-1.jpg);">
                            <div class="overlay"></div>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
                                        <div class="slider-text-inner text-center">
                                            <h1>Products</h1>
                                            <h2 class="bread"><span><a href="../productos/productos.htm">Home</a></span> <span>Shop</span></h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </aside>

            <div class="colorlib-shop">
                <div class="container">
                    <div class="row">
                        <div class="col-md-10 col-md-push-2">
                            <div clas="row row-pb-lg">
                                <c:forEach items="${lista}" var="p">
                                <div class="col-md-4 text-center">
                                    <div class="product-entry">
                                        <div class="product-img" style="background-image: url(../resources/images/item-${p.idproducto}.jpg);">
                                            <p class="tag"><span class="new">New</span></p>
                                            <div class="cart">
                                                <p>
                                                    <span><a href="../detalle/producto.htm?id=${p.idproducto}"><i class="icon-eye"></i></a></span>                                                     
                                                </p>
                                            </div>
                                        </div>
                                        <div class="desc">
                                            <h3><a href="product-detail.html">${p.nombre}</a></h3>
                                            <p class="price"><span>${p.precio}</span></p>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="col-md-2 col-md-pull-10">
                            <div class="sidebar">
                                <div class="side">
                                    <h2>Categories</h2>
                                    <div class="fancy-collapse-panel">
                                        <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                            <div class="panel panel-default">
                                                <div class="panel-heading" role="tab" id="headingOne">
                                                    <h4 class="panel-title">
                                                        <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Men
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li><a href="#">Jeans</a></li>
                                                            <li><a href="#">T-Shirt</a></li>
                                                            <li><a href="#">Jacket</a></li>
                                                            <li><a href="#">Shoes</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading" role="tab" id="headingTwo">
                                                    <h4 class="panel-title">
                                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Women
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li><a href="#">Jeans</a></li>
                                                            <li><a href="#">T-Shirt</a></li>
                                                            <li><a href="#">Jacket</a></li>
                                                            <li><a href="#">Shoes</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading" role="tab" id="headingThree">
                                                    <h4 class="panel-title">
                                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Jewelry
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li><a href="#">Jeans</a></li>
                                                            <li><a href="#">T-Shirt</a></li>
                                                            <li><a href="#">Jacket</a></li>
                                                            <li><a href="#">Shoes</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="panel panel-default">
                                                <div class="panel-heading" role="tab" id="headingFour">
                                                    <h4 class="panel-title">
                                                        <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseThree">Jewelry
                                                        </a>
                                                    </h4>
                                                </div>
                                                <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                                    <div class="panel-body">
                                                        <ul>
                                                            <li><a href="#">Jeans</a></li>
                                                            <li><a href="#">T-Shirt</a></li>
                                                            <li><a href="#">Jacket</a></li>
                                                            <li><a href="#">Shoes</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="colorlib-subscribe">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2">
                            <div class="col-md-6 text-center">
                                <h2><i class="icon-paperplane"></i>Sign Up for a Newsletter</h2>
                            </div>
                            <div class="col-md-6">
                                <form class="form-inline qbstp-header-subscribe">
                                    <div class="row">
                                        <div class="col-md-12 col-md-offset-0">
                                            <div class="form-group">
                                                <input type="text" class="form-control" id="email" placeholder="Enter your email">
                                                <button type="submit" class="btn btn-primary">Subscribe</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <footer id="colorlib-footer" role="contentinfo">
                <div class="container">
                    <div class="row row-pb-md">
                        <div class="col-md-3 colorlib-widget">
                            <h4>About Store</h4>
                            <p>Facilis ipsum reprehenderit nemo molestias. Aut cum mollitia reprehenderit. Eos cumque dicta adipisci architecto culpa amet.</p>
                            <p>
                            <ul class="colorlib-social-icons">
                                <li><a href="#"><i class="icon-twitter"></i></a></li>
                                <li><a href="#"><i class="icon-facebook"></i></a></li>
                                <li><a href="#"><i class="icon-linkedin"></i></a></li>
                                <li><a href="#"><i class="icon-dribbble"></i></a></li>
                            </ul>
                            </p>
                        </div>
                        <div class="col-md-2 colorlib-widget">
                            <h4>Customer Care</h4>
                            <p>
                            <ul class="colorlib-footer-links">
                                <li><a href="#">Contact</a></li>
                                <li><a href="#">Returns/Exchange</a></li>
                                <li><a href="#">Gift Voucher</a></li>
                                <li><a href="#">Wishlist</a></li>
                                <li><a href="#">Special</a></li>
                                <li><a href="#">Customer Services</a></li>
                                <li><a href="#">Site maps</a></li>
                            </ul>
                            </p>
                        </div>
                        <div class="col-md-2 colorlib-widget">
                            <h4>Information</h4>
                            <p>
                            <ul class="colorlib-footer-links">
                                <li><a href="#">About us</a></li>
                                <li><a href="#">Delivery Information</a></li>
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Support</a></li>
                                <li><a href="#">Order Tracking</a></li>
                            </ul>
                            </p>
                        </div>

                        <div class="col-md-2">
                            <h4>News</h4>
                            <ul class="colorlib-footer-links">
                                <li><a href="blog.html">Blog</a></li>
                                <li><a href="#">Press</a></li>
                                <li><a href="#">Exhibitions</a></li>
                            </ul>
                        </div>

                        <div class="col-md-3">
                            <h4>Contact Information</h4>
                            <ul class="colorlib-footer-links">
                                <li>291 South 21th Street, <br> Suite 721 New York NY 10016</li>
                                <li><a href="tel://1234567920">+ 1235 2355 98</a></li>
                                <li><a href="mailto:info@yoursite.com">info@yoursite.com</a></li>
                                <li><a href="#">yoursite.com</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="copy">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <p>

                                <span class="block"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart2" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></span> 
                                <span class="block">Demo Images: <a href="http://unsplash.co/" target="_blank">Unsplash</a> , <a href="http://pexels.com/" target="_blank">Pexels.com</a></span>
                            </p>
                        </div>
                    </div>
                </div>
            </footer>
        </div>


        <div class="gototop js-top">
            <a href="#" class="js-gotop"><i class="icon-arrow-up2"></i></a>
        </div>

        <!-- jQuery -->
        <script src="../resources/js/jquery.min.js"></script>
        <!-- jQuery Easing -->
        <script src="../resources/js/jquery.easing.1.3.js"></script>
        <!-- Bootstrap -->
        <script src="../resources/js/bootstrap.min.js"></script>
        <!-- Waypoints -->
        <script src="../resources/js/jquery.waypoints.min.js"></script>
        <!-- Flexslider -->
        <script src="../resources/js/jquery.flexslider-min.js"></script>
        <!-- Owl carousel -->
        <script src="../resources/js/owl.carousel.min.js"></script>
        <!-- Magnific Popup -->
        <script src="../resources/js/jquery.magnific-popup.min.js"></script>
        <script src="../resources/js/magnific-popup-options.js"></script>
        <!-- Date Picker -->
        <script src="../resources/js/bootstrap-datepicker.js"></script>
        <!-- Stellar Parallax -->
        <script src="../resources/js/jquery.stellar.min.js"></script>
        <!-- Main -->
        <script src="../resources/js/main.js"></script>
    </body>
</html>

