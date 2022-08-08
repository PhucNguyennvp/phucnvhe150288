<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Start Main Top -->
<div class="main-top">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">

            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">                                              
                <div class="our-link">
                    <ul>
                        <li><a href="account">My Account</a></li>
                            <c:choose>
                                <c:when test="${sessionScope.account != null}">
                                <li><a>"Xin Chao" ${sessionScope.account.displayName}</a></li>
                                <li><a href="logout">Logout</a></li>
                                </c:when>
                                <c:otherwise>
                                <li><a href="login.jsp">Login</a></li> 
                                </c:otherwise>    
                            </c:choose>                                                               
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Main Top -->

<!-- Start Main Top -->
<header class="main-header">
    <!-- Start Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
        <div class="container">
            <!-- Start Header Navigation -->
            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="home"><img src="images/logo.png" class="logo" alt=""></a>
            </div>
            <!-- End Header Navigation -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-menu">
                <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                    <li class="nav-item "><a class="nav-link" href="home">Home</a></li>
                        <c:if test="${sessionScope.account.getRole() == 1}"> 
                        <li class="nav-item "><a class="nav-link" href="admin">Manager</a></li>
                        </c:if>


                    <li class="dropdown megamenu-fw">
                        <a href="category?cid=${0}" class="nav-link " >Product</a>                                
                    </li>
                    <li class="dropdown">
                        <a href="category?cid=${0}" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">SHOP</a>
                        <ul class="dropdown-menu">
                            <li><a href="cart.jsp">Cart</a></li>
                            <li><a href="checkout.jsp">Checkout</a></li>
                            <li><a href="my-account.jsp">My Account</a></li>                                    
                        </ul>
                    </li>                            
                </ul>
            </div>
            <!-- /.navbar-collapse -->
            <div id="search-bar">
                <form action="search" method="POST" class="d-flex mx-auto">
                    <input value="${txt}" class="form-control" type="search" placeholder="Search" name="search">
                    <button class="btn btn-outline-success" type="submit" style="color:black">Search</button>
                </form>
            </div>
            <!-- Start Atribute Navigation -->
            <div class="attr-nav">
                <ul>
                    <li class="search"><a><i class="fa fa-search"></i></a></li>
                    <li class="side-menu"><a href="carts">
                            <i class="fa fa-shopping-bag"></i>
                            <span class="badge">${sessionScope.carts.size()}</span>
                        </a></li>
                </ul>
            </div>
            <!-- End Atribute Navigation -->
        </div>
        <!-- Start Side Menu -->
        <div class="side">
            <a href="#" class="close-side"><i class="fa fa-times"></i></a>
            <li class="cart-box">
                <ul class="cart-list">
                    <li>
                        <a href="#" class="photo"><img src="images/img-pro-01.jpg" class="cart-thumb" alt="" /></a>
                        <h6><a href="#">Delica omtantur </a></h6>
                        <p>1x - <span class="price">$80.00</span></p>
                    </li>
                    <li>
                        <a href="#" class="photo"><img src="images/img-pro-02.jpg" class="cart-thumb" alt="" /></a>
                        <h6><a href="#">Omnes ocurreret</a></h6>
                        <p>1x - <span class="price">$60.00</span></p>
                    </li>
                    <li>
                        <a href="#" class="photo"><img src="images/img-pro-03.jpg" class="cart-thumb" alt="" /></a>
                        <h6><a href="#">Agam facilisis</a></h6>
                        <p>1x - <span class="price">$40.00</span></p>
                    </li>
                    <li class="total">
                        <a href="#" class="btn btn-default hvr-hover btn-cart">VIEW CART</a>
                        <span class="float-right"><strong>Total</strong>: $180.00</span>
                    </li>
                </ul>
            </li>
        </div>
        <!-- End Side Menu -->
    </nav>
    <!-- End Navigation -->
</header>
<!-- End Main Top -->

<!-- Start Top Search -->
<div class="top-search">
    <div class="container">
        <div class="input-group">
            <span class="input-group-addon"><i class="fa fa-search"></i></span>
            <input type="text" class="form-control" placeholder="Search">
            <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
        </div>
    </div>
</div>
<!-- End Top Search -->