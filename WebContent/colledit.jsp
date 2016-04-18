<%@ include file="makecon.jsp" %>

<%@ page session="true"%>
<%     


    String st1=request.getParameter("cid");
	String st2=request.getParameter("cname");
	String st4=request.getParameter("cadd");	
	String st3=request.getParameter("cloc");
	
	String st5=request.getParameter("wc");
    String st6=request.getParameter("abc");
	String st7=request.getParameter("estdate");


%>



<%!  	PreparedStatement ps=null;
%>
<% 



	
 	ps=con.prepareStatement("update collage_det set  collagename=?,collagelocation=?,collageaddress=?,webaddress=?,aboutcollage=?,establisheddate=? where  collageid="+st1);
	

    ps.setString(1,st2);
	ps.setString(2,st3);
	ps.setString(3,st4);
	ps.setString(4,st5);
	ps.setString(5,st6);
	ps.setString(6,st7);




    
    
	int j=ps.executeUpdate();
		if (j>0)
		{%>             
			                               
  			<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b><font color="green" size="4"> College Details Updated Successfully</font></b>
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
<p align="center"><a href="edu_college.jsp"><font color="red">Back</font></a></p>
