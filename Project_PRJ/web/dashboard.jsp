<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html :class="{ 'theme-dark': dark }" x-data="data()" lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
            rel="stylesheet"
            />
        <link rel="stylesheet" href="./assets/css/tailwind.output.css" />
        <script
            src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"
            defer
        ></script>
        <script src="./assets/js/init-alpine.js"></script>
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css"
            />
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"
            defer
        ></script>
        <script src="./assets/js/charts-lines.js" defer></script>
        <script src="./assets/js/charts-pie.js" defer></script>
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
        <div

            <div class="flex flex-col flex-1 w-full">

            <%@include  file="Head.jsp" %>
            <div class="all-title-box">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <h2>Profile</h2>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="home">Home</a></li>
                                <li class="breadcrumb-item active">Dash board</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <main class="h-full overflow-y-auto">
                <div class="container px-6 mx-auto grid">
                    <div class="search">
                        
                        <nav aria-label="breadcrumb" class="main-breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="admin">Manager</a></li>
                            
                            <li class="breadcrumb-item active" aria-current="page">Dash board</li>
                        </ol>
                    </nav>
                        <form action="dashboard" method="get">
                            <div class="des-date">

                                Date From:<input class="d-none d-sm-inline-block btn btn-sm  shadow-sm ml-2"
                                                 type="date" name="from" id="txtFrom" value="${from}">
                                Date To:<input class="d-none d-sm-inline-block btn btn-sm  shadow-sm ml-2"
                                               type="date" name="to" id="txtTo" value="${to}">

                            </div>
                            <button class="btn d-none d-sm-inline-block btn btn-sm  shadow-sm  " type="submit">Filter</button>
                        </form>
                    </div>
                    <!-- CTA -->

                    <!-- Cards -->
                    <div class="grid gap-6 mb-8 md:grid-cols-2 xl:grid-cols-4">
                        <!-- Card -->
                        <div
                            class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800"
                            >
                            <div
                                class="p-3 mr-4 text-orange-500 bg-orange-100 rounded-full dark:text-orange-100 dark:bg-orange-500"
                                >
                                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                <path
                                    d="M13 6a3 3 0 11-6 0 3 3 0 016 0zM18 8a2 2 0 11-4 0 2 2 0 014 0zM14 15a4 4 0 00-8 0v3h8v-3zM6 8a2 2 0 11-4 0 2 2 0 014 0zM16 18v-3a5.972 5.972 0 00-.75-2.906A3.005 3.005 0 0119 15v3h-3zM4.75 12.094A5.973 5.973 0 004 15v3H1v-3a3 3 0 013.75-2.906z"
                                    ></path>
                                </svg>
                            </div>
                            <div>
                                <p
                                    class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400"
                                    >
                                    People
                                </p>
                                <p
                                    class="text-lg font-semibold text-gray-700 dark:text-gray-200"
                                    >
                                    ${requestScope.totalacc}
                                </p>
                            </div>
                        </div>
                        <!-- Card -->
                        <div
                            class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800"
                            >
                            <div
                                class="p-3 mr-4 text-green-500 bg-green-100 rounded-full dark:text-green-100 dark:bg-green-500"
                                >
                                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                <path
                                    fill-rule="evenodd"
                                    d="M4 4a2 2 0 00-2 2v4a2 2 0 002 2V6h10a2 2 0 00-2-2H4zm2 6a2 2 0 012-2h8a2 2 0 012 2v4a2 2 0 01-2 2H8a2 2 0 01-2-2v-4zm6 4a2 2 0 100-4 2 2 0 000 4z"
                                    clip-rule="evenodd"
                                    ></path>
                                </svg>
                            </div>
                            <div>
                                <p
                                    class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400"
                                    >
                                    Total Price
                                </p>
                                <p
                                    class="text-lg font-semibold text-gray-700 dark:text-gray-200"
                                    >
                                    $ ${requestScope.totalprice}
                                </p>
                            </div>
                        </div>
                        <!-- Card -->
                        <div
                            class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800"
                            >
                            <div
                                class="p-3 mr-4 text-blue-500 bg-blue-100 rounded-full dark:text-blue-100 dark:bg-blue-500"
                                >
                                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                <path
                                    d="M3 1a1 1 0 000 2h1.22l.305 1.222a.997.997 0 00.01.042l1.358 5.43-.893.892C3.74 11.846 4.632 14 6.414 14H15a1 1 0 000-2H6.414l1-1H14a1 1 0 00.894-.553l3-6A1 1 0 0017 3H6.28l-.31-1.243A1 1 0 005 1H3zM16 16.5a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0zM6.5 18a1.5 1.5 0 100-3 1.5 1.5 0 000 3z"
                                    ></path>
                                </svg>
                            </div>
                            <div>
                                <p
                                    class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400"
                                    >
                                    Total Product
                                </p>
                                <p
                                    class="text-lg font-semibold text-gray-700 dark:text-gray-200"
                                    >
                                    ${requestScope.totalpro}
                                </p>
                            </div>
                        </div>
                        <!-- Card -->

                    </div>

                    <!-- New Table -->
                    <div class="cart-box-main">
                        <div class="container">
                            <div class="row">                                                                
                                <div class="col-lg-12">
                                    <h2>Top 10 Product</h2>
                                    <div class="table-main table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>ID</th>
                                                    <th>Image</th>
                                                    <th>Product Name</th>
                                                    <th>Price</th>                                        

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${requestScope.list}" var="p">

                                                    <tr>
                                                        <td>${p.id}</td>
                                                        <td> <img src="${p.image}" alt="alt" width="100px" height="100px"></td>
                                                        <td>${p.name}</td>
                                                        <td>${p.price}</td>                                           


                                                    </tr>

                                                </c:forEach>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>
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
