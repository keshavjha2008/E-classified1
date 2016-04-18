
<html>
<body>

<%@ page session="true"%>

<%@ include file="makecon.jsp" %>

<%! ResultSet rs=null;%>
<%! ResultSet rs1=null;%>
<% 
String tname="";
String loc="";
String address="";
String mname="";

String languagename=request.getParameter("languagename");
out.println("<h2 align='center'><b><font color='green' size='5'>Language Name:</font> </b><font color='orange' size='4'>"+languagename+"</font></h2>");
    try
       {

  rs=st.executeQuery("select * from sunday_cinema where movielanguage='"+languagename+"'");
        %>
<table border="1" cellpadding="1" cellspacing="1" width="788" height="110">    
<tr>
<td width="109" height="55">
  <p align="center"><b>Theater Name</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Location</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Address</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Movie Name</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Phone No</b></p>
</td>
</tr>  
<%
               while(rs.next())
	{
 

%> 
<tr>	
           <td width="109" height="55">
           <p align="center">
	   <b><%=rs.getString(2)%></p>

	  </td>
	  <td width="109" height="55">  <p align="center">
 
	   <b><%=rs.getString(3)%></p>
	  </td>
	  <td width="109" height="55">  <p align="center">
 
	   <b><%=rs.getString(4)%></p>
	  </td>
	   <td width="109" height="55"><p align="center">  
	   <b><%=rs.getString(5)%></p> 

	  </td>
	  <td width="109" height="55">  <p align="center">
	   <b><%=rs.getLong(11)%></p> 
                   </td>
	   </tr> 


      <%}
	rs.close();
	st.close();
	
           }catch(Exception e){System.out.println("Exception ..."+e); }			

%>
