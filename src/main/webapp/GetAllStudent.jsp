<%@page import="com.jsp.teacher.student.dto.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.teacher.student.dao.StudentDao"%>
<%@page import="com.jsp.teacher.student.services.StudentServices"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Students</title>
<style type="text/css">
	
	html {
  	height: 100%;
	}

	body {
	  height: 100%;
	  margin: 0;
	  font-family: Arial, Helvetica, sans-serif;
	  display: grid;
	  justify-items: center;
	  align-items: center;
	  background-color: yellow;
	}
	
	#main-holder {
	  width: 50%;
	  height: 70%;
	  display: grid;
	  justify-items: center;
	  align-items: center;
	  background-color: white;
	  border-radius: 7px;
	  box-shadow: 0px 0px 5px 2px black;
	}

	#form {
	  align-self: flex-start;
	  display: grid;
	  justify-items: center;
	  align-items: center;
	}
	
	
	#submit {
	  width: 100%;
	  padding: 10px;
	  border: none;
	  border-radius: 2px;
	  color: white;
	  font-weight: bold;
	  background-color: #3a3a3a;
	  cursor: pointer;
	  outline: none;
	}
	
</style>
</head>
<body>
<main id="main-holder">
	 <h1 id="header">View ALL Students Details</h1>
<form id="form" action="AllStudent" >
    <% StudentServices studentServices= new StudentServices();  %>
    <%List<Student> students = studentServices.getAllStudents(); %>
    
    <table border="2" style="text-align: center; border-collapse: collapse;" cellpadding="10">
    <tr>
       <th>Student ID</th>
       <th>Student Email</th>
       <th>Student Name</th>
       <th>Standard</th>
       <th style="color: blue">Manage</th>
    </tr>
    <% for(Student student : students){ %>
    <tr>
       <td><%=student.getId() %></td>
       <td><%=student.getEmail() %></td>
       <td><%=student.getName() %></td>
       <td><%=student.getStd() %></td>
       <td><a href="./UpdateStudent.html"<%=student.getId() %> >Edit</a></td>
          </tr>
    <%} %>
    
    </table>
     <a href="./StudentSection.html">
			 	<button type="button" id="submit">Back to Section</button>
			</a><br>
    </form>
    </main>
</body>
</html>