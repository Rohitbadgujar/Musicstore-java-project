<%@page import="com.bsapp.model.User"%>
<%@page import="java.util.Vector"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
         <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        
        <style>
            
            
#products {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width: 100%;
    margin-top: 50px; 
}

#products td, #products th {
    border: 1px solid #ddd;
    padding: 8px;
     margin-top: 50px;
}

#products tr:nth-child(even){background-color: #f2f2f2;}

#products tr:hover {background-color: #ddd;}

#products th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
     margin-top: 50px;
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
       
    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top">
   
      
        <centre class="navbar-brand" href="homepage.jsp" >Sounds Electric Music Store</centre>
        
        
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
        
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
              <a class="nav-link" href="Homepage.jsp">Home</a>
            </li>
                <li class="nav-item">
              <a class="nav-link" href="Login.jsp">Login</a>
            </li>
              <li class="nav-item">
              <a class="nav-link" href="About.jsp">About</a>
            </li>
           <li class="nav-item">
              <a class="nav-link" href="Contact.jsp">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href = "<c:url value = "/Product?function=viewProductList"/>">Products</a>
              
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Cart.jsp">Cart</a>
            </li>
           
            
            
            
           
          </ul>
        </div>
      
    </nav>
       
        <table id="products">
         <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Category</th>
                <th>Description</th>
                <th>Availability</th>
                <th>Price</th>
                <th>ImageUrl</th>
                <th>Actions</th>
            </tr>
       
             <c:forEach var="productvar" items="${PRODUCT_LIST}">
            <tr>
                <td><c:out value="${productvar.id}"/></td>
                <td><c:out value="${productvar.name}"/></td>
                <td><c:out value="${productvar.category}"/></td>
                <td><c:out value="${productvar.description}"/></td>
                <td><c:out value="${productvar.availability}"/></td>
                <td><c:out value="${productvar.price}"/></td>
                <td><img src="${productvar.imageURL}" height="60" width="100"</td>
                <td><a href="Product?function=viewProduct&id=<c:out value="${productvar.id}"/>">View</a>
                    <br/>
                    <a href="Product?function=updateProduct&id=<c:out value="${productvar.id}"/>">Update</a>
                    <br/>
                    
                </td>
            </tr>
        </c:forEach>    
        </table>
        
        <hr/>
        <form  action="Product" method="GET">
        <input type="hidden" name="function" value="addProduct"/>
        <input type="submit" class="button" value="Add New Product" />
        </form>
        <hr/>
    
        
         <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Sounds Electric 2019</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    </body>
</html>

  
  


        
    
