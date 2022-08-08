<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <!-- Basic -->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Metas -->
        <title>ThewayShop - Ecommerce Bootstrap 4 HTML Template</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Site Icons -->
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Site CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/custom.css">

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>

        <%@include file="Head.jsp" %>

        <!-- Start All Title Box -->
        <div class="all-title-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>Checkout</h2>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="home">Shop</a></li>
                            <li class="breadcrumb-item active">Checkout</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End All Title Box -->

        <!-- Start Cart  -->
        <div class="cart-box-main">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6 col-lg-6 mb-3">
                        <div class="row"> 
                            <div class="col-md-12 col-lg-12">
                                <div class="odr-box">
                                    <div class="title-left">
                                        <h3>Shopping cart</h3>
                                    </div>
                                    <c:forEach items="${carts}" var="c">
                                        <div class="rounded p-2 bg-light">
                                            <div class="media mb-2 border-bottom">
                                                <div class="media-body"> <a href="detail?pid=${c.value.product.id}"> ${c.value.product.name}</a>
                                                    <div class="small text-muted">Price: $${c.value.product.price} <span class="mx-2">|</span> Qty: ${c.value.quantity} <span class="mx-2">|</span> Subtotal: $${c.value.product.price*c.value.quantity}</div>
                                                </div>
                                            </div>                                        
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="col-md-12 col-lg-12">
                                <div class="order-box">
                                    <div class="title-left">
                                        <h3>Your order</h3>
                                    </div>                                  
                                                               
                                    <div class="d-flex gr-total">
                                        <h5>Grand Total</h5>
                                        <div class="ml-auto h5"> $ ${totalMoney} </div>
                                    </div>
                                    <hr> </div>
                            </div>
                                    <h1>${error2}</h1>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-6 mb-3">
                        <div class="checkout-address">
                            <div class="title-left">
                                <h3>Billing address</h3>
                            </div>
                            <form class="needs-validation" novalidate action="checkout?accid=${sessionScope.account.id}" method="post">
                                <div class="mb-3">
                                    <label for="username">Username *</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="username" id="username" placeholder="" required>
                                        <div class="invalid-feedback" style="width: 100%;"> Your username is required. </div>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="phone">Phone *</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="phone" id="phone" placeholder="" required>
                                        <div class="invalid-feedback" style="width: 100%;"> Your phone is required. </div>
                                    </div>
                                </div>
                                <div class="mb-3">
                                    <label for="email">Email Address *</label>
                                    <input type="text" class="form-control" name="email" id="email" placeholder="">
                                    <div class="invalid-feedback"> Please enter a valid email address for shipping updates. </div>
                                </div>
                                <div class="mb-3">
                                    <label for="address">Address *</label>
                                    <input type="text" class="form-control" name="address" id="address" placeholder="" required>
                                    <div class="invalid-feedback"> Please enter your shipping address. </div>
                                </div>
                                <div class="col-12 d-flex shopping-box"> <button type="submit" class="ml-auto btn hvr-hover">Place Order </button></div> 
                            </form>                                                                                                                                                  
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- End Cart -->

        <%@include file="Footer.jsp" %>

        <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

        <!-- ALL JS FILES -->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!-- ALL PLUGINS -->
        <script src="js/jquery.superslides.min.js"></script>
        <script src="js/bootstrap-select.js"></script>
        <script src="js/inewsticker.js"></script>
        <script src="js/bootsnav.js."></script>
        <script src="js/images-loded.min.js"></script>
        <script src="js/isotope.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/baguetteBox.min.js"></script>
        <script src="js/form-validator.min.js"></script>
        <script src="js/contact-form-script.js"></script>
        <script src="js/custom.js"></script>
    </body>

</html>