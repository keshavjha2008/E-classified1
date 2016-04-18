<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>
</HEAD>
<BODY>
<form action="matridetails.jsp" method="post">

<%@ include file="makecon.jsp" %>

<%@page session="true"%>
<%!  	ResultSet rs=null;
%>

<%  String cou=request.getParameter("select1");%>
<% 
	try
	{
    	
	System.out.println("hai");
    	st=con.createStatement();
  	rs=st.executeQuery("select * from matrimonial_det where country='"+cou+"'");
	if(rs.next())
	{
	out.println("<h2><font color='green' size='5'>welocome To<font color='orange' size='5'>"+cou+"</font> Matrimonials</font><h2>");

	%>

<H1 align=center><font color='orange' size='5'>
 Matrimonials</font></H1>
 
<H2 align="center"><font color='green' size='4'>
Select Gender</font>
  <SELECT id=select1 
name=select2 style="HEIGHT: 22px; WIDTH: 129px"> 

<option><%=rs.getString(4)%></option></SELECT></H2>



<P align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT id=submit1 name=submit1 type=submit value=Submit>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</P>

  
<%

}
}
catch(Exception e)
{}

%>
</form>
</BODY>
</HTML>
