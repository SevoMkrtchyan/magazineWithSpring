<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/ico/favicon.ico">

    <title>Kite: Admin</title>

    <!-- CSS Plugins -->
    <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/plugins/perfect-scrollbar/css/perfect-scrollbar.min.css">
    <link rel="stylesheet" href="assets/plugins/jqvmap/jqvmap.min.css">
    <link rel="stylesheet" href="assets/plugins/fullcalendar/fullcalendar.min.css">

    <!-- CSS Global -->
    <link rel="stylesheet" href="assets/css/theme.min.css">

</head>

<body>

<!-- NAVBAR
================================================== -->
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbar_main">

            <!-- Navbar: Brand -->
            <a class="navbar-brand" href="index.html#">
                Kite Admin
            </a>

            <!-- Navbar: Toggle menu -->
            <a href="index.html#" class="navbar-btn navbar-left" id="sidebar__toggle">
                <i class="fa fa-bars"></i>
            </a>

            <!-- Navbar: Search form -->
            <form class="navbar-form navbar-left hidden-xs" role="search">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search">
                    <div class="input-group-btn">
                        <button type="submit" class="btn btn-link">
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
            </form>

            <!-- Navbar: Sign out -->
            <a href="/logout" class="navbar-btn navbar-right btn btn-accent">
                Sign Out
            </a>

            <!-- Navbar: Links -->
            <ul class="nav navbar-nav navbar-right">

            </ul>

        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>

<!-- WRAPPER
================================================== -->
<div class="wrapper">

    <!-- SIDEBAR
    ================================================== -->
    <div class="sidebar">

        <!-- Sidebar: Close button (mobile devices) -->
        <div class="sidebar__close">
            <img src="assets/img/icons/icon_close.svg" alt="Close sidebar">
        </div>

        <!-- Sidebar: User -->
        <div class="sidebar__user">

            <!-- Sidebar: User avatar -->
            <div class="sidebar-user__avatar">
                <img src="assets/img/user_1.jpg" alt="...">
            </div>

            <!-- Sidebar: User info -->
            <a class="sidebar-user__info" role="button" href="#" data-toggle="collapse"
               aria-expanded="false" aria-controls="sidebar-user__nav">
                <h4>${currentUser.user.name}&nbsp;${currentUser.user.surname}</h4>
                <p>Administrator <i class="fa fa-caret-down"></i></p>
            </a>

        </div> <!-- / .sidebar__user -->

        <!-- Sidebar: User nav -->
        <nav class="sidebar-user__nav collapse" id="sidebar-user__nav">
            <ul class="sidebar__nav">
                <li>
                    <a href="#">
                        <i class="fa fa-user"></i> Profile
                    </a>
                </li>
                <%--&lt;%&ndash;<li>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<a href="#">&ndash;%&gt;--%>
                        <%--&lt;%&ndash;<i class="fa fa-edit"></i> Edit profile&ndash;%&gt;--%>
                    <%--&lt;%&ndash;</a>&ndash;%&gt;--%>
                <%--</li>--%>
                <%--<li>--%>
                    <%--<a href="inbox.html">--%>
                        <%--<i class="fa fa-envelope"></i> Inbox--%>
                    <%--</a>--%>
                <%--</li>--%>
                <li>
                    <a href="/logout">
                        <i class="fa fa-sign-out"></i> Sign out
                    </a>
                </li>
            </ul>
        </nav>

        <!-- Sidebar: Nav -->
        <nav id="sidebar__nav">
            <!-- Loaded from /sidebar.json -->
        </nav>

    </div>

    <!-- MAIN CONTENT
    ================================================== -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-xs-12">

                <h1 class="page-header">
                    Dashboard
                    <small>Dashboard and statistics</small>
                </h1>

            </div>
        </div> <!-- / .row -->

        <!-- Dashboard: Stats -->
        <div class="row">
            <div class="col-xs-12 col-sm-3">

                <div class="dashboard-stats__item dashboard-stats__item_red">
                    <i class="fa fa-comments"></i>
                    <h3 class="dashboard-stats__title">
                        <span class="count-to" data-from="0" data-to="${allCategories.size()}">0</span>
                        <small>Categories</small>
                    </h3>
                </div>

            </div>
            <div class="col-xs-12 col-sm-3">

                <div class="dashboard-stats__item dashboard-stats__item_orange">
                    <i class="fa fa-globe"></i>
                    <h3 class="dashboard-stats__title">
                        <span class="count-to" data-from="0" data-to="${allGoods.size()}">0</span>
                        <small>Products</small>
                    </h3>
                </div>

            </div>
            <div class="col-xs-12 col-sm-3">

                <div class="dashboard-stats__item dashboard-stats__item_green">
                    <i class="fa fa-pie-chart"></i>
                    <h3 class="dashboard-stats__title">
                        <span class="count-to" data-from="0" data-to="${allUsers.size()}">0</span>
                        <small>Users</small>
                    </h3>
                </div>

            </div>
            <div class="col-xs-12 col-sm-3">

                <div class="dashboard-stats__item dashboard-stats__item_light-blue">
                    <i class="fa fa-eur"></i>
                    <h3 class="dashboard-stats__title">
                        $<span class="count-to" data-from="0" data-to="105">0</span>K
                        <small>Total profit</small>
                    </h3>
                </div>

            </div>
        </div> <!-- / .row -->

        <div class="row row-justified">

            <!-- Dashboard: Visitors -->
            <div class="col-xs-12 col-lg-6">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            ADD Category
                        </h3>
                    </div>
                    <div class="panel-body">
                        <spring:form action="/addCategory" modelAttribute="category" method="post"
                                     enctype="multipart/form-data">
                            <label for="name"></label>
                            <spring:input path="name" id="name" required="required"/>
                            <input type="file" multiple name="catImg"><br>
                            <input type="submit" value="ADD"/>
                        </spring:form>
                    </div>
                </div>

            </div>

            <!-- Dashboard: Revenue -->
            <div class="col-xs-12 col-lg-6">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            ADD Product
                        </h3>
                    </div>
                    <div class="panel-body">
                        <spring:form action="/addGood" modelAttribute="goods" method="post"
                                     enctype="multipart/form-data">
                            <label for="name"></label>
                            <spring:input path="name" id="name" placeholder="Name" required="required"/>
                            <label for="description"></label>
                            <spring:input path="description" id="description" placeholder="Description"
                                          required="required"/>
                            <label>
                                <input type="number" value="Price" placeholder="Price" name="price"/>
                            </label>
                            <input type="file" value="Image" name="goodImg" placeholder="Image" minlength="4" multiple/>
                            <spring:checkboxes path="categories" items="${allCategories}" itemLabel="name"/>
                            <input type="submit" value="ADD"/>
                        </spring:form>

                    </div>
                </div>

            </div>
        </div> <!-- / .row -->

        <div class="row row-justified">

            <!-- Dashboard: Comments -->
            <div class="col-xs-12 col-lg-6">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            All Cattegories
                        </h3>
                    </div>
                    <div class="panel-body">
                        <div class="dashboard__comments">
                            <div class="dashboard-comments__item">
                                <c:forEach items="${allCategories}" var="category">
                                    <div class="dashboard-comments__body">
                                        <h5 class="dashboard-comments__sender">
                                                ${category.name}
                                        </h5>
                                        <div class="dashboard-comments__controls">
                                            <a href="index.html#">View</a>
                                            <a href="index.html#">Edit</a>
                                            <a href="index.html#">Remove</a>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <%--<div class="panel-footer">--%>
                    <%--<a href="index.html#" class="btn btn-primary">View all comments</a> <a href="index.html#"--%>
                    <%--class="btn btn-link">Mark--%>
                    <%--all as read</a>--%>
                    <%--</div>--%>
                </div>

            </div>

            <!-- Dashboard: Feed -->
            <div class="col-xs-12 col-lg-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            All Products
                        </h3>
                    </div>
                    <div class="panel-body">
                        <div class="dashboard__feed">
                            <div class="dashboard-comments__item">
                                <c:if test="${allGoods!=null}">
                                    <c:forEach items="${allGoods}" var="good">
                                        <div class="dashboard-comments__avatar">
                                            <c:if test="${good.pictures!=null || good.pictures.get(0).name.endsWith('.jpeg')||good.pictures.get(0).name.endsWith('.jpg')||good.pictures.get(0).name.endsWith('.png')}">
                                                <img src="${pageContext.request.contextPath}/image?fileName=${good.pictures.get(0).name}"
                                                     alt="...">
                                            </c:if>
                                        </div>
                                        <div class="dashboard-comments__body">
                                            <h5 class="dashboard-comments__sender">
                                                    ${good.name}
                                            </h5>
                                            <div class="dashboard-comments__content">
                                                    ${good.description}
                                            </div>
                                            <div class="dashboard-comments__content">
                                                    ${good.price}
                                            </div>
                                            <div class="dashboard-comments__controls">
                                                <a href="index.html#">View</a>
                                                <a href="index.html#">Edit</a>
                                                <a href="index.html#">Remove</a>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </c:if>
                            </div>

                        </div>
                    </div>
                    <div class="panel-footer">
                        <a href="#" class="btn btn-primary">View all notifications</a> <a href="#" class="btn btn-link">Mark all as read</a>
                    </div>
                </div>
            </div>

        </div> <!-- / .row -->

        <div class="row row-justified">

            <!-- Dashboard: User stats -->

            <!-- Dashboard: New users -->
            <div class="col-xs-12 col-lg-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            All users
                        </h3>
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-hover dashboard__users">
                                <thead>
                                <tr>
                                    <th>Username</th>
                                    <th>Surname</th>
                                    <th>Email</th>
                                    <th>Type</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${allUsers}" var="user">
                                    <tr>
                                        <td>
                                            <div class="dashboard__users__username">
                                                <div class="dashboard__users__username__img">
                                                    <img src="${pageContext.request.contextPath}/image?fileName=${user.picUrl}"
                                                         alt="...">
                                                </div>
                                                    ${user.name}
                                            </div>
                                        </td>
                                        <td>
                                            <div class="dashboard__users__email">
                                                    ${user.surname}
                                            </div>
                                        </td>
                                        <td>
                                            <div class="dashboard__users__date">
                                                <time datetime="2017-02-07">${user.email}</time>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="dashboard__users__status active">
                                                    ${user.userType}
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table> <!-- / .dashboard__users -->
                        </div>
                    </div>
                    <div class="panel-footer hidden">
                        <a href="#" class="btn btn-primary">View all users</a> <a href="index.html#"
                                                                                            class="btn btn-link">Create
                        a new user</a>
                    </div>
                </div> <!-- / .panel -->
            </div>

        </div>

        <!-- Footer -->
        <footer class="page__footer">
            <div class="row">
                <div class="col-xs-12">

                    <span class="page__footer__year"></span> &copy; Kite theme by Simpleqode.
                </div>
            </div>
        </footer>

    </div> <!-- / .container-fluid -->

</div> <!-- / .wrapper -->


<!-- JavaScript
================================================== -->

<!-- JS Global -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>

<!-- JS Plugins -->
<script src="assets/plugins/chart-js/Chart.min.js"></script>
<script src="assets/plugins/count-to/jquery.countTo.js"></script>
<script src="assets/plugins/perfect-scrollbar/js/perfect-scrollbar.jquery.min.js"></script>
<script src="assets/plugins/fullcalendar/lib/moment.min.js"></script>
<script src="assets/plugins/fullcalendar/fullcalendar.js"></script>

<!-- JS Custom -->
<script src="assets/js/theme.min.js"></script>
<script src="assets/js/kite.min.js"></script>
<script src="assets/js/custom.js"></script>

</body>
</html>