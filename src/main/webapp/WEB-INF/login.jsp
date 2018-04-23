<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Login / Register Account
    </title>
    <!-- SEO Meta Tags-->
    <meta name="description" content="Unishop - Universal E-Commerce Template">
    <meta name="keywords"
          content="shop, e-commerce, modern, flat style, responsive, online store, business, mobile, blog, bootstrap 4, html5, css3, jquery, js, gallery, slider, touch, creative, clean">
    <meta name="author" content="Rokaux">
    <!-- Mobile Specific Meta Tag-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!-- Favicon and Apple Icons-->
    <link rel="icon" type="image/x-icon" href="../img/favicon.ico">
    <link rel="icon" type="image/png" href="../img/favicon.png">
    <link rel="apple-touch-icon" href="../img/touch-icon-iphone.png">
    <link rel="apple-touch-icon" sizes="152x152" href="../img/touch-icon-ipad.png">
    <link rel="apple-touch-icon" sizes="180x180" href="../img/touch-icon-iphone-retina.png">
    <link rel="apple-touch-icon" sizes="167x167" href="../img/touch-icon-ipad-retina.png">
    <!-- Vendor Styles including: Bootstrap, Font Icons, Plugins, etc.-->
    <link rel="stylesheet" media="screen" href="../css/vendor.min.css">
    <!-- Main Template Styles-->
    <link id="mainStyles" rel="stylesheet" media="screen" href="../css/styles.min.css">
    <!-- Customizer Styles-->
    <link rel="stylesheet" media="screen" href="../customizer/customizer.min.css">
    <!-- Google Tag Manager-->
    <script>
        (function (w, d, s, l, i) {
            w[l] = w[l] || [];
            w[l].push({
                'gtm.start':
                    new Date().getTime(), event: 'gtm.js'
            });
            var f = d.getElementsByTagName(s)[0],
                j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
            j.async = true;
            j.src =
                '//www.googletagmanager.com/gtm.js?id=' + i + dl;
            f.parentNode.insertBefore(j, f);
        })(window, document, 'script', 'dataLayer', 'GTM-T4DJFPZ');

    </script>
    <!-- Modernizr-->
    <script src="../js/modernizr.min.js"></script>
</head>
<!-- Body-->
<body>
<!-- Google Tag Manager (noscript)-->
<noscript>
    <iframe src="http://www.googletagmanager.com/ns.html?id=GTM-T4DJFPZ" height="0" width="0"
            style="display: none; visibility: hidden;"></iframe>
</noscript>
<!-- Template Customizer-->
<%--<div class="customizer-backdrop"></div>--%>
<%--<div class="customizer">--%>
<%--<div class="customizer-toggle"><i class="icon-cog"></i></div>--%>
<%--<div class="customizer-body"><a class="btn btn-white btn-rounded btn-block mb-4 mt-0"--%>
<%--href="../template-2/index.html">Switch To Template 2</a>--%>
<%--<div class="customizer-title">Choose color</div>--%>
<%--<div class="customizer-color-switch"><a class="active" href="account-login.html#" data-color="default"--%>
<%--style="background-color: #0da9ef;"></a><a href="account-login.html#"--%>
<%--data-color="2ecc71"--%>
<%--style="background-color: #2ecc71;"></a><a--%>
<%--href="account-login.html#" data-color="f39c12" style="background-color: #f39c12;"></a><a--%>
<%--href="account-login.html#" data-color="e74c3c" style="background-color: #e74c3c;"></a></div>--%>
<%--<div class="customizer-title">Header option</div>--%>
<%--<div class="form-group">--%>
<%--<select class="form-control form-control-rounded input-light" id="header-option">--%>
<%--<option value="sticky">Sticky</option>--%>
<%--<option value="static">Static</option>--%>
<%--</select>--%>
<%--</div>--%>
<%--<div class="customizer-title">Footer option</div>--%>
<%--<div class="form-group">--%>
<%--<select class="form-control form-control-rounded input-light" id="footer-option">--%>
<%--<option value="dark">Dark</option>--%>
<%--<option value="light">Light</option>--%>
<%--</select>--%>
<%--</div>--%>
<%--<a class="btn btn-primary btn-rounded btn-block margin-bottom-none"--%>
<%--href="https://wrapbootstrap.com/theme/unishop-universal-e-commerce-template-WB0148688/?ref=rokaux">Buy--%>
<%--Unishop</a>--%>
<%--</div>--%>
<%--</div>--%>
<!-- Off-Canvas Category Menu-->
<div class="offcanvas-container" id="shop-categories">
    <div class="offcanvas-header">
        <h3 class="offcanvas-title">Shop Categories</h3>
    </div>
    <nav class="offcanvas-menu">
        <ul class="menu">
            <li class="has-children"><span><a href="account-login.html#">Men's Shoes</a><span
                    class="sub-menu-toggle"></span></span>
                <ul class="offcanvas-submenu">
                    <li><a href="account-login.html#">Sneakers</a></li>
                    <li><a href="account-login.html#">Loafers</a></li>
                    <li><a href="account-login.html#">Boat Shoes</a></li>
                    <li><a href="account-login.html#">Sandals</a></li>
                    <li><a href="account-login.html#">View All</a></li>
                </ul>
            </li>
            <li class="has-children"><span><a href="account-login.html#">Women's Shoes</a><span
                    class="sub-menu-toggle"></span></span>
                <ul class="offcanvas-submenu">
                    <li><a href="account-login.html#">Sandals</a></li>
                    <li><a href="account-login.html#">Flats</a></li>
                    <li><a href="account-login.html#">Sneakers</a></li>
                    <li><a href="account-login.html#">Heels</a></li>
                    <li><a href="account-login.html#">View All</a></li>
                </ul>
            </li>
            <li class="has-children"><span><a href="account-login.html#">Men's Clothing</a><span
                    class="sub-menu-toggle"></span></span>
                <ul class="offcanvas-submenu">
                    <li><a href="account-login.html#">Shirts &amp; Tops</a></li>
                    <li><a href="account-login.html#">Pants</a></li>
                    <li><a href="account-login.html#">Jackets</a></li>
                    <li><a href="account-login.html#">View All</a></li>
                </ul>
            </li>
            <li class="has-children"><span><a href="account-login.html#">Women's Clothing</a><span
                    class="sub-menu-toggle"></span></span>
                <ul class="offcanvas-submenu">
                    <li><a href="account-login.html#">Dresses</a></li>
                    <li><a href="account-login.html#">Shirts &amp; Tops</a></li>
                    <li><a href="account-login.html#">Shorts</a></li>
                    <li><a href="account-login.html#">Swimwear</a></li>
                    <li><a href="account-login.html#">View All</a></li>
                </ul>
            </li>
            <li class="has-children"><span><a href="account-login.html#">Kid's Shoes</a><span
                    class="sub-menu-toggle"></span></span>
                <ul class="offcanvas-submenu">
                    <li><a href="account-login.html#">Boots</a></li>
                    <li><a href="account-login.html#">Sandals</a></li>
                    <li><a href="account-login.html#">Crib Shoes</a></li>
                    <li><a href="account-login.html#">Loafers</a></li>
                    <li><a href="account-login.html#">View All</a></li>
                </ul>
            </li>
            <li class="has-children"><span><a href="account-login.html#">Bags</a><span
                    class="sub-menu-toggle"></span></span>
                <ul class="offcanvas-submenu">
                    <li><a href="account-login.html#">Handbags</a></li>
                    <li><a href="account-login.html#">Backpacks</a></li>
                    <li><a href="account-login.html#">Luggage</a></li>
                    <li><a href="account-login.html#">Wallets</a></li>
                    <li><a href="account-login.html#">View All</a></li>
                </ul>
            </li>
            <li class="has-children"><span><a href="account-login.html#">Accessories</a><span
                    class="sub-menu-toggle"></span></span>
                <ul class="offcanvas-submenu">
                    <li><a href="account-login.html#">Sunglasses</a></li>
                    <li><a href="account-login.html#">Hats</a></li>
                    <li><a href="account-login.html#">Watches</a></li>
                    <li><a href="account-login.html#">Jewelry</a></li>
                    <li><a href="account-login.html#">Belts</a></li>
                    <li><a href="account-login.html#">View All</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</div>
