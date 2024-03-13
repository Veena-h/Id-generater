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
<%@include file="navbar.jsp" %>
</head>
<body>

   <table class="table  table-bordered">
   
     <thead  class="thead-dark">
     <tr>
       <th scope="col">Name</th>
       <th scope="col">Gender</th>
       <th scope="col">Address</th>
        <th scope="col">Class</th>
       <th scope="col">Email</th>
       <th scope="col">Phone</th>
       <th scope="col">PRN</th>
       <th scope="col">Img</th>
       <th scope="col" colspan="3" class="text-center ml-5" >Operations</th>
     </tr>
     </thead>
     <tbody>
  <%    try{
    	
    	SessionFactory s=connection.getFactory();
    	Session ss=s.openSession();
    	Query q=ss.createQuery("from form_entity");
    	List<form_entity> l=q.list();
    	
    	for(form_entity f:l)
    	{
    
    %>     
    
      <tr>
      <td scope="row"><%=f.getFirst_name() %> <%=f.getLast_name() %></td>
       <td><%=f.getGender() %></td>
        <td><%=f.getAddress() %></td>
         <td><%=f.getClass1()%> <%=f.getSelect() %></td>
        <td><%=f.getEmail() %></td>
        <td><%=f.getPhone()%></td>
        <td><%=f.getPrn() %></td>
        <td><img class="d-block" src="data:image/jpeg;base64,<%=Base64.getEncoder().encodeToString(f.getImg()) %>" alt="" style="height: 10rem;width: 10rem;boder:1px solid black; ">
       
                 <td> <a href="update.jsp?id=<%=f.getId() %>" class=" btn btn-primary  "  > update </a></td>
                  <td><a href="delet_ser?id=<%=f.getId() %>" class="btn btn-danger "  > delete </a></td>
                  <td><a href="print.jsp?id=<%=f.getId() %>" class=" btn btn-success  "  > Print </a></td>
                  
          
        </td> 
      </tr>
   
    
    <%
     
    ss.close();
        	}}
    catch(Exception e)
    {
    	e.printStackTrace();
    }



    %>
    
    
    
     
     </tbody>
   
   
   </table>


</body>
</html>