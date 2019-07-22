<%@page import="com.bsapp.model.User"%>
<%@page import="java.util.Vector"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
      <title>Sounds Electric E-commerce website</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/modern-business.css" rel="stylesheet">
 
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
    <!-- Page Content -->
    <div class="container">

      <!-- Page Heading/Breadcrumbs -->
      <h1 class="mt-4 mb-3">About
      
      </h1>

     

      <!-- Intro Content -->
      <div class="row">
        <div class="col-lg-6">
          <img class="img-fluid rounded mb-4" src="https://s3.amazonaws.com/hs-wordpress/wp-content/uploads/2017/12/13171428/high-definition-audio-thumbnail.png" alt="">
        </div>
        <div class="col-lg-6">
          <h2>About Sounds Electric Music Store</h2>
          <p>Sounds Electric Music is a well established independent music retailer in Ireland. We have a very dedicated staff, some of whom have been with us for over 20 years. We pride ourselves on our range of products as well as our service to customers. We carry a wide range of music genres including Irish music, rock, pop, country and nostalgia as well as keeping up to date with all the newest releases.</p>
          <p>As of 2016, Sounds Electric Music now trades solely online, shipping products globally every week.</p>
        </div>
      </div>
      <!-- /.row -->

      <!-- Team Members -->
      <h2>Our Mangement Team</h2>

      <div class="row">
        <div class="col-lg-4 mb-4">
          <div class="card h-100 text-center">
            <img class="card-img-top" src="https://www.projectsmart.co.uk/img/excellent-manager.png" alt="">
            <div class="card-body">
              <h4 class="card-title">Jack Lucey</h4>
              <h6 class="card-subtitle mb-2 text-muted">Owner</h6>
              <p class="card-text">John set Sounds Electric Music Store up over 25 years ago and has transformed the business from a small shop to an awarding online music store.</p>
            </div>
            <div class="card-footer">
              <a href="#">jacklucey1@yahoo.com</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mb-4">
          <div class="card h-100 text-center">
            <img class="card-img-top" src="https://willory.com/wp-content/uploads/2013/05/0812-manager.jpg" alt="">
            <div class="card-body">
              <h4 class="card-title">Anna Twomey</h4>
              <h6 class="card-subtitle mb-2 text-muted">Manager</h6>
              <p class="card-text">Anna joined the team three years ago and has been focusing on advertising and sales. She has previously worked in other music stores for 5 years.</p>
            </div>
            <div class="card-footer">
              <a href="#">annatwomey@outlook.com</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mb-4">
          <div class="card h-100 text-center">
            <img class="card-img-top" src="https://www.womenofinfluence.ca/wp-content/uploads/2018/11/218058_CATHERINE-1_.jpg" alt="">
            <div class="card-body">
              <h4 class="card-title">Ava Murphy</h4>
              <h6 class="card-subtitle mb-2 text-muted">Manager</h6>
              <p class="card-text">Ava joined the team over 15 years and has helped Jack transform the business to where it is today. She is an expert in the music industry. </p>
            </div>
            <div class="card-footer">
              <a href="#">avamurphy@google.com</a>
            </div>
          </div>
        </div>
      </div>
      <!-- /.row -->
 <!-- Team Members -->

    

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark" position="static" min-height="100px" >
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