<!-- Off-Canvas Mobile Menu-->
<div class="offcanvas-container" id="mobile-menu"><a class="account-link" href="account-orders.html">
    <div class="user-ava"><img src="img/account/user-ava-md.jpg" alt="Daniel Adams">
    </div>
    <div class="user-info">
        <h6 class="user-name">Daniel Adams</h6><span class="text-sm text-white opacity-60">290 Reward points</span>
    </div>
</a>
    <nav class="offcanvas-menu">
        <ul class="menu">
            <li class="has-children"><span><a href="index.html"><span>Home</span></a><span
                    class="sub-menu-toggle"></span></span>
                <ul class="offcanvas-submenu">
                    <li><a href="index.html">Featured Products Slider</a></li>
                    <li><a href="home-featured-categories.html">Featured Categories</a></li>
                    <li><a href="home-collection-showcase.html">Products Collection Showcase</a></li>
                </ul>
            </li>
            <li class="has-children"><span><a href="shop-grid-ls.html"><span>Shop</span></a><span
                    class="sub-menu-toggle"></span></span>
                <ul class="offcanvas-submenu">
                    <li><a href="shop-categories.html">Shop Categories</a></li>
                    <li class="has-children"><span><a href="shop-grid-ls.html"><span>Shop Grid</span></a><span
                            class="sub-menu-toggle"></span></span>
                        <ul class="offcanvas-submenu">
                            <li><a href="shop-grid-ls.html">Grid Left Sidebar</a></li>
                            <li><a href="shop-grid-rs.html">Grid Right Sidebar</a></li>
                            <li><a href="shop-grid-ns.html">Grid No Sidebar</a></li>
                        </ul>
                    </li>
                    <li class="has-children"><span><a href="shop-list-ls.html"><span>Shop List</span></a><span
                            class="sub-menu-toggle"></span></span>
                        <ul class="offcanvas-submenu">
                            <li><a href="shop-list-ls.html">List Left Sidebar</a></li>
                            <li><a href="shop-list-rs.html">List Right Sidebar</a></li>
                            <li><a href="shop-list-ns.html">List No Sidebar</a></li>
                        </ul>
                    </li>
                    <li><a href="shop-single.html">Single Product</a></li>
                    <li><a href="cart.html">Cart</a></li>
                    <li><a href="http://themes.rokaux.com/unishop/v2.2/template-1/checkout.html">Checkout</a></li>
                </ul>
            </li>
            <li class="has-children"><span><a href="account-login.html#">Categories</a><span
                    class="sub-menu-toggle"></span></span>
                <ul class="offcanvas-submenu">
                    <li class="has-children"><span><a href="account-login.html#">Men's Shoes</a><span
                            class="sub-menu-toggle"></span></span>
                        <ul class="offcanvas-submenu">
                            <li><a href="account-login.html#">Sneakers</a></li>
                            <li><a href="account-login.html#">Loafers</a></li>
                            <li><a href="account-login.html#">Boat Shoes</a></li>
                            <li><a href="account-login.html#">Sandals</a></li>
                            <li><a href="account-login.html#">View All</a></li>
                        </ul>
                    </li>
                    <li class="has-children"><span><a href="account-login.html#">Women's Shoes</a><span
                            class="sub-menu-toggle"></span></span>
                        <ul class="offcanvas-submenu">
                            <li><a href="account-login.html#">Sandals</a></li>
                            <li><a href="account-login.html#">Flats</a></li>
                            <li><a href="account-login.html#">Sneakers</a></li>
                            <li><a href="account-login.html#">Heels</a></li>
                            <li><a href="account-login.html#">View All</a></li>
                        </ul>
                    </li>
                    <li class="has-children"><span><a href="account-login.html#">Men's Clothing</a><span
                            class="sub-menu-toggle"></span></span>
                        <ul class="offcanvas-submenu">
                            <li><a href="account-login.html#">Shirts &amp; Tops</a></li>
                            <li><a href="account-login.html#">Pants</a></li>
                            <li><a href="account-login.html#">Jackets</a></li>
                            <li><a href="account-login.html#">View All</a></li>
                        </ul>
                    </li>
                    <li class="has-children"><span><a href="account-login.html#">Women's Clothing</a><span
                            class="sub-menu-toggle"></span></span>
                        <ul class="offcanvas-submenu">
                            <li><a href="account-login.html#">Dresses</a></li>
                            <li><a href="account-login.html#">Shirts &amp; Tops</a></li>
                            <li><a href="account-login.html#">Shorts</a></li>
                            <li><a href="account-login.html#">Swimwear</a></li>
                            <li><a href="account-login.html#">View All</a></li>
                        </ul>
                    </li>
                    <li class="has-children"><span><a href="account-login.html#">Bags</a><span
                            class="sub-menu-toggle"></span></span>
                        <ul class="offcanvas-submenu">
                            <li><a href="account-login.html#">Handbags</a></li>
                            <li><a href="account-login.html#">Backpacks</a></li>
                            <li><a href="account-login.html#">Luggage</a></li>
                            <li><a href="account-login.html#">Wallets</a></li>
                            <li><a href="account-login.html#">View All</a></li>
                        </ul>
                    </li>
                    <li class="has-children"><span><a href="account-login.html#">Accessories</a><span
                            class="sub-menu-toggle"></span></span>
                        <ul class="offcanvas-submenu">
                            <li><a href="account-login.html#">Sunglasses</a></li>
                            <li><a href="account-login.html#">Hats</a></li>
                            <li><a href="account-login.html#">Watches</a></li>
                            <li><a href="account-login.html#">Jewelry</a></li>
                            <li><a href="account-login.html#">Belts</a></li>
                            <li><a href="account-login.html#">View All</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="has-children active"><span><a href="account-orders.html"><span>Account</span></a><span
                    class="sub-menu-toggle"></span></span>
                <ul class="offcanvas-submenu">
                    <li class="active"><a href="account-login.html">Login / Register</a></li>
                    <li><a href="account-password-recovery.html">Password Recovery</a></li>
                    <li><a href="account-orders.html">Orders List</a></li>
                    <li><a href="account-wishlist.html">Wishlist</a></li>
                    <li><a href="account-profile.html">Profile Page</a></li>
                    <li><a href="account-address.html">Contact / Shipping Address</a></li>
                    <li><a href="http://themes.rokaux.com/unishop/v2.2/template-1/account-open-ticket.html">Open
                        Ticket</a></li>
                    <li><a href="account-tickets.html">My Tickets</a></li>
                    <li><a href="account-single-ticket.html">Single Ticket</a></li>
                </ul>
            </li>
            <li class="has-children"><span><a href="blog-rs.html"><span>Blog</span></a><span
                    class="sub-menu-toggle"></span></span>
                <ul class="offcanvas-submenu">
                    <li class="has-children"><span><a href="blog-rs.html"><span>Blog Layout</span></a><span
                            class="sub-menu-toggle"></span></span>
                        <ul class="offcanvas-submenu">
                            <li><a href="blog-rs.html">Blog Right Sidebar</a></li>
                            <li><a href="blog-ls.html">Blog Left Sidebar</a></li>
                            <li><a href="blog-ns.html">Blog No Sidebar</a></li>
                        </ul>
                    </li>
                    <li class="has-children"><span><a
                            href="blog-single-rs.html"><span>Single Post Layout</span></a><span
                            class="sub-menu-toggle"></span></span>
                        <ul class="offcanvas-submenu">
                            <li><a href="blog-single-rs.html">Post Right Sidebar</a></li>
                            <li><a href="blog-single-ls.html">Post Left Sidebar</a></li>
                            <li><a href="blog-single-ns.html">Post No Sidebar</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            <li class="has-children"><span><a href="account-login.html#"><span>Pages</span></a><span
                    class="sub-menu-toggle"></span></span>
                <ul class="offcanvas-submenu">
                    <li><a href="about.html">About Us</a></li>
                    <li><a href="http://themes.rokaux.com/unishop/v2.2/template-1/mobile-app.html">Unishop Mobile
                        App</a></li>
                    <li><a href="http://themes.rokaux.com/unishop/v2.2/template-1/services.html">Services</a></li>
                    <li><a href="contacts.html">Contacts</a></li>
                    <li><a href="faq.html">Help / FAQ</a></li>
                    <li><a href="order-tracking.html">Order Tracking</a></li>
                    <li><a href="search-results.html">Search Results</a></li>
                    <li><a href="404.html">404</a></li>
                    <li><a href="coming-soon.html">Coming Soon</a></li>
                    <li><a class="text-danger" href="docs/dev-setup.html">Documentation</a></li>
                </ul>
            </li>
            <li class="has-children"><span><a href="components/accordion.html"><span>Components</span></a><span
                    class="sub-menu-toggle"></span></span>
                <ul class="offcanvas-submenu">
                    <li><a href="components/accordion.html">Accordion</a></li>
                    <li><a href="components/alerts.html">Alerts</a></li>
                    <li><a href="components/buttons.html">Buttons</a></li>
                    <li><a href="components/cards.html">Cards</a></li>
                    <li><a href="components/carousel.html">Carousel</a></li>
                    <li><a href="components/countdown.html">Countdown</a></li>
                    <li><a href="components/forms.html">Forms</a></li>
                    <li><a href="components/gallery.html">Gallery</a></li>
                    <li><a href="components/google-maps.html">Google Maps</a></li>
                    <li><a href="components/images.html">Images &amp; Figures</a></li>
                    <li><a href="components/list-group.html">List Group</a></li>
                    <li><a href="components/market-social-buttons.html">Market &amp; Social Buttons</a></li>
                    <li><a href="components/media.html">Media Object</a></li>
                    <li><a href="components/modal.html">Modal</a></li>
                    <li><a href="components/pagination.html">Pagination</a></li>
                    <li><a href="components/pills.html">Pills</a></li>
                    <li><a href="components/progress-bars.html">Progress Bars</a></li>
                    <li><a href="components/shop-items.html">Shop Items</a></li>
                    <li><a href="components/steps.html">Steps</a></li>
                    <li><a href="components/tables.html">Tables</a></li>
                    <li><a href="components/tabs.html">Tabs</a></li>
                    <li><a href="components/team.html">Team</a></li>
                    <li><a href="components/toasts.html">Toast Notifications</a></li>
                    <li><a href="components/tooltips-popovers.html">Tooltips &amp; Popovers</a></li>
                    <li><a href="components/typography.html">Typography</a></li>
                    <li><a href="components/video-player.html">Video Player</a></li>
                    <li><a href="components/widgets.html">Widgets</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</div>
<!-- Topbar-->
<%--<div class="topbar">--%>
<%--<div class="topbar-column"><a class="hidden-md-down" href="mailto:support@unishop.com"><i class="icon-mail"></i>&nbsp;--%>
<%--support@unishop.com</a><a class="hidden-md-down" href="tel:00331697720"><i class="icon-bell"></i>&nbsp; 00 33--%>
<%--169 7720</a><a class="social-button sb-facebook shape-none sb-dark" href="account-login.html#"--%>
<%--target="_blank"><i class="socicon-facebook"></i></a><a--%>
<%--class="social-button sb-twitter shape-none sb-dark" href="account-login.html#" target="_blank"><i--%>
<%--class="socicon-twitter"></i></a><a class="social-button sb-instagram shape-none sb-dark"--%>
<%--href="account-login.html#" target="_blank"><i--%>
<%--class="socicon-instagram"></i></a><a class="social-button sb-pinterest shape-none sb-dark"--%>
<%--href="account-login.html#" target="_blank"><i--%>
<%--class="socicon-pinterest"></i></a>--%>
<%--</div>--%>
<%--&lt;%&ndash;<div class="topbar-column"><a class="hidden-md-down" href="account-login.html#"><i class="icon-download"></i>&nbsp;&ndash;%&gt;--%>
<%--&lt;%&ndash;Get mobile app</a>&ndash;%&gt;--%>
<%--<div class="lang-currency-switcher-wrap">--%>
<%--<div class="lang-currency-switcher dropdown-toggle"><span class="language"><img alt="English"--%>
<%--src="img/flags/GB.png"></span><span--%>
<%--class="currency">$ USD</span></div>--%>
<%--<div class="dropdown-menu">--%>
<%--<div class="currency-select">--%>
<%--<select class="form-control form-control-rounded form-control-sm">--%>
<%--<option value="usd">$ USD</option>--%>
<%--<option value="usd">€ EUR</option>--%>
<%--<option value="usd">£ UKP</option>--%>
<%--<option value="usd">¥ JPY</option>--%>
<%--</select>--%>
<%--</div>--%>
<%--<a class="dropdown-item" href="account-login.html#"><img src="img/flags/FR.png" alt="Français">Français</a><a--%>
<%--class="dropdown-item" href="account-login.html#"><img src="img/flags/DE.png"--%>
<%--alt="Deutsch">Deutsch</a><a--%>
<%--class="dropdown-item" href="account-login.html#"><img src="img/flags/IT.png" alt="Italiano">Italiano</a>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
</div>
<!-- Navbar-->
<!-- Remove "navbar-sticky" class to make navigation bar scrollable with the page.-->
<%--<header class="navbar navbar-sticky">--%>
<%--<!-- Search-->--%>
<%--<form class="site-search" method="get" action="/search">--%>
<%--<input type="text" name="site_search" placeholder="Type to search...">--%>
<%--<div class="search-tools"><span class="clear-search">Clear</span><span class="close-search"><i--%>
<%--class="icon-cross"></i></span></div>--%>
<%--</form>--%>
<%--<div class="site-branding">--%>
<%--<div class="inner">--%>
<%--&lt;%&ndash;<!-- Off-Canvas Toggle (#shop-categories)--><a class="offcanvas-toggle cats-toggle"&ndash;%&gt;--%>
<%--&lt;%&ndash;href="account-login.html#shop-categories"&ndash;%&gt;--%>
<%--&lt;%&ndash;data-toggle="offcanvas"></a>&ndash;%&gt;--%>
<%--<!-- Off-Canvas Toggle (#mobile-menu)--><a class="offcanvas-toggle menu-toggle"--%>
<%--href="account-login.html#mobile-menu"--%>
<%--data-toggle="offcanvas"></a>--%>
<%--<!-- Site Logo--><a class="site-logo" href="/"><img src="img/logo/logo.png" alt="Unishop"></a>--%>
<%--</div>--%>
<%--</div>--%>
<%--<!-- Main Navigation-->--%>
<%--<nav class="site-menu">--%>
<%--<ul>--%>
<%--<li class="has-megamenu"><a href="/home"><span>Home</span></a>--%>
<%--&lt;%&ndash;<ul class="mega-menu">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a class="d-block img-thumbnail text-center navi-link" href="index.html"><img&ndash;%&gt;--%>
<%--&lt;%&ndash;alt="Featured Products Slider" src="img/mega-menu-home/01.jpg">&ndash;%&gt;--%>
<%--&lt;%&ndash;<h6 class="mt-3">Featured Products Slider</h6></a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a class="d-block img-thumbnail text-center navi-link" href="home-featured-categories.html"><img&ndash;%&gt;--%>
<%--&lt;%&ndash;alt="Featured Categories" src="img/mega-menu-home/02.jpg">&ndash;%&gt;--%>
<%--&lt;%&ndash;<h6 class="mt-3">Featured Categories</h6></a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a class="d-block img-thumbnail text-center navi-link" href="home-collection-showcase.html"><img&ndash;%&gt;--%>
<%--&lt;%&ndash;alt="Products Collection Showcase" src="img/mega-menu-home/03.jpg">&ndash;%&gt;--%>
<%--&lt;%&ndash;<h6 class="mt-3">Products Collection Showcase</h6></a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="img-thumbnail text-center"><img alt="More To Come. Stay Tuned!"&ndash;%&gt;--%>
<%--&lt;%&ndash;src="img/mega-menu-home/04.jpg">&ndash;%&gt;--%>
<%--&lt;%&ndash;<h6 class="mt-3">More To Come. Stay Tuned!</h6>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--</li>--%>
<%--<li><a href="#"><span>Shop</span></a>--%>
<%--<ul class="sub-menu">--%>
<%--<li><a href="/shCategories">Shop Categories</a></li>--%>
<%--&lt;%&ndash;<li class="has-children"><a href="shop-grid-ls.html"><span>Shop Grid</span></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul class="sub-menu">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="shop-grid-ls.html">Grid Left Sidebar</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="shop-grid-rs.html">Grid Right Sidebar</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="shop-grid-ns.html">Grid No Sidebar</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li class="has-children"><a href="shop-list-ls.html"><span>Shop List</span></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul class="sub-menu">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="shop-list-ls.html">List Left Sidebar</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="shop-list-rs.html">List Right Sidebar</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="shop-list-ns.html">List No Sidebar</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--<li><a href="/shProducts">Shop Products</a></li>--%>
<%--&lt;%&ndash;<li><a href="cart.html">Cart</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li class="has-children"><a href="checkout-address.html"><span>Checkout</span></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul class="sub-menu">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="checkout-address.html">Address</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="checkout-shipping.html">Shipping</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="checkout-payment.html">Payment</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="checkout-review.html">Review</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="checkout-complete.html">Complete</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--</ul>--%>
<%--</li>--%>
<%--<li class="has-megamenu"><a href="#"><span>Mega Menu</span></a>--%>
<%--<ul class="mega-menu">--%>
<%--<li><span class="mega-menu-title">Top Categories</span>--%>
<%--<ul class="sub-menu">--%>
<%--<li><a href="account-login.html#">Men's Shoes</a></li>--%>
<%--<li><a href="account-login.html#">Women's Shoes</a></li>--%>
<%--<li><a href="account-login.html#">Shirts and Tops</a></li>--%>
<%--<li><a href="account-login.html#">Swimwear</a></li>--%>
<%--<li><a href="account-login.html#">Shorts and Pants</a></li>--%>
<%--<li><a href="account-login.html#">Accessories</a></li>--%>
<%--</ul>--%>
<%--</li>--%>
<%--<li><span class="mega-menu-title">Specialty Shops</span>--%>
<%--<ul class="sub-menu">--%>
<%--<li><a href="account-login.html#">Junior's Shop</a></li>--%>
<%--<li><a href="account-login.html#">Swim Shop</a></li>--%>
<%--<li><a href="account-login.html#">Athletic Shop</a></li>--%>
<%--<li><a href="account-login.html#">Outdoor Shop</a></li>--%>
<%--<li><a href="account-login.html#">Luxury Shop</a></li>--%>
<%--<li><a href="account-login.html#">Accessories Shop</a></li>--%>
<%--</ul>--%>
<%--</li>--%>
<%--&lt;%&ndash;<li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<section class="promo-box" style="background-image: url(img/banners/02.jpg);"><span&ndash;%&gt;--%>
<%--&lt;%&ndash;class="overlay-dark" style="opacity: .4;"></span>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="promo-box-content text-center padding-top-2x padding-bottom-2x">&ndash;%&gt;--%>
<%--&lt;%&ndash;<h4 class="text-light text-thin text-shadow">New Collection of</h4>&ndash;%&gt;--%>
<%--&lt;%&ndash;<h3 class="text-bold text-light text-shadow">Sunglasses</h3><a&ndash;%&gt;--%>
<%--&lt;%&ndash;class="btn btn-sm btn-primary" href="account-login.html#">Shop Now</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</section>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<section class="promo-box" style="background-image: url(img/banners/03.jpg);">&ndash;%&gt;--%>
<%--&lt;%&ndash;<!-- Choose between .overlay-dark (#000) or .overlay-light (#fff) with default opacity of 50%. You can overrride default color and opacity values via 'style' attribute.--><span&ndash;%&gt;--%>
<%--&lt;%&ndash;class="overlay-dark" style="opacity: .45;"></span>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="promo-box-content text-center padding-top-2x padding-bottom-2x">&ndash;%&gt;--%>
<%--&lt;%&ndash;<h3 class="text-bold text-light text-shadow">Limited Offer</h3>&ndash;%&gt;--%>
<%--&lt;%&ndash;<h4 class="text-light text-thin text-shadow">save up to 50%!</h4><a&ndash;%&gt;--%>
<%--&lt;%&ndash;class="btn btn-sm btn-primary" href="account-login.html#">Learn More</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</section>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--</ul>--%>
<%--</li>--%>
<%--<li class="active"><a href="#"><span>Account</span></a>--%>
<%--&lt;%&ndash;<ul class="sub-menu">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="/login">Login Or Register</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<c:if test="${currentUser!=null}">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="/account">Password Recovery</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="/prof?userId=${currentUser.id}">Profile Page</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="/logout">Logout</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:if>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--</li>--%>
<%--&lt;%&ndash;<li><a href="blog-rs.html"><span>Blog</span></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul class="sub-menu">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li class="has-children"><a href="blog-rs.html"><span>Blog Layout</span></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul class="sub-menu">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="blog-rs.html">Blog Right Sidebar</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="blog-ls.html">Blog Left Sidebar</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="blog-ns.html">Blog No Sidebar</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li class="has-children"><a href="blog-single-rs.html"><span>Single Post Layout</span></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul class="sub-menu">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="blog-single-rs.html">Post Right Sidebar</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="blog-single-ls.html">Post Left Sidebar</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="blog-single-ns.html">Post No Sidebar</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--<li><a href="account-login.html#"><span>Pages</span></a>--%>
<%--<ul class="sub-menu">--%>
<%--<li><a href="about.html">About Us</a></li>--%>
<%--<li><a href="contacts.html">Contacts</a></li>--%>
<%--<li><a href="faq.html">Help / FAQ</a></li>--%>
<%--<li><a href="order-tracking.html">Order Tracking</a></li>--%>
<%--<li><a href="search-results.html">Search Results</a></li>--%>
<%--<li><a href="404.html">404 Not Found</a></li>--%>
<%--<li><a href="coming-soon.html">Coming Soon</a></li>--%>
<%--<li><a class="text-danger" href="docs/dev-setup.html">Documentation</a></li>--%>
<%--</ul>--%>
<%--</li>--%>
<%--&lt;%&ndash;<li class="has-megamenu"><a href="components/accordion.html"><span>Components</span></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul class="mega-menu">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><span class="mega-menu-title">A - F</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul class="sub-menu">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/accordion.html">Accordion</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/alerts.html">Alerts</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/buttons.html">Buttons</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/cards.html">Cards</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/carousel.html">Carousel</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/countdown.html">Countdown</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/forms.html">Forms</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><span class="mega-menu-title">G - M</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul class="sub-menu">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/gallery.html">Gallery</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/google-maps.html">Google Maps</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/images.html">Images &amp; Figures</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/list-group.html">List Group</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/market-social-buttons.html">Market &amp; Social Buttons</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/media.html">Media Object</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/modal.html">Modal</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><span class="mega-menu-title">P - T</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul class="sub-menu">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/pagination.html">Pagination</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/pills.html">Pills</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/progress-bars.html">Progress Bars</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/shop-items.html">Shop Items</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/steps.html">Steps</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/tables.html">Tables</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/tabs.html">Tabs</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><span class="mega-menu-title">T - W</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul class="sub-menu">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/team.html">Team</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/toasts.html">Toast Notifications</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/tooltips-popovers.html">Tooltips &amp; Popovers</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/typography.html">Typography</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/video-player.html">Video Player</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="components/widgets.html">Widgets</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--</ul>--%>
<%--</nav>--%>
<%--<!-- Toolbar-->--%>
<%--<div class="toolbar">--%>
<%--<div class="inner">--%>
<%--<div class="tools">--%>
<%--<div class="search"><i class="icon-search"></i></div>--%>
<%--&lt;%&ndash;<div class="account"><a href="account-orders.html"></a><i class="icon-head"></i>&ndash;%&gt;--%>
<%--&lt;%&ndash;<ul class="toolbar-dropdown">&ndash;%&gt;--%>
<%--&lt;%&ndash;<li class="sub-menu-user">&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="user-ava"><img src="img/account/user-ava-sm.jpg" alt="Daniel Adams">&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="user-info">&ndash;%&gt;--%>
<%--&lt;%&ndash;<h6 class="user-name">Daniel Adams</h6><span class="text-xs text-muted">290 Reward points</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="account-profile.html">My Profile</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="account-orders.html">Orders List</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="account-wishlist.html">Wishlist</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li class="sub-menu-separator"></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;<li><a href="account-login.html#"> <i class="icon-unlock"></i>Logout</a></li>&ndash;%&gt;--%>
<%--&lt;%&ndash;</ul>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="cart"><a href="cart.html"></a><i class="icon-bag"></i><span class="count">3</span><span&ndash;%&gt;--%>
<%--&lt;%&ndash;class="subtotal">$289.68</span>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="toolbar-dropdown">&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="dropdown-product-item"><span class="dropdown-product-remove"><i&ndash;%&gt;--%>
<%--&lt;%&ndash;class="icon-cross"></i></span><a class="dropdown-product-thumb" href="shop-single.html"><img&ndash;%&gt;--%>
<%--&lt;%&ndash;src="img/cart-dropdown/01.jpg" alt="Product"></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="dropdown-product-info"><a class="dropdown-product-title"&ndash;%&gt;--%>
<%--&lt;%&ndash;href="shop-single.html">Unionbay Park</a><span&ndash;%&gt;--%>
<%--&lt;%&ndash;class="dropdown-product-details">1 x $43.90</span></div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="dropdown-product-item"><span class="dropdown-product-remove"><i&ndash;%&gt;--%>
<%--&lt;%&ndash;class="icon-cross"></i></span><a class="dropdown-product-thumb" href="shop-single.html"><img&ndash;%&gt;--%>
<%--&lt;%&ndash;src="img/cart-dropdown/02.jpg" alt="Product"></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="dropdown-product-info"><a class="dropdown-product-title"&ndash;%&gt;--%>
<%--&lt;%&ndash;href="shop-single.html">Daily Fabric Cap</a><span&ndash;%&gt;--%>
<%--&lt;%&ndash;class="dropdown-product-details">2 x $24.89</span></div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="dropdown-product-item"><span class="dropdown-product-remove"><i&ndash;%&gt;--%>
<%--&lt;%&ndash;class="icon-cross"></i></span><a class="dropdown-product-thumb" href="shop-single.html"><img&ndash;%&gt;--%>
<%--&lt;%&ndash;src="img/cart-dropdown/03.jpg" alt="Product"></a>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="dropdown-product-info"><a class="dropdown-product-title"&ndash;%&gt;--%>
<%--&lt;%&ndash;href="shop-single.html">Haan Crossbody</a><span&ndash;%&gt;--%>
<%--&lt;%&ndash;class="dropdown-product-details">1 x $200.00</span></div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="toolbar-dropdown-group">&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="column"><span class="text-lg">Total:</span></div>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="column text-right"><span class="text-lg text-medium">$289.68&nbsp;</span></div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="toolbar-dropdown-group">&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="column"><a class="btn btn-sm btn-block btn-secondary" href="cart.html">View&ndash;%&gt;--%>
<%--&lt;%&ndash;Cart</a></div>&ndash;%&gt;--%>
<%--&lt;%&ndash;<div class="column"><a class="btn btn-sm btn-block btn-success"&ndash;%&gt;--%>
<%--&lt;%&ndash;href="checkout-address.html">Checkout</a></div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</header>--%>
<header class="navbar navbar-sticky">
    <!-- Search-->
    <form class="site-search" method="get" action="/search">
        <input type="text" name="site_search" placeholder="Type to search...">
        <div class="search-tools"><span class="clear-search">Clear</span><span class="close-search"><i
                class="icon-cross"></i></span></div>
    </form>
    <div class="site-branding">
        <div class="inner">
            <%--<!-- Off-Canvas Toggle (#shop-categories)--><a class="offcanvas-toggle cats-toggle"--%>
            <%--href="index.jsp#shop-categories"--%>
            <%--data-toggle="offcanvas"></a>--%>
            <%--<!-- Off-Canvas Toggle (#mobile-menu)--><a class="offcanvas-toggle menu-toggle"--%>
            <%--href="index.jsp#mobile-menu" data-toggle="offcanvas"></a>--%>
            <!-- Site Logo--><a class="site-logo" href="/"><img src="img/logo/logo.png" alt="Unishop"></a>
        </div>
    </div>
    <!-- Main Navigation-->
    <nav class="site-menu">
        <ul>
            <li class="has-megamenu active"><a href="/home"><span>Home</span></a>
                <%--<ul class="mega-menu">--%>
                <%--<li><a class="d-block img-thumbnail text-center navi-link" href="index.jsp"><img--%>
                <%--alt="Featured Products Slider" src="img/mega-menu-home/01.jpg">--%>
                <%--<h6 class="mt-3">Featured Products Slider</h6></a></li>--%>
                <%--<li><a class="d-block img-thumbnail text-center navi-link" href="home-featured-categories.html"><img--%>
                <%--alt="Featured Categories" src="img/mega-menu-home/02.jpg">--%>
                <%--<h6 class="mt-3">Featured Categories</h6></a></li>--%>
                <%--<li><a class="d-block img-thumbnail text-center navi-link" href="home-collection-showcase.html"><img--%>
                <%--alt="Products Collection Showcase" src="img/mega-menu-home/03.jpg">--%>
                <%--<h6 class="mt-3">Products Collection Showcase</h6></a></li>--%>
                <%--<li>--%>
                <%--<div class="img-thumbnail text-center"><img alt="More To Come. Stay Tuned!"--%>
                <%--src="img/mega-menu-home/04.jpg">--%>
                <%--<h6 class="mt-3">More To Come. Stay Tuned!</h6>--%>
                <%--</div>--%>
                <%--</li>--%>
                <%--</ul>--%>
            </li>
            <li><a href="#"><span>Shop</span></a>
                <ul class="sub-menu">
                    <li><a href="/shCategories">Shop Categories</a></li>
                    <%--<li class="has-children"><a href="shop-grid-ls.html"><span>Shop Grid</span></a>--%>
                    <%--<ul class="sub-menu">--%>

                    <%--</ul>--%>
                    <%--</li>--%>
                    <%--<li class="has-children"><a href="shop-list-ls.html"><span>Shop List</span></a>--%>
                    <%--<ul class="sub-menu">--%>
                    <%--<li><a href="shop-list-ls.html">List Left Sidebar</a></li>--%>
                    <%--<li><a href="shop-list-rs.html">List Right Sidebar</a></li>--%>
                    <%--<li><a href="shop-list-ns.html">List No Sidebar</a></li>--%>
                    <%--</ul>--%>
                    <%--</li>--%>
                    <li><a href="/shProducts">Shop Products</a></li>
                    <%--<li><a href="cart.html">Cart</a></li>--%>
                    <%--<li class="has-children"><a href="checkout-address.html"><span>Checkout</span></a>--%>
                    <%--<ul class="sub-menu">--%>
                    <%--<li><a href="checkout-address.html">Address</a></li>--%>
                    <%--<li><a href="checkout-shipping.html">Shipping</a></li>--%>
                    <%--<li><a href="checkout-payment.html">Payment</a></li>--%>
                    <%--<li><a href="checkout-review.html">Review</a></li>--%>
                    <%--<li><a href="checkout-complete.html">Complete</a></li>--%>
                    <%--</ul>--%>
                    <%--</li>--%>
                </ul>
            </li>
            <li class="has-megamenu"><a href="index.jsp#"><span>Mega Menu</span></a>
                <ul class="mega-menu">
                    <li><span class="mega-menu-title">Top Categories</span>
                        <ul class="sub-menu">
                            <li><a href="index.jsp#">Men's Shoes</a></li>
                            <li><a href="index.jsp#">Women's Shoes</a></li>
                            <li><a href="index.jsp#">Shirts and Tops</a></li>
                            <li><a href="index.jsp#">Swimwear</a></li>
                            <li><a href="index.jsp#">Shorts and Pants</a></li>
                            <li><a href="index.jsp#">Accessories</a></li>
                        </ul>
                    </li>
                    <li><span class="mega-menu-title">Specialty Shops</span>
                        <ul class="sub-menu">
                            <li><a href="index.jsp#">Junior's Shop</a></li>
                            <li><a href="index.jsp#">Swim Shop</a></li>
                            <li><a href="index.jsp#">Athletic Shop</a></li>
                            <li><a href="index.jsp#">Outdoor Shop</a></li>
                            <li><a href="index.jsp#">Luxury Shop</a></li>
                            <li><a href="index.jsp#">Accessories Shop</a></li>
                        </ul>
                    </li>
                    <%--<li>--%>
                    <%--<section class="promo-box" style="background-image: url(img/banners/02.jpg);"><span--%>
                    <%--class="overlay-dark" style="opacity: .4;"></span>--%>
                    <%--<div class="promo-box-content text-center padding-top-2x padding-bottom-2x">--%>
                    <%--<h4 class="text-light text-thin text-shadow">New Collection of</h4>--%>
                    <%--<h3 class="text-bold text-light text-shadow">Sunglasses</h3><a--%>
                    <%--class="btn btn-sm btn-primary" href="index.jsp#">Shop Now</a>--%>
                    <%--</div>--%>
                    <%--</section>--%>
                    <%--</li>--%>
                    <%--<li>--%>
                    <%--<section class="promo-box" style="background-image: url(img/banners/03.jpg);">--%>
                    <%--<!-- Choose between .overlay-dark (#000) or .overlay-light (#fff) with default opacity of 50%. You can overrride default color and opacity values via 'style' attribute.--><span--%>
                    <%--class="overlay-dark" style="opacity: .45;"></span>--%>
                    <%--<div class="promo-box-content text-center padding-top-2x padding-bottom-2x">--%>
                    <%--<h3 class="text-bold text-light text-shadow">Limited Offer</h3>--%>
                    <%--<h4 class="text-light text-thin text-shadow">save up to 50%!</h4><a--%>
                    <%--class="btn btn-sm btn-primary" href="index.jsp#">Learn More</a>--%>
                    <%--</div>--%>
                    <%--</section>--%>
                    <%--</li>--%>
                </ul>
            </li>
            <li><a href="#"><span>Account</span></a>
                <ul class="sub-menu">
                    <c:if test="${currentUser==null}">
                        <li><a href="/login">Login Or Register</a></li>
                    </c:if>
                    <c:if test="${currentUser!=null}">
                        <li><a href="/account">Password Recovery</a></li>
                        <li><a href="/prof?userId=${currentUser.id}">Profile Page</a></li>
                        <li><a href="/logout">Logout</a></li>
                    </c:if>
                </ul>
            </li>
            <%--<li><a href="blog-rs.html"><span>Blog</span></a>--%>
            <%--<ul class="sub-menu">--%>
            <%--<li class="has-children"><a href="blog-rs.html"><span>Blog Layout</span></a>--%>
            <%--<ul class="sub-menu">--%>
            <%--<li><a href="blog-rs.html">Blog Right Sidebar</a></li>--%>
            <%--<li><a href="blog-ls.html">Blog Left Sidebar</a></li>--%>
            <%--<li><a href="blog-ns.html">Blog No Sidebar</a></li>--%>
            <%--</ul>--%>
            <%--</li>--%>
            <%--<li class="has-children"><a href="blog-single-rs.html"><span>Single Post Layout</span></a>--%>
            <%--<ul class="sub-menu">--%>
            <%--<li><a href="blog-single-rs.html">Post Right Sidebar</a></li>--%>
            <%--<li><a href="blog-single-ls.html">Post Left Sidebar</a></li>--%>
            <%--<li><a href="blog-single-ns.html">Post No Sidebar</a></li>--%>
            <%--</ul>--%>
            <%--</li>--%>
            <%--</ul>--%>
            <%--</li>--%>
            <li><a href="#"><span>Pages</span></a>
                <ul class="sub-menu">
                    <li><a href="/aboutUs">About Us</a></li>
                    <li><a href="/help">Help / FAQ</a></li>
                    <li><a class="text-danger" href="/documentation">Documentation</a></li>
                </ul>
            </li>
            <%--<li class="has-megamenu"><a href="components/accordion.html"><span>Components</span></a>--%>
            <%--<ul class="mega-menu">--%>
            <%--<li><span class="mega-menu-title">A - F</span>--%>
            <%--<ul class="sub-menu">--%>
            <%--<li><a href="components/accordion.html">Accordion</a></li>--%>
            <%--<li><a href="components/alerts.html">Alerts</a></li>--%>
            <%--<li><a href="components/buttons.html">Buttons</a></li>--%>
            <%--<li><a href="components/cards.html">Cards</a></li>--%>
            <%--<li><a href="components/carousel.html">Carousel</a></li>--%>
            <%--<li><a href="components/countdown.html">Countdown</a></li>--%>
            <%--<li><a href="components/forms.html">Forms</a></li>--%>
            <%--</ul>--%>
            <%--</li>--%>
            <%--<li><span class="mega-menu-title">G - M</span>--%>
            <%--<ul class="sub-menu">--%>
            <%--<li><a href="components/gallery.html">Gallery</a></li>--%>
            <%--<li><a href="components/google-maps.html">Google Maps</a></li>--%>
            <%--<li><a href="components/images.html">Images &amp; Figures</a></li>--%>
            <%--<li><a href="components/list-group.html">List Group</a></li>--%>
            <%--<li><a href="components/market-social-buttons.html">Market &amp; Social Buttons</a></li>--%>
            <%--<li><a href="components/media.html">Media Object</a></li>--%>
            <%--<li><a href="components/modal.html">Modal</a></li>--%>
            <%--</ul>--%>
            <%--</li>--%>
            <%--<li><span class="mega-menu-title">P - T</span>--%>
            <%--<ul class="sub-menu">--%>
            <%--<li><a href="components/pagination.html">Pagination</a></li>--%>
            <%--<li><a href="components/pills.html">Pills</a></li>--%>
            <%--<li><a href="components/progress-bars.html">Progress Bars</a></li>--%>
            <%--<li><a href="components/shop-items.html">Shop Items</a></li>--%>
            <%--<li><a href="components/steps.html">Steps</a></li>--%>
            <%--<li><a href="components/tables.html">Tables</a></li>--%>
            <%--<li><a href="components/tabs.html">Tabs</a></li>--%>
            <%--</ul>--%>
            <%--</li>--%>
            <%--<li><span class="mega-menu-title">T - W</span>--%>
            <%--<ul class="sub-menu">--%>
            <%--<li><a href="components/team.html">Team</a></li>--%>
            <%--<li><a href="components/toasts.html">Toast Notifications</a></li>--%>
            <%--<li><a href="components/tooltips-popovers.html">Tooltips &amp; Popovers</a></li>--%>
            <%--<li><a href="components/typography.html">Typography</a></li>--%>
            <%--<li><a href="components/video-player.html">Video Player</a></li>--%>
            <%--<li><a href="components/widgets.html">Widgets</a></li>--%>
            <%--</ul>--%>
            <%--</li>--%>
            <%--</ul>--%>
            <%--</li>--%>
        </ul>
    </nav>
    <!-- Toolbar-->
    <div class="toolbar">
        <div class="inner">
            <div class="tools">
                <div class="search"><i class="icon-search"></i></div>
                <%--<div class="account"><a href="account-orders.html"></a><i class="icon-head"></i>--%>
                <%--<ul class="toolbar-dropdown">--%>
                <%--<li class="sub-menu-user">--%>
                <%--<div class="user-ava"><img src="img/account/user-ava-sm.jpg" alt="Daniel Adams">--%>
                <%--</div>--%>
                <%--<div class="user-info">--%>
                <%--<h6 class="user-name">Daniel Adams</h6><span class="text-xs text-muted">290 Reward points</span>--%>
                <%--</div>--%>
                <%--</li>--%>
                <%--<li><a href="account-profile.html">My Profile</a></li>--%>
                <%--<li><a href="account-orders.html">Orders List</a></li>--%>
                <%--<li><a href="account-wishlist.html">Wishlist</a></li>--%>
                <%--<li class="sub-menu-separator"></li>--%>
                <%--<li><a href="index.jsp#"> <i class="icon-unlock"></i>Logout</a></li>--%>
                <%--</ul>--%>
                <%--</div>--%>
                <%--<div class="cart"><a href="cart.html"></a><i class="icon-bag"></i><span class="count">3</span><span--%>
                <%--class="subtotal">$289.68</span>--%>
                <%--<div class="toolbar-dropdown">--%>
                <%--<div class="dropdown-product-item"><span class="dropdown-product-remove"><i--%>
                <%--class="icon-cross"></i></span><a class="dropdown-product-thumb" href="shop-single.html"><img--%>
                <%--src="img/cart-dropdown/01.jpg" alt="Product"></a>--%>
                <%--<div class="dropdown-product-info"><a class="dropdown-product-title"--%>
                <%--href="shop-single.html">Unionbay Park</a><span--%>
                <%--class="dropdown-product-details">1 x $43.90</span></div>--%>
                <%--</div>--%>
                <%--<div class="dropdown-product-item"><span class="dropdown-product-remove"><i--%>
                <%--class="icon-cross"></i></span><a class="dropdown-product-thumb" href="shop-single.html"><img--%>
                <%--src="img/cart-dropdown/02.jpg" alt="Product"></a>--%>
                <%--<div class="dropdown-product-info"><a class="dropdown-product-title"--%>
                <%--href="shop-single.html">Daily Fabric Cap</a><span--%>
                <%--class="dropdown-product-details">2 x $24.89</span></div>--%>
                <%--</div>--%>
                <%--<div class="dropdown-product-item"><span class="dropdown-product-remove"><i--%>
                <%--class="icon-cross"></i></span><a class="dropdown-product-thumb" href="shop-single.html"><img--%>
                <%--src="img/cart-dropdown/03.jpg" alt="Product"></a>--%>
                <%--<div class="dropdown-product-info"><a class="dropdown-product-title"--%>
                <%--href="shop-single.html">Haan Crossbody</a><span--%>
                <%--class="dropdown-product-details">1 x $200.00</span></div>--%>
                <%--</div>--%>
                <%--<div class="toolbar-dropdown-group">--%>
                <%--<div class="column"><span class="text-lg">Total:</span></div>--%>
                <%--<div class="column text-right"><span class="text-lg text-medium">$289.68&nbsp;</span></div>--%>
                <%--</div>--%>
                <%--<div class="toolbar-dropdown-group">--%>
                <%--<div class="column"><a class="btn btn-sm btn-block btn-secondary" href="cart.html">View--%>
                <%--Cart</a></div>--%>
                <%--<div class="column"><a class="btn btn-sm btn-block btn-success"--%>
                <%--href="checkout-address.html">Checkout</a></div>--%>
                <%--</div>--%>
                <%--</div>--%>
                <%--</div>--%>
            </div>
        </div>
    </div>
</header>

<!-- Off-Canvas Wrapper-->
<div class="offcanvas-wrapper">
    <!-- Page Title-->
    <div class="page-title">
        <div class="container">
            <div class="column">
                <h1>Login / Register Account</h1>
            </div>
            <div class="column">
                <ul class="breadcrumbs">
                    <li><a href="/">Home</a>
                    </li>
                    <li class="separator">&nbsp;</li>
                    <li><a href="account-orders.html">Account</a>
                    </li>
                    <li class="separator">&nbsp;</li>
                    <li>Login / Register</li>
                </ul>
            </div>
        </div>
    </div>
    <!-- Page Content-->
    <div class="container padding-bottom-3x mb-2">
        <div class="row">
            <div class="col-md-6">
                <spring:form class="login-box" action="/login" method="post" modelAttribute="user">
                    <%--</div>--%>
                    <h4 class="margin-bottom-1x">Login To Your Account</h4>
                    <c:if test="${logErr!=null}">
                        <span style="color: red;">${logErr}</span>
                    </c:if>
                    <div class="form-group input-group">
                        <input class="form-control" type="email" placeholder="Email" name="j_email" required><span
                            class="input-group-addon"><i class="icon-mail"></i></span>
                    </div>
                    <div class="form-group input-group">
                        <input class="form-control" type="password" placeholder="Password"  name="j_password" required><span
                            class="input-group-addon"><i class="icon-lock"></i></span>
                    </div>
                    <div class="d-flex flex-wrap justify-content-between padding-bottom-1x">
                        <div class="custom-control custom-checkbox">
                            <input class="custom-control-input" type="checkbox" id="remember_me" checked>
                            <label class="custom-control-label" for="remember_me">Remember me</label>
                        </div>
                        <a class="navi-link" href="/passwordRecovery">Forgot password?</a>
                    </div>
                    <div class="text-center text-sm-right">
                        <button class="btn btn-primary margin-bottom-none" type="submit">Login</button>
                    </div>
                </spring:form>
            </div>
            <div class="col-md-6">
                <div class="padding-top-3x hidden-md-up"></div>
                <h3 class="margin-bottom-1x">No Account? Register</h3>
                <p>Registration takes less than a minute but gives you full control over your orders.</p>
                <c:if test="${registerError!=null}">
                    <p style="color: #ff0707">${registerError}</p>
                </c:if>
                <c:if test="${errorMessage!=null}">
                    <p style="color: red">${errorMessage}</p>
                </c:if>
                <c:if test="${mailFormatErr!=null}">
                    <p style="color: red">${mailFormatErr}</p>
                </c:if>
                <spring:form class="row" action="/register" method="post" modelAttribute="user"
                             enctype="multipart/form-data">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="reg-fn">First Name</label>
                            <spring:input path="name" class="form-control" type="text" id="reg-fn" required="required"/>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="reg-ln">Last Name</label>
                            <spring:input path="surname" class="form-control" type="text" id="reg-ln"
                                          required="required"/>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="reg-email">E-mail Address</label>
                            <spring:input path="email" class="form-control" type="email" id="reg-email"/>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="userImage">Image</label>
                            <input class="form-control" type="file" id="userImage" name="userImg" required>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="reg-pass">Password</label>
                            <spring:input path="password" class="form-control" type="password" id="reg-pass"
                                          required="required"/>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label for="reg-pass-confirm">Confirm Password</label>
                            <input class="form-control" type="password" id="reg-pass-confirm" name="repassword"
                                   required>
                        </div>
                    </div>
                    <div class="col-12 text-center text-sm-right">
                        <button class="btn btn-primary margin-bottom-none" type="submit">Register</button>
                    </div>
                </spring:form>
            </div>
        </div>
    </div>
    <!-- Site Footer-->
    <footer class="site-footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <!-- Contact Info-->
                    <section class="widget widget-light-skin">
                        <h3 class="widget-title">Get In Touch With Us</h3>
                        <p class="text-white">Phone: 00 33 169 7720</p>
                        <ul class="list-unstyled text-sm text-white">
                            <li><span class="opacity-50">Monday-Friday:</span>9.00 am - 8.00 pm</li>
                            <li><span class="opacity-50">Saturday:</span>10.00 am - 6.00 pm</li>
                        </ul>
                        <p><a class="navi-link-light" href="account-login.html#">support@unishop.com</a></p><a
                            class="social-button shape-circle sb-facebook sb-light-skin" href="account-login.html#"><i
                            class="socicon-facebook"></i></a><a
                            class="social-button shape-circle sb-twitter sb-light-skin" href="account-login.html#"><i
                            class="socicon-twitter"></i></a><a
                            class="social-button shape-circle sb-instagram sb-light-skin" href="account-login.html#"><i
                            class="socicon-instagram"></i></a><a
                            class="social-button shape-circle sb-google-plus sb-light-skin"
                            href="account-login.html#"><i class="socicon-googleplus"></i></a>
                    </section>
                </div>
                <div class="col-lg-3 col-md-6">
                    <!-- Mobile App Buttons-->
                    <section class="widget widget-light-skin">
                        <h3 class="widget-title">Our Mobile App</h3><a class="market-button apple-button mb-light-skin"
                                                                       href="account-login.html#"><span
                            class="mb-subtitle">Download on the</span><span class="mb-title">App Store</span></a><a
                            class="market-button google-button mb-light-skin" href="account-login.html#"><span
                            class="mb-subtitle">Download on the</span><span class="mb-title">Google Play</span></a><a
                            class="market-button windows-button mb-light-skin" href="account-login.html#"><span
                            class="mb-subtitle">Download on the</span><span class="mb-title">Windows Store</span></a>
                    </section>
                </div>
                <div class="col-lg-3 col-md-6">
                    <!-- About Us-->
                    <section class="widget widget-links widget-light-skin">
                        <h3 class="widget-title">About Us</h3>
                        <ul>
                            <li><a href="account-login.html#">Careers</a></li>
                            <li><a href="account-login.html#">About Unishop</a></li>
                            <li><a href="account-login.html#">Our Story</a></li>
                            <li><a href="account-login.html#">Services</a></li>
                            <li><a href="account-login.html#">Our Blog</a></li>
                        </ul>
                    </section>
                </div>
                <div class="col-lg-3 col-md-6">
                    <!-- Account / Shipping Info-->
                    <section class="widget widget-links widget-light-skin">
                        <h3 class="widget-title">Account &amp; Shipping Info</h3>
                        <ul>
                            <li><a href="account-login.html#">Your Account</a></li>
                            <li><a href="account-login.html#">Shipping Rates & Policies</a></li>
                            <li><a href="account-login.html#">Refunds & Replacements</a></li>
                            <li><a href="account-login.html#">Taxes</a></li>
                            <li><a href="account-login.html#">Delivery Info</a></li>
                            <li><a href="account-login.html#">Affiliate Program</a></li>
                        </ul>
                    </section>
                </div>
            </div>
            <hr class="hr-light mt-2 margin-bottom-2x">
            <div class="row">
                <div class="col-md-7 padding-bottom-1x">
                    <!-- Payment Methods-->
                    <div class="margin-bottom-1x" style="max-width: 615px;"><img src="img/payment_methods.png"
                                                                                 alt="Payment Methods">
                    </div>
                </div>
                <div class="col-md-5 padding-bottom-1x">
                    <div class="margin-top-1x hidden-md-up"></div>
                    <!--Subscription-->
                    <form class="subscribe-form"
                          action="http://rokaux.us12.list-manage.com/subscribe/post?u=c7103e2c981361a6639545bd5&amp;amp;id=1194bb7544"
                          method="post" target="_blank" novalidate>
                        <div class="clearfix">
                            <div class="input-group input-light">
                                <input class="form-control" type="email" name="EMAIL" placeholder="Your e-mail"><span
                                    class="input-group-addon"><i class="icon-mail"></i></span>
                            </div>
                            <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                            <div style="position: absolute; left: -5000px;" aria-hidden="true">
                                <input type="text" name="b_c7103e2c981361a6639545bd5_1194bb7544" tabindex="-1">
                            </div>
                            <button class="btn btn-primary" type="submit"><i class="icon-check"></i></button>
                        </div>
                        <span class="form-text text-sm text-white opacity-50">Subscribe to our Newsletter to receive early discount offers, latest news, sales and promo information.</span>
                    </form>
                </div>
            </div>
            <!-- Copyright-->
            <p class="footer-copyright">© All rights reserved. Made with &nbsp;<i class="icon-heart text-danger"></i><a
                    href="http://rokaux.com/" target="_blank"> &nbsp;by rokaux</a></p>
        </div>
    </footer>
</div>
<!-- Back To Top Button--><a class="scroll-to-top-btn" href="account-login.html#"><i class="icon-arrow-up"></i></a>
<!-- Backdrop-->
<div class="site-backdrop"></div>
<!-- JavaScript (jQuery) libraries, plugins and custom scripts-->
<script src="../js/vendor.min.js"></script>
<script src="../js/scripts.min.js"></script>
<!-- Customizer scripts-->
<script src="../customizer/customizer.min.js"></script>
</body>
</html>