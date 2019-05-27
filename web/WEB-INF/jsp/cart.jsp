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
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Store Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <meta name="author" content="" />

        <!-- Facebook and Twitter integration -->
        <meta property="og:title" content=""/>
        <meta property="og:image" content=""/>
        <meta property="og:url" content=""/>
        <meta property="og:site_name" content=""/>
        <meta property="og:description" content=""/>
        <meta name="twitter:title" content="" />
        <meta name="twitter:image" content="" />
        <meta name="twitter:url" content="" />
        <meta name="twitter:card" content="" />

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
                                            <li><a href="..detalle/cart.htm">Shipping Cart</a></li>
                                            <li><a href="checkout.html">Checkout</a></li>
                                            <li><a href="order-complete.html">Order Complete</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="../detalle/cart.htm"><i class="icon-shopping-cart"></i> Cart</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
            <aside id="colorlib-hero" class="breadcrumbs">
                <div class="flexslider">
                    <ul class="slides">
                        <li style="background-image: url(images/cover-img-1.jpg);">
                            <div class="overlay"></div>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3 col-sm-12 col-xs-12 slider-text">
                                        <div class="slider-text-inner text-center">
                                            <h1>Shopping Cart</h1>
                                            <h2 class="bread"><span><a href="../productos/productos.htm">Home</a></span> <span><a href="../productos/productos.htm">Product</a></span> <span>Shopping Cart</span></h2>
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
                    <div class="row row-pb-md">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="process-wrap">
                                <div class="process text-center active">
                                    <p><span>01</span></p>
                                    <h3>Shopping Cart</h3>
                                </div>
                                <div class="process text-center">
                                    <p><span>02</span></p>
                                    <h3>Checkout</h3>
                                </div>
                                <div class="process text-center">
                                    <p><span>03</span></p>
                                    <h3>Order Complete</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row row-pb-md">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="product-name">
                                <div class="one-forth text-center">
                                    <span>Product Details</span>
                                </div>
                                <div class="one-eight text-center">
                                    <span>Price</span>
                                </div>
                                <div class="one-eight text-center">
                                    <span>Quantity</span>
                                </div>
                                <div class="one-eight text-center">
                                    <span>Remove</span>
                                </div>
                            </div>
                            <c:forEach items="${lista}" var="p">
                            <div class="product-cart">
                                <div class="one-forth">
                                    <div class="product-img" style="background-image: url(images/item-6.jpg);">
                                    </div>
                                    <div class="display-tc">
                                        <h3>${p.nombre}</h3>
                                    </div>
                                </div>
                                <div class="one-eight text-center">
                                    <div class="display-tc">
                                        <span class="price">${p.precio}</span>
                                    </div>
                                </div>
                                <div class="one-eight text-center">
                                    <div class="display-tc">
                                        <span class="price">${p.cantidad}</span>
                                    </div>
                                </div>
                                <div class="one-eight text-center">
                                    <div class="display-tc">
                                        <a href="../detalle/quitar.htm?id=${p.idproducto}" class="closed"></a>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>
                           
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="total-wrap">
                                <div class="row">
                                    
                                    <div class="col-md-3 col-md-push-3 text-center">
                                        <div class="total">
                                            <div class="sub">
                                                <p><span>Subtotal:</span> <span>Q ${total}</span></p>
                                                <p><span>Delivery:</span> <span>Q 0.00</span></p>
                                                <p><span>Discount:</span> <span>Q 0.00</span></p>
                                            </div>
                                            <div class="grand-total">
                                                <p><span><strong>Total:</strong></span> <span>Q ${total}</span></p>
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
        <script src="../resources/js/jquery.min.js"></script>
        <script src="../resources/js/jquery.easing.1.3.js"></script>
        <script src="../resources/js/bootstrap.min.js"></script>
        <script src="../resources/js/jquery.waypoints.min.js"></script>
        <script src="../resources/js/jquery.flexslider-min.js"></script>
        <script src="../resources/js/owl.carousel.min.js"></script>
        <script src="../resources/js/jquery.magnific-popup.min.js"></script>
        <script src="../resources/js/magnific-popup-options.js"></script>
        <script src="../resources/js/bootstrap-datepicker.js"></script>
        <script src="../resources/js/jquery.stellar.min.js"></script>
        <script src="../resources/js/main.js"></script>

    </body>
</html>

