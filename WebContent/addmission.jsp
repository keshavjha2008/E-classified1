<%@page import="java.sql.*" %>
<html>
<body>

<form action="collagead.jsp" method=post>
<%@ include file="makecon.jsp" %>

<%

try{

String uniname=request.getParameter("universityname");
System.out.println("University name"+uniname);
String uniid="";

//Connection con=DBUtil.getConnection();

PreparedStatement pst=con.prepareStatement("select univid  from univers_det where univname='"+uniname+"'");
ResultSet rs=pst.executeQuery();
if (rs.next())
 {
uniid=rs.getString(1);
session.setAttribute("uniid",new String(uniid));
System.out.println("Id of University"+uniid);

%>

<TABLE border=1 cellPadding=1 cellSpacing=1 
style="HEIGHT: 38px; LEFT: 232px; POSITION: absolute; TOP: 120px; Z-INDEX: 100" 
width="50%">
  
  <TR>
  
    <TD>
    <font color="green" size="5">Select Option</font>
    </TD>
    
    <TD>
           <SELECT id=select1 name="collageinfo"> 


        <OPTION selected>Collage Addmission</OPTION>
                 
		</SELECT>
	</TD>
	</TR>
	
	</TABLE>
	
	<p align="center">
	<INPUT id=submit1 name=submit1 style="LEFT: 287px; POSITION: absolute; TOP: 186px; Z-INDEX: 101" type=submit value=Submit>
</p>
<%
}
else
 {
 out.println("<h1> Invalid University Name</h1>");
}
}catch(Exception e){System.out.println("Exception ..."+e);}
%>
</form>
</body>
</html>