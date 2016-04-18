<%@ include file="makecon.jsp" %>

<%@page session="true"%>


<% 
	String st1=request.getParameter("t1");
	String st2=request.getParameter("t2");	
	String st3=request.getParameter("t3");	
	String st4=request.getParameter("t4");	
	String st5=request.getParameter("t5");	
	String  it6=request.getParameter("t6");	
	String st7=request.getParameter("t7");	
	String st8=request.getParameter("t8");	

%>


<%! PreparedStatement ps=null;%>


<%
try
	{
 	ps=con.prepareStatement("insert into wheels values(?,?,?,?,?,?,?,?)");
	ps.setString(1,st1);
	ps.setString(2,st2);
	ps.setString(3,st3);
	ps.setString(4,st4);
	ps.setString(5,st5);
	ps.setString (6,it6);
	ps.setString(7,st7);
	ps.setString(8,st8);
	int j=ps.executeUpdate();
		if (j>0)
		{             
			out.println("<font color='orange' size='5'>Wheels Used Cars Details are Added</font>");
			
		}
		else
		{	out.println("<font color='orange' size='5'>Sorry</font>");
			ps.close();
		}
}
catch(Exception e)
{ 		
 System.out.println("error"+e);
}
finally
{
	ps.close();
	st.close();
	con.close();
}
%>
<p align="center"><a href="wheelshome.jsp"><font color="red">Back</font></a></p>