<%@ include file="makecon.jsp" %>


<%@ page session="true"%>

<%  
	int coursid=Integer.parseInt(request.getParameter("courseid")); 
	int colid=Integer.parseInt(request.getParameter("collegeid")); 
	String coursename=request.getParameter("coursename");
	int noofseats=Integer.parseInt(request.getParameter("noofseats"));	
	int dur=Integer.parseInt(request.getParameter("duration"));
	double fee=Double.parseDouble(request.getParameter("feedet"));
	String cstdate=request.getParameter("coursestdate");
%>
<%! PreparedStatement ps1=null;%>

<%  try{
		ps1=con.prepareStatement("insert into course_det values(?,?,?,?,?,?,?)");
		ps1.setInt(1,coursid);
		ps1.setInt(2,colid);
		ps1.setString(3,coursename);
		ps1.setInt(4,noofseats);
		ps1.setInt(5,dur);
		ps1.setDouble(6,fee);
		ps1.setString(7,cstdate);
		int x=ps1.executeUpdate();
		if (x>0)	out.println("<h1><font color='orange' size='5'>Course is Added to the College list</h1>");
			else    out.println("<h1><font color='orange' size='5'>Failed to add to the College list</h1>");
		}catch(Exception e){System.out.println("Exception ..."+e);}	
%>

<p align="center"><a href="edu_course1.jsp"><font color="red">Back</font></a></p>