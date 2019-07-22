<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
      <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Sounds Electric E-Commerce website</title>

    <!-- Bootstrap core CSS -->

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">

    <!-- Custom styles for this template -->
    <link href="css/main.css" rel="stylesheet">
     
    </head>
    <body>
        
  <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Sounds Electric Music Store</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
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
              <a class="nav-link" href = "<c:url value = "/Product?function=viewProductList"/>">Products</a>
              
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Cart.jsp">Cart</a>
            </li>
           
          </ul>
        </div>
      </div>
    </nav>

        
    
         
            <!-- Page Content -->
    <div class="container">

      <div class="row">

        <div class="col-lg-3">
          <h1 class="my-4">Shop Name</h1>
          <div class="list-group">
            <a href="#" class="list-group-item">Rock</a>
            <a href="#" class="list-group-item">Pop</a>
            <a href="#" class="list-group-item">Classical</a>
          </div>
        </div>
        <!-- /.col-lg-3 -->

        <div class="col-lg-9">

          <div class="card mt-4">
            <img class="card-img-top img-fluid"  src="" alt="">
            <div class="card-body">
              <h3 class="card-title"><c:out value="${CURRENT_PRODUCT.name}"/></h3>
               <h3 class="card-title"><c:out value="${CURRENT_PRODUCT.category}"/></h3>
              <h4><c:out value="${CURRENT_PRODUCT.price}"/></h4>
              <p class="card-text"><c:out value="${CURRENT_PRODUCT.description}"/></p>
               <h3 class="card-title"><c:out value="${CURRENT_PRODUCT.availability}"/></h3>
              <span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9734;</span>
              4.0 stars
            </div>
          </div>
          <!-- /.card -->

          <div class="card card-outline-secondary my-4">
           
        <form  action="Product" method="GET">
        <input type="hidden" name="function" value="viewProductList"/>
        <input type="submit" class="btn btn-success" value="Back to Products" />
        </form>
        
             
          </div>
          <!-- /.card -->

        </div>
        <!-- /.col-lg-9 -->

      </div>

    </div>
    <!-- /.container -->

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    
    </body>
</html>
