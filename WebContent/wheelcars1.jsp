<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>
</HEAD>
<BODY>

<form action="wheeldetails.jsp" method="post">

<%@ include file="makecon.jsp" %>

<%@page session="true"%>
<%!  	ResultSet rs=null;
%>

<%  String model=request.getParameter("select1");%>

<% 
	try
	{
    	

    	st=con.createStatement();
  	rs=st.executeQuery("select * from wheels where carmodel = '"+model+"'");
	out.println("<h2><font color='green' size='5'>Welocome To Car Models:</font><font color='orange' size='4'>"+model);
	%>
	<H1 align=center><font color='orange' size='5'>
	Wheels Used Cars</font></H1>
   
<H2 align="center"><font color='green' size='4'>
 Select The 
 Used so far</font><SELECT id=select1 
name=select2 style="HEIGHT: 22px; WIDTH: 129px"> 
<%
	while(rs.next())
	{
	
	
	 
	%>



<option><%=rs.getString(4)%></option></H2>


<%}%>
</SELECT>
<P align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<INPUT id=submit1 name=submit1 type=submit value=Submit>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
</P>

  
<%


}
catch(Exception e)
{}

%>
</BODY>
</HTML>
