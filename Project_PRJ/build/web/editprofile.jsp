<%-- 
    Document   : editprofile
    Created on : Jul 14, 2022, 9:58:01 AM
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
        <c:set var="acc" value="${requestScope.account}"/>
        <form action="editprofile" method="post">
           Enter ID: <input type="text" readonly name="id" value="${acc.id}"></br>
           Enter Name: <input type="text" name="name" value="${acc.displayName}"></br>
           Enter Email:<input type="text" name="email" value="${acc.email}"></br>
           Enter Phone:<input type="text" name="phone" value="${acc.phone}"></br>
           Enter Address:<input type="text" name="address" value="${acc.address}"></br>
           
            <button type="submit" value="Update">Save</button>
        </form>
    </body>
</html>
