<%@ include file="makecon.jsp" %>

<%@ page session="true"%>
<%     


    String st1=request.getParameter("t1");
	String st2=request.getParameter("t2");
	String st3=request.getParameter("t3");	
	String st4=request.getParameter("t4");
	
	String st5=request.getParameter("t5");
	String st6=request.getParameter("t6");
	String st7=request.getParameter("t7");
	String st8=request.getParameter("t8");
	
	String st9=request.getParameter("t9");
	String st10=request.getParameter("t10");
	String st11=request.getParameter("t11");	
	String st12=request.getParameter("t12");
	
	String st13=request.getParameter("t13");




%>



<%!  	PreparedStatement ps=null;
%>
<% 



	
 	ps=con.prepareStatement("update sunday_cinema set  theatename=?,location=?,address=?,moviename=?,movielanguage=?,showtime1=?,showtime2=?,showtime3=?,showtime4=?,contactno=?,hero=?,movietype=? where  theetorno="+st1);
	

    ps.setString(1,st2);
	ps.setString(2,st3);
	ps.setString(3,st4);
	ps.setString(4,st5);
	ps.setString(5,st6);
	ps.setString(6,st7);
	ps.setString(7,st8);
	ps.setString(8,st9);
	ps.setString(9,st10);
	ps.setString(10,st11);
	ps.setString(11,st12);
	ps.setString(12,st13);

    
    
	int j=ps.executeUpdate();
		if (j>0)
		{%>             
			                               
  			<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b><font color="green" size="4"> Sunday Cinema Details Updated Successfully</font></b>
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

<p align="center"><a href="cinemahome.jsp"><font color="red">Back</font></a></p>