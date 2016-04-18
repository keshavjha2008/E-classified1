<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR></HEAD>
<BODY text=#000000 leftMargin=0 topMargin=0>
<%@ include file="makecon.jsp" %>

<%@ page session="true"%>
<%!  	ResultSet rs=null;
%>
<%  String gen=request.getParameter("select2");%>

<% try
	{
 	
	rs=st.executeQuery("select * from matrimonial_det where gender='"+gen+"'");
%>


<TABLE cellSpacing=0 cellPadding=0 width=780  border=0 >

 <TBODY>
  <TR>
    <TD height=2></TD></TR>
  <TR>
    <TD vAlign=top height=321>
    <p align="center">
      
     &nbsp;
    <p align="center">
      
     <b><i><font color="orange" size="5">Availabe Information</font></i></b>
    <p align="center">
      
     &nbsp;
<table border="1" cellpadding="1" cellspacing="1" width="788" height="110">    
<tr>
<td width="109" height="55">
  <p align="center"><b>Name </b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Age</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Mail Id</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Religion</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Occupation</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Address</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Contact Number</b></p>
</td>

</tr>
    	
       
    <%	while(rs.next())
	{%>
 	   <tr>	
           <td width="109" height="55">
           <p align="center">
	   <%out.println(rs.getString(1));%></p>

	  </td>
	  <td width="109" height="55">  <p align="center">
 
	   <%out.println(rs.getInt(2));%></p>
	  </td>
	  <td width="109" height="55">  <p align="center">
 
	   <%out.println(rs.getString(3));%></p>
	  </td>
	   <td width="109" height="55"><p align="center">  
	   <%out.println(rs.getString(5));%></p> 

	  </td>
	  <td width="109" height="55">  <p align="center">
	   <%out.println(rs.getString(9));%></p> 

	  </td>
	  <td width="109" height="55"> <p align="center"> 
	   <%out.println(rs.getString(10));%> </p>

	  </td>
	  <td width="109" height="55"> <p align="center"> 
	   <%out.println(rs.getLong(13));%> </p>

	  </td>
	   </tr> 
      <%}%>
 
    </TABLE>
</TBODY>

</TABLE>

<%}
catch(Exception e)
{
 System.out.println("error"+e);
}
finally
{
	rs.close();
	st.close();
	con.close();
}  
%>

</BODY></HTML>
