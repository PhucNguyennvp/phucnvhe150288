<%-- 
    Document   : updatecategory
    Created on : Jul 14, 2022, 9:19:05 AM
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
        <h1>Update a Category</h1>
        <c:set var="c" value="${requestScope.category}"/>
        <form action="updatecategory" method="post">
           Enter ID: <input type="text" readonly name="id" value="${c.cid}"></br>
           Enter Name: <input type="text" name="name" value="${c.cname}"></br>          
           Enter Image:<input type="text" name="image" value="${c.images}"></br>
            <button type="submit" value="Update">Save</button>
        </form>
    </body>
</html>
