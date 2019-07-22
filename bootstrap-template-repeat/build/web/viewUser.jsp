<%-- 
    Document   : productList
    Created on : 21-Nov-2017, 14:50:44
    Author     : BEmerson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
#products {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

#products td, #products th {
    border: 1px solid #ddd;
    padding: 8px;
}

#products tr:nth-child(even){background-color: #f2f2f2;}

#products tr:hover {background-color: #ddd;}

#products th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}

</style>
    </head>
    <body>
        <h1>Here is a Single List</h1>
        <p></p>
        <table id="products">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Long Name</th>
                <th>Description</th>
                <th>ImageURL</th>
                <th>Actions</th>
            </tr>
      
            
            <tr>
                <td><c:out value="${CURRENT_PRODUCT.id}"/></td>
                <td><c:out value="${CURRENT_PRODUCT.name}"/></td>
                <td><c:out value="${CURRENT_PRODUCT.longName}"/></td>
                <td><c:out value="${CURRENT_PRODUCT.description}"/></td>
                <td><img src="${CURRENT_PRODUCT.imageURL}" height="60" width="100"</td>
                <td><a href="Product?function=updateProduct&id=<c:out value="${CURRENT_PRODUCT.id}"/>">Update</a>
                    <br/>
                    <a href="Product?function=deleteProduct&id=<c:out value="${CURRENT_PRODUCT.id}"/>">Delete</a>
                </td>
            </tr>
                   
        </table>
        <hr/>
        <form  action="Product" method="GET">
        <input type="hidden" name="function" value="viewProductList"/>
        <input type="submit" class="button" value="Back to Products" />
        </form>
        <hr/>
    </body>
</html>
