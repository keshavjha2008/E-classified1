 <%@ page import="java.sql.*" %>
<%! 
           Connection con = null;
		    Statement st = null;
%>

<%

String driver=application.getInitParameter("driver");
String url=application.getInitParameter("url");
String user=application.getInitParameter("user");
String pass=application.getInitParameter("pass");

Class.forName(driver);
con = DriverManager.getConnection(url,user,pass);
st=con.createStatement();
           
%>