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
<link rel="stylesheet" href="generate_id.css">
<%@include file="navbar.jsp" %>
</head>
<body>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


<form action="insert_ser" method="post" enctype="multipart/form-data">
<%

    
    	
    	int id=Integer.parseInt(request.getParameter("id"));
        SessionFactory sf=connection.getFactory();
        Session ss=sf.openSession();
        Transaction t=ss.beginTransaction();
         form_entity f=ss.get(form_entity.class, id);
    
    	 



%>
			<div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
<!--                         <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
 -->                        <h3>Welcome</h3>
                        <p>Generate your Id-card withing a few seconds by fill-up the basic information</p>
<!--                         <input type="submit" name="" value="Login"/><br/>
 -->                    </div>
                    <div class="col-md-9 register-right">
                        <!-- <ul class="nav nav-tabs nav-justified" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Employee</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Hirer</a>
                            </li>
                        </ul> -->
                        <div class="tab-content" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <h3 class="register-heading">Generate Student ID-Card</h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="First Name " name="f_name" value=<%=f.getFirst_name() %> />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Last Name" name="l_name" value=<%=f.getLast_name() %>/>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" placeholder="Class" name="class" value=<%=f.getClass1() %> />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control"  placeholder="address"  name="address" value=<%=f.getAddress() %> />
                                        </div>
                                        <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="male"  >
                                                    <span> Male </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span>Female </span> 
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" class="form-control" placeholder="Your Email"  name="email" value="" />
                                        </div>
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" name="phone" class="form-control" placeholder="Your Phone " value=<%=f.getPhone() %> />
                                        </div>
                                        <div class="form-group">
                                             <select class="form-control" name="select">
                                                <option class="hidden"  selected disabled>Year</option>
                                                <option value="I">I</option>
                                                <option value="II">II</option>
                                                <option value="III">III</option>
                                                 <option value="IV">IV</option>
                                                 <option value="other">other</option>
                                                 
                                            </select>
                                        </div>
                                        
                                        <div class="form-group">
                                            <input type="number" class="form-control" placeholder="PRN" name="prn" value=<%=f.getPrn() %>/>
                                        </div>
                                        
                                        <div class="form-group">
                                            <input type="file" class="form-control" name="file" value=<%=f.getImg() %>/>
                                        </div>
                                        
                                        <input type="submit" class="btnRegister"  value="Update"/>
                                    </div>
                                </div>
                            </div>
                            
                       
            
            </form>
</body>
</html>