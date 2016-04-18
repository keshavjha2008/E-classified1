<%@ include file="makecon.jsp" %>

<%@ page session="true"%>

<%  
	int coid=Integer.parseInt(request.getParameter("cid")); 
	int uid=Integer.parseInt(request.getParameter("uniname"));
	String coname=request.getParameter("cname");
	String coloc=request.getParameter("cloc");	
	String coadd=request.getParameter("cadd");
	String webco=request.getParameter("wc");
	String aboutco=request.getParameter("abc");	
	String estco=request.getParameter("estdate");
%>
<%! PreparedStatement ps1=null;%>

<%  try
	{
	ps1=con.prepareStatement("insert into collage_det values(?,?,?,?,?,?,?,?)");
	ps1.setInt(1,coid);
	ps1.setInt(2,uid);
	ps1.setString(3,coname);
	ps1.setString(4,coadd);
	ps1.setString(5,coloc);
	ps1.setString(6,webco);
	ps1.setString(7,aboutco);
	ps1.setString(8,estco);

	int k=ps1.executeUpdate();
	if (k>0)
                    {
                     out.println("<h1><font color='orange' size='5'>College is Added to the University list</h1>");
	    }
	else
                    {
                     out.println("<h1><font color='orange' size='5'>Failed to add to the universities list</h1>");
	    }
 	}catch(Exception e){System.out.println("Exception ..."+e);}	
%>


<p align="center"><a href="edu_college.jsp"><font color="red">Back</font></a></p>