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
                        <h2>Cart</h2>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="home">Shop</a></li>
                            <li class="breadcrumb-item active">Cart</li>
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
                    <c:choose>
                        <c:when test="${sessionScope.carts==null || sessionScope.carts.size()==0}">
                            <h1 class="text-center">Cart is Empty</h1>
                            <h2>${error}</h2>
                        </c:when>
                        <c:otherwise>
                            <div class="col-lg-12">
                                <div class="table-main table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th>Images</th>
                                                <th>Product Name</th>
                                                <th>Price</th>
                                                <th>Quantity</th>
                                                <th>Total</th>
                                                <th>Remove</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${carts}" var="c">
                                            <form action="update-quantity">
                                                <tr>
                                                <input type="hidden" name="pid" value="${c.value.product.id}"/>
                                                <td class="thumbnail-img">
                                                    <a href="#">
                                                        <img class="img-fluid" src="${c.value.product.image}" alt="" />
                                                    </a>
                                                </td>
                                                <td class="name-pr">
                                                    <a href="detail?pid=${c.value.product.id}">
                                                        ${c.value.product.name}
                                                    </a>
                                                </td>
                                                <td class="price-pr">
                                                    <p>$ ${c.value.product.price}</p>
                                                </td>
                                                <td class="quantity-box"><input onchange="this.form.submit()" name="quantity" type="number" min="1" value="${c.value.quantity}" step="1" class="c-input-text qty text"></td>
                                                <td class="total-pr">
                                                    <p>$ ${c.value.product.price*c.value.quantity}</p>
                                                </td>
                                                <td class="remove-pr">
                                                    <a href="delete?pid=${c.value.product.id}">
                                                        <i class="fas fa-times"></i>
                                                    </a>
                                                </td>
                                                </tr>
                                            </form>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>


                        </div>



                        <div class="row my-5">
                            <div class="col-lg-8 col-sm-12"></div>
                            <div class="col-lg-4 col-sm-12">
                                <div class="order-box">                
                                    <div class="d-flex gr-total">
                                        <h5>Grand Total</h5>
                                        <div class="ml-auto h5"> $ ${totalMoney} </div>
                                    </div>
                                    <hr> </div>
                            </div>
                            <div class="col-12 d-flex shopping-box"><a href="checkout" class="ml-auto btn hvr-hover">Checkout</a> </div>
                        </div>
                    </c:otherwise>
                </c:choose>  
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