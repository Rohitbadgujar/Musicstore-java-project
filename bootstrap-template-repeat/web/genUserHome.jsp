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
           
            <li class="nav-item">
              <p class="navbar-text pull-right">
                <% User user = (User)session.getAttribute("SKUSER"); %>
              Logged in as <a href="#" class="navbar-link"><%= user.getFirstName() %></a>
            </p>
            </li>  
            
            
           
          </ul>
        </div>
      
    </nav>

   
     
      <div class="row">
        <!-- Sidebar Column -->
        <div class="col-lg-3 mb-4">
          <div class="list-group">
           
            <a href="Logn.jsp" class="list-group-item" >Login</a>
            <a href="About.jsp" class="list-group-item">About</a>
            <a href="contact.jsp" class="list-group-item" >Contact</a>
            <a href="Products.jsp" class="list-group-item" >Products</a>
            <a href="cart.jsp" class="list-group-item" >Cart</a>
            
           
          </div>
        </div>
        <!-- Content Column -->
        <div class="col-lg-9 mb-4">
         
    <div class="container">
<iframe src="http://free.timeanddate.com/clock/i540q54c/n78/tlie/fn7/fs20/tct/pct/ftb/tt0/th1/ta1/tb1" frameborder="0" width="487" height="30" allowTransparency="true" align="right"></iframe>
      <h1 class="my-4">Genres of Music </h1>

      <!-- Marketing Icons Section -->
      <div class="row">
        <div class="col-lg-4 mb-4">
          <div class="card h-100">
            <h4 class="card-header">Rock</h4>
            <div class="card-body">
              <p class="card-text">Rock music is a broad genre of popular music that originated as "rock and roll" in the United States in the early 1950s, and developed into a range of different styles in the 1960s and later, particularly in the United States and the United Kingdom.</p>
              
            </div>
            <div class="card-footer" >
              <a href = "<c:url value = "/Product?function=viewProductList"/>" class="btn" >Take me there</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mb-4">
          <div class="card h-100">
            <h4 class="card-header">Pop</h4>
            <div class="card-body">
              <p class="card-text">Pop music is a genre of popular music that originated in its modern form in the United States and United Kingdom during the mid-1950s. The terms "popular music" and "pop music" are often used interchangeably, although the former describes all music that is popular and includes many diverse styles.</p>
            </div>
            <div class="card-footer">
              <a href = "<c:url value = "/Product?function=viewProductList"/>" class="btn">Take me there</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mb-4">
          <div class="card h-100">
            <h4 class="card-header">Indie Rock</h4>
            <div class="card-body">
              <p class="card-text">Indie rock is a genre of rock music that originated in the United States and United Kingdom in the 1970s. Originally used to describe independent record labels, the term became associated with the music they produced and was initially used interchangeably with alternative rock.</p>
            </div>
            <div class="card-footer">
              <a href = "<c:url value = "/Product?function=viewProductList"/>" class="btn">Take me there</a>
            </div>
          </div>
        </div>
      </div>
      <!-- /.row -->
     
       <div class="row">
        <div class="col-lg-4 mb-4">
          <div class="card h-100">
            <h4 class="card-header">Glam Rock</h4>
            <div class="card-body">
              <p class="card-text">Glam rock is a style of rock music that developed in the United Kingdom in the early 1970s performed by musicians who wore outrageous costumes, makeup, and hairstyles, particularly platform shoes and glitter.The UK charts were inundated with glam rock acts from 1971 to 1975.</p>
              
            </div>
            <div class="card-footer" >
              <a href = "<c:url value = "/Product?function=viewProductList"/>" class="btn" >Take me there</a>
            </div>
          </div>
        </div>
      <div class="col-lg-4 mb-4">
          <div class="card h-100">
            <h4 class="card-header">Hip Hop</h4>
            <div class="card-body">
              <p class="card-text">Hip hop music, also called rap music, is a music genre developed in the United States by inner-city African Americans and Latino Americans in the Bronx borough of New York City in the 1970s. It consists of a stylized rhythmic music that commonly accompanies rapping, a rhythmic and rhyming speech that is chanted.</p>
            </div>
            <div class="card-footer">
              <a href = "<c:url value = "/Product?function=viewProductList"/>" class="btn">Take me there</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mb-4">
          <div class="card h-100">
            <h4 class="card-header">Alternative Rock</h4>
            <div class="card-body">
              <p class="card-text">Alternative rock (also called alternative music, alt-rock or simply alternative) is a style of rock music that emerged from the independent music underground of the 1970s and became widely popular in the 1980s. In this instance, the word "alternative" refers to the genre's distinction from mainstream rock music.</p>
            </div>
            <div class="card-footer">
              <a href ="<c:url value = "/Product?function=viewProductList"/>" class="btn">Take me there</a>
            </div>
          </div>
        </div>
      </div>
        </div> 
      </div>    
      <!-- Portfolio Section -->
      <h2>Bestsellers</h2>

      <div class="row">
         <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="https://www.jbhifi.com.au/FileLibrary/ProductResources/Images/156967-L-LO.jpg"  style='width:400;height:400'></a>
            <div class="card-body">
              <h4 class="card-title">
                A Head Full of Dreams
              </h4>
              <p class="card-text">A Head Full of Dreams is the seventh studio album by the British rock band Coldplay. It was released on 4th December 2015, by Parlophone in the United Kingdom, and by Atlantic Records in the United States. At the 2016 Brit Awards the album was nominated for British Album of the Year. It was the eighth-best-selling album of 2015 with 1.9 million copies sold worldwide.</p>
            </div>
             <div class="card-footer" >
              <a href = "<c:url value = "/Product?function=viewProductList"/>" class="btn" >Take me there</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
           <a href="#"><img class="card-img-top" src="https://upload.wikimedia.org/wikipedia/en/thumb/4/4e/Curtain_Call_cover.jpg/220px-Curtain_Call_cover.jpg"  style='width:100;height:100'></a>
            <div class="card-body">
              <h4 class="card-title">
                 Curtain Call
              </h4>
              <p class="card-text">Curtain Call: The Hits is the first greatest hits album by American rapper Eminem. It was released on December 6th, 2005, under Aftermath Entertainment, Shady Records, and Interscope Records. The album collects Eminem's most popular singles, as well as four new songs, including a live version of \"Stan\", featuring English singer and songwriter Elton John from the 43rd Grammy Awards, plus the songs \"FACK\", \"When I'm Gone\" and \"Shake That\" featuring Nate Dogg.</p>
            </div>
            <div class="card-footer" >
              <a href = "<c:url value = "/Product?function=viewProductList"/>"class="btn" >Take me there</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 col-sm-6 portfolio-item">
          <div class="card h-100">
            <a href="#"><img class="card-img-top" src="https://upload.wikimedia.org/wikipedia/en/c/ce/Imagine_Dragons_-_Smoke_%2B_Mirrors.png"  style='width:400;height:400'></a>
            <div class="card-body">
              <h4 class="card-title">
               Smoke + Mirros
              </h4>
              <p class="card-text">Smoke + Mirrors is the second studio album by American pop rock band Imagine Dragons. The album was recorded during 2014 at the band's home studio in Las Vegas, Nevada. Three official singles have been released from the album: "I Bet My Life", "Gold" and "Shots". As of July 2017 the album has sold over 1,000,000 copies in the US.</p>
            </div>
             <div class="card-footer" >
              <a href = "<c:url value = "/Product?function=viewProductList"/>"class="btn" >Take me there</a>
            </div>
          </div>
        </div>
       

      <!-- Call to Action Section -->
      <div class="row mb-4">
        <div class="col-md-8">
          <p>If you have any further queries please feel free to contact us and our customer service team will be able to assist you with your query. Click the Contact Us button to see how to contact us</p>
        </div>
        <div class="col-md-4">
          <a class="btn btn-lg btn-secondary btn-block" href="Contact.jsp">Contact Us</a>
        </div>
      </div>

    
 
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

