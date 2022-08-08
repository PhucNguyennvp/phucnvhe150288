<%-- 
    Document   : addcategory
    Created on : Jul 14, 2022, 9:25:32 AM
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
        <h1>Add new a Category</h1>

        <form action="addcategory" method="post" >
            <h3 style="color: red">${requestScope.error}</h3><!-- comment -->            
            Enter Name: <input type="text" required name="name" ></br>           
            Enter Image:<input type="text" required name="image" ></br>            
            <input type="submit" value="Save">
        </form>
    </body>
</html>
