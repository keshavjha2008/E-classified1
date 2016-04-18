<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>
</HEAD>
<BODY>
<form action="realdetails.jsp" method="post">

<%@ include file="makecon.jsp" %>

<%@page session="true"%>
<%!  	ResultSet rs=null;
%>

<%  String city=request.getParameter("select1");%>
<%	System.out.println("city");%>
<% 
	try
	{
    	
	System.out.println("hai");
    	st=con.createStatement();
  	rs=st.executeQuery("select * from realestate where city = '"+city+"'");
	out.println("<h2 align='center'><font color='green' size='5'>welocome To</font><h2><h2><font color='red' size='4'>"+city);
	System.out.println("hai1");
	%>
<H1 align=center><font color="orange" size="5">

Real Estates</font></H1>
   <h2 align="center"><font color="green" size="4">

     Select The 
Location</font><SELECT id=select1 
name=select2 style="HEIGHT: 22px; WIDTH: 129px"> 

	<%
	while(rs.next())
	{
	
	// System.out.println("wel"+rs.getString(4));
	%>


<option><%=rs.getString(4)%></option>

<%}%>
</SELECT></H2>

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
