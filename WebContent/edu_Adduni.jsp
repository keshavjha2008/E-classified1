<%@ include file="makecon.jsp" %>

<%@ page session="true"%>

<%  int uid=Integer.parseInt(request.getParameter("uniid")); 
	String uname=request.getParameter("uniname");
	String uloc=request.getParameter("uniloc");	
	String uadd=request.getParameter("uniadd");
	String webw=request.getParameter("webadd");
	
%>
<%! PreparedStatement ps=null;%>
<%  try
	{
 	ps=con.prepareStatement("insert into univers_det values(?,?,?,?,?)");
	ps.setInt(1,uid);
	ps.setString(2,uname);
	ps.setString(3,uloc);
	ps.setString(4,uadd);
	ps.setString(5,webw);
	int j=ps.executeUpdate();
	if (j>0)
                    {
                     out.println("<h1><font color='orange' size='5'>University is Added to the list</font></h1>");
                    // out.println("<h1><font color='red' size='4'><a href='edu_test1.jspl'>Back</a></font></h1>"); 
	    }
	else
                    {
                     out.println("<h1>Failed to add to the universities list</h1>");
	    }
 	}catch(Exception e){System.out.println("Exception ..."+e);}	
%>

<p align="center"><a href="edu_test1.jsp"><font color="red">Back</font></a></p>