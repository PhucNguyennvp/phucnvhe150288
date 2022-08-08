<%-- 
    Document   : add
    Created on : Jul 11, 2022, 9:21:30 PM
    Author     : Nguyen Phuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add new a Product</h1>

        <form action="add" method="post" >
            <h3 style="color: red">${requestScope.error}</h3><!-- comment -->            
            Enter Name: <input type="text" required name="name" ></br>
            Enter Describe:<input type="text" required name="description" ></br>
            Enter Price:<input type="text" required name="price" ></br>
            Enter Tital<input type="text" required name="tital" ></br>
            Enter Image:<input type="text" required name="image" ></br>
            <select name="op">
                <option value="1">T-shirts</option>
                <option value="2">Shirt</option>
                <option value="3">Hats</option>
                <option value="4">Bags</option>
                <option value="5">Shoes</option>
                <option value="6">Women Shoes</option>
            </select><br/> 
            <input type="submit" value="Save">
        </form>
    </body>
</html>
