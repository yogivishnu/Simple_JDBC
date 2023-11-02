<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import ="java.sql.*" %>

<%

String email = request.getParameter("email");
String password = request.getParameter("password");

try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/schoolbase","root","root");
	PreparedStatement ps = con.prepareStatement("insert into login(email,password) values(?,?);");
	ps.setString(1, email);
	ps.setString(2, password);
	int result = ps.executeUpdate();
	if(result>0)
		response.sendRedirect("signup-sucess.html");
} 
catch(Exception e){
	
	out.println(e);
}






%>

