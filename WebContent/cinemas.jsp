<%@ include file="makecon.jsp" %>


<%@page session="true"%>


<% 
    String  it1=request.getParameter("t1");
	String st2=request.getParameter("t2");	
	String st3=request.getParameter("t3");	
	String st4=request.getParameter("t4");	
	String st5=request.getParameter("t5");	
	String st6=request.getParameter("t6");	
	String st7=request.getParameter("t7");	
	String st8=request.getParameter("t8");	
	String st9=request.getParameter("t9");	
	String st10=request.getParameter("t10");	
	String it11=request.getParameter("t11");	
	String st12=request.getParameter("t12");	
	String st13=request.getParameter("t13");	


%>


<%! PreparedStatement ps=null;%>


<%
try
	{
 	ps=con.prepareStatement("insert into sunday_cinema values(?,?,?,?,?,?,?,?,?,?,?,?,?)");

	ps.setString(1,it1);

	ps.setString(2,st2);
	ps.setString(3,st3);
	ps.setString(4,st4);
	ps.setString(5,st5);
	ps.setString(6,st6);
	ps.setString(7,st7);
	ps.setString(8,st8);
	ps.setString(9,st9);
	ps.setString(10,st10);
	ps.setString(11,it11);
	
	ps.setString(12,st12);
	ps.setString(13,st13);
	
	int j=ps.executeUpdate();
		if (j>0)
		{             
			out.println("<font color='orange' size='5'>Sunday Cinema Details are Added</font>");
			
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
<p align="center"><a href="cinemahome.jsp"><font color="red">Back</font></a></p>