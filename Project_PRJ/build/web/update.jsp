<%-- 
    Document   : update
    Created on : Jul 11, 2022, 8:46:05 PM
    Author     : Nguyen Phuc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Update a Product</h1>
        <c:set var="p" value="${requestScope.product}"/>
        <form action="update" method="post">
           Enter ID: <input type="text" readonly name="id" value="${p.id}"></br>
           Enter Name: <input type="text" name="name" value="${p.name}"></br>
           Enter Describe:<input type="text" name="description" value="${p.description}"></br>
           Enter Price:<input type="text" name="price" value="${p.price}"></br>
           Enter Title<input type="text" name="title" value="${p.title}"></br>
           Enter Image:<input type="text" name="image" value="${p.image}"></br>
           <select name="op">
                <option value="1">T-shirts</option>
                <option value="2">Shirt</option>
                <option value="3">Hats</option>
                <option value="4">Bags</option>
                <option value="5">Shoes</option>
                <option value="6">Women Shoes</option>
            </select><br/> 
            
            <button type="submit" value="Update">Save</button>
        </form>
    </body>
</html>
