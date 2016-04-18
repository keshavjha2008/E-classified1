<%@ include file="makecon.jsp" %>

<%@ page session="true"%>
<%     


    String st1=request.getParameter("courseid");
	String st2=request.getParameter("coursename");
	String st3=request.getParameter("noofseats");	
	String st4=request.getParameter("duration");
	String st5=request.getParameter("feedet");
	String st6=request.getParameter("coursestdate");



%>



<%!  	PreparedStatement ps=null;
%>
<% 



	
 	ps=con.prepareStatement("update course_det set  coursename=?,noofseat=?,durationofcourse=?,feedetail=?,courcestartdate=? where  courseid="+st1);
	

    ps.setString(1,st2);
	ps.setString(2,st3);
	ps.setString(3,st4);
	ps.setString(4,st5);
	ps.setString(5,st6);




    
    
	int j=ps.executeUpdate();
		if (j>0)
		{%>             
			                               
  			<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b><font color="green" size="4"> Course Details Updated Successfully</font></b>
          </TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;
          </TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         </p>

          </TD></TR>
			
		<%}
		else
		{
			out.println("Sorry Try Again");	
		}

%>

<p align="center"><a href="edu_course1.jsp"><font color="red">Back</font></a></p>