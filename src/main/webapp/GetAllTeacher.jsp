<%@page import="com.jsp.teacher.student.dto.Teacher"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.teacher.student.services.TeacherServices"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Teachers</title>
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
	 <h1 id="header">View All Teachers Details</h1>
<form id="form" action="AllTeachers" >
    <% TeacherServices teacherServices= new TeacherServices();  %>
    <%List<Teacher> teachers = teacherServices.getAllTeachers(); %>
    
    <table border="2" style="text-align: center; border-collapse: collapse;" cellpadding="10">
    <tr>
       <th>Teacher ID</th>
       <th>Teacher Email</th>
       <th>Teacher Name</th>
       <th>Subject Name</th>
       <th style="color: blue">Manage</th>
    </tr>
    <% for(Teacher teacher : teachers){ %>
    <tr>
       <td><%=teacher.getId() %></td>
       <td><%=teacher.getEmail() %></td>
       <td><%=teacher.getName() %></td>
       <td><%=teacher.getSubject()%></td>
       <td><a href="./UpdateTeacher.html"<%=teacher.getId() %> >Edit</a> <a href="./DeleteTeacher.html"<%=teacher.getId() %> >Delete</a> </td>
          </tr>
    <%} %>
    
    </table>
    <a href="./TeacherSection.html">
			 	<button type="button" id="submit">Back to Section</button>
			</a><br>
    </form>
    </main>
</body>
</html>