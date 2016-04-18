
<html>
<body>

<%@ page session="true"%>
<%@ include file="makecon.jsp" %>

<%! ResultSet rs=null;%>
<%! ResultSet rs1=null;%>
<% 

String collagename=request.getParameter("collagename");

out.println("<h2 align='center'><b><font color='green' size='4'>Collage Name:</font><font color='orange'>"+collagename+"</font><h2>");

String collageid="";

/*Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@192.168.0.191:1521:orcl","scott","tiger");
Statement st1=con.createStatement();*/

try
	{

               rs1=st.executeQuery("select collageid from collage_det where collagename='"+collagename+"'");
               if(rs1.next())
	{
               collageid=rs1.getString(1);
               System.out.println("Collage Id in collage detail :"+collageid);
	}
               rs=st.executeQuery("select * from course_det where collageid='"+collageid+"'");
	
     %>
     
<table border="1" cellpadding="1" cellspacing="1" width="788" height="110">    
<tr>
<td width="109" height="55">
  <p align="center"><b>Course Name</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>No of Seats</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>Duration of Course</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>fee Details</b></p>
</td>
<td width="109" height="55">
  <p align="center"><b>course Starting Date</b></p>
</td>
</tr>  

<%
while(rs.next())
	{	
                  %>
 <tr>	
           <td width="109" height="55">
           <p align="center">
	   <b><%=rs.getString(3)%></p>

	  </td>
	  <td width="109" height="55">  <p align="center">
 
	   <b><%=rs.getString(4)%></p>
	  </td>
	  <td width="109" height="55">  <p align="center">
 
	   <b><%=rs.getInt(5)%></p>
	  </td>
	   <td width="109" height="55"><p align="center">  
	   <b><%=rs.getDouble(6)%></p> 

	  </td>
	  <td width="109" height="55">  <p align="center">
	   <b><%=rs.getString(7)%></p> 
                   </td>
	   </tr> 
      <%}
	rs1.close();
	rs.close();
	st.close();
	
           }catch(Exception e){System.out.println("Exception ..."+e); }			

%>
