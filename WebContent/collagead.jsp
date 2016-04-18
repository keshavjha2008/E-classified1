<%@page import="java.sql.*" %>
<html>
<body>
<form action="coursedet.jsp" method=post>
<%@ include file="makecon.jsp" %>
<%
String univerid=(String)session.getAttribute("uniid");
System.out.println("Session id"+univerid);
try{
String selectedname=request.getParameter("collageinfo");
System.out.println("Selected name"+selectedname);
String uniid="";
String collageid="";
PreparedStatement pst=null;
ResultSet rs1=null;



//Connection con=DBUtil.getConnection();
%>


<br>
<br>
 <table align="center">
 
 <tr>
 
 <td>
 <font color="green" size="5">
<strong>Select The College</strong></font> 
</td>

<td>
<SELECT id=select2  name ="collagename">


<%

if(selectedname.equals("Collage Addmission"))
{
pst=con.prepareStatement("select collageid,collagename  from collage_det where univid='"+univerid+"'");
rs1=pst.executeQuery();
while(rs1.next())
{
collageid=rs1.getString(1);
session.setAttribute("cid",new String(collageid));
System.out.println("Collage Id"+collageid);
//System.out.println("CollageName"+rs1.getString(2));
%>
  <OPTION selected><%=rs1.getString(2)%></OPTION> 
<%
}

}
else
{
 response.sendRedirect("results1.jsp");
}
rs1.close();
pst.close();
con.close();
}catch(Exception e){System.out.println("Exception ..."+e);}
%>

</select>
</td>
</tr>
</table>
 
<p align="center">
  <input type="submit" name="Submit" value="Submit" tabindex="9"/>
  </p>  
        
</form>
</body>
</html>