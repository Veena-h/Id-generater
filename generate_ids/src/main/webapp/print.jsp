<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.connection.connection"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="com.entity.*"%>
<%@page import="java.util.*"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style type="text/css">

body {
 background-image: linear-gradient(45deg, #4848a3, #b18484);
 
 
}
.title {
 
    margin-bottom: 50px;
    text-transform: uppercase;
}

.card-block {
    font-size: 1em;
    position: relative;
    margin: 0;
    padding: 1em;
    border: none;
    border-top: 1px solid rgba(34, 36, 38, .1);
    box-shadow: none;
     
}
.card {
    border: 2px solid black;
	background-color:#9090e9;
    width: 600px;
    font-size: 1em;
    overflow: hidden;
    padding: 5;
 
    border-radius: .28571429rem;
    box-shadow: 0 1px 3px 0 #d4d4d5, 0 0 0 1px #d4d4d5;
    margin-top:20px;
}

.carousel-indicators li {
    border-radius: 12px;
    width: 12px;
    height: 12px;
    background-color: #404040;
}
.carousel-indicators li {
    border-radius: 12px;
    width: 12px;
    height: 12px;
    background-color: #404040;
}
.carousel-indicators .active {
    background-color: white;
    max-width: 12px;
    margin: 0 3px;
    height: 12px;
}
.carousel-control-prev-icon {
 background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23fff' viewBox='0 0 8 8'%3E%3Cpath d='M5.25 0l-4 4 4 4 1.5-1.5-2.5-2.5 2.5-2.5-1.5-1.5z'/%3E%3C/svg%3E") !important;
}

.carousel-control-next-icon {
  background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='%23fff' viewBox='0 0 8 8'%3E%3Cpath d='M2.75 0l-1.5 1.5 2.5 2.5-2.5 2.5 1.5 1.5 4-4-4-4z'/%3E%3C/svg%3E") !important;
}



.btn {
  margin-top: auto;
}


@media print {

 nav,#title1,#hidden{
 
    visibility: hidden;
 }
	
	.card{
	
	visibility: visible;
	
	}
	
	
	
}
</style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-dark">
  <a class="navbar-brand text-primary m-2" href="#">ID-Generator</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item text-light">
        <a class="nav-link text-light" href="generate_id.jsp">Home</a>
      </li>
      <li class="nav-item text-light">
        <a class="nav-link text-light" href="show1.jsp">List</a>
      </li>
      
      <li class="nav-item text-light">
        <a class="nav-link text-light" href="operations.jsp">Student-Data</a>
      </li>
      <!-- <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul> -->
    <!-- <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form> -->
  </div>
</nav>




  <div class="title h1 text-center" id="title1">List Of Student ID</div>

<%

    
    	
    	int id=Integer.parseInt(request.getParameter("id"));
        SessionFactory sf=connection.getFactory();
        Session ss=sf.openSession();
        Transaction t=ss.beginTransaction();
         form_entity f=ss.get(form_entity.class, id);
    
    	 



%>


<div class="container py-3">
<!--   <div class="title h1 text-center"></div>
 -->  <!-- Card Start -->
  <div class="card">
    <div class="row ">

      <div class="col-md-7 px-3">
        
        <div class="card-block px-6 ">
        
        <img src="logo.png" class="card-img-top bg-primary" style="width: 4rem" alt="...">
        
         <h4 class="card-title " style="margin-left: 5rem ;margin-top:-4.5rem;">D.Y.Patil Agriculture <span>and Technical University</span> </h4> 
          <hr>
    
            <input type="hidden" name="id" value=<%=f.getId() %>>
        <div class="d-flex flex-row">
         <h5 class="text-light">Name:</h5>
       <h5 class="card-title ml-5" style="margin-left: 0.5rem;"><%=f.getFirst_name() %>  <%=f.getLast_name() %></h5>
       </div>
        
        <div class="d-flex flex-row">
         <h5  class="text-light">Gender:</h5>
       <h5 class="card-title ml-5 " style="margin-left: 0.5rem;"><%=f.getGender()%> </h5>
        </div>
        
        
        
         <div class="d-flex flex-row">
         <h5  class="text-light">Address:</h5>
       <h5 class="card-title ml-5" style="margin-left: 0.5rem;"><%=f.getAddress()%> </h5>
        </div>
        
        
         <div class="d-flex flex-row">
         <h5  class="text-light">Class:</h5>
       <h5 class="card-title ml-5" style="margin-left: 0.5rem;"><%=f.getClass1()%> <%=f.getSelect() %> </h5>
        </div>
        
        <div class="d-flex flex-row">
         <h5  class="text-light">Eamil:</h5>
       <h5 class="card-title ml-5" style="margin-left: 0.5rem;"><%=f.getEmail() %> </h5>
        </div>
        
        <div class="d-flex flex-row">
         <h5  class="text-light">Phone-no:</h5>
       <h5 class="card-title ml-5" style="margin-left: 0.5rem;"><%=f.getPhone()%>  </h5>
        </div>
        
        <div class="d-flex flex-row">
         <h5  class="text-light">PRN:</h5>
       <h5 class="card-title ml-5" style="margin-left: 0.5rem;"><%=f.getPrn()%>  </h5>
        </div>
        
       
       
<!--           <p class="card-text">Made for usage, commonly searched for. Fork, like and use it. Just move the carousel div above the col containing the text for left alignment of images</p>
 -->          <br>
<!--           <a href="#" class="mt-auto btn btn-primary  ">Read More</a>
 -->        </div>
      </div>
      <!-- Carousel start -->
      <div class="col-md-5">
        <div id="CarouselTest" >
          <!-- <ol class="carousel-indicators">
            <li data-target="#CarouselTest" data-slide-to="0" class="active"></li>
            <li data-target="#CarouselTest" data-slide-to="1"></li>
            <li data-target="#CarouselTest" data-slide-to="2"></li>

          </ol> -->
          <div class="carousel-inner">
              <img class="d-block" src="data:image/jpeg;base64,<%=Base64.getEncoder().encodeToString(f.getImg()) %>" alt="" style="height: 12rem; margin: 7rem 2rem;width: 11rem;boder:1px solid black; ">
              
              
            </div>
            
           <!--  
            <div class="carousel-item">
              <img class="d-block" src="https://picsum.photos/450/300?image=355" alt="">
            </div> -->
            <!-- <a class="carousel-control-prev" href="#CarouselTest" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
            <a class="carousel-control-next" href="#CarouselTest" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a> -->
  
  
  
          </div>
          
          
        </div>
      </div>
      <!-- End of carousel -->
    </div>
    
    
    
   
  </div>
  <!-- End of card -->

			


</div>

			<div class="" id="hidden">
               
                  <a href="#" class="mt-auto btn btn-primary text-center "  style="margin-left: 19rem" onclick="window.print();"> Print </a>
                  
            </div> 
<hr> <hr>

 


<!-- <div class="container">
  <div class="card float-left">
    <div class="row ">

      <div class="col-sm-7">
        <div class="card-block">
                    <h4 class="card-title">Small card</h4>
          <p>Wetgple text to build your own card.</p>
          <p>Change around the content for awsomenes</p>
          <a href="#" class="btn btn-primary btn-sm">Read More</a>
        </div>
      </div>

      <div class="col-sm-5">
        <img class="d-block w-100" src="https://picsum.photos/150?image=380" alt="">
      </div>
    </div>
  </div> -->

 
   <!--  <div class="card float-right">
      <div class="row">
        <div class="col-sm-5">
          <img class="d-block w-100" src="https://picsum.photos/150?image=641" alt="">
        </div>
        <div class="col-sm-7">
          <div class="card-block">
                      <h4 class="card-title">Small card</h4>
            <p>Copy paste the HTML and CSS.</p>
            <p>Change around the content for awsomenes</p>
            <br>
            <a href="#" class="btn btn-primary btn-sm float-right">Read More</a>
          </div>
        </div>
 
      </div>
    </div>
  </div> -->
 
 <br>
<br>
 
</body>
</html>