<%@ include file="makecon.jsp" %>

<%@ page session="true"%>
<%     


    String st1=request.getParameter("t1");
	String st2=request.getParameter("t2");
	String st3=request.getParameter("t3");	
	String st4=request.getParameter("t4");
	
	String st5=request.getParameter("t5");
	int it6 = Integer.parseInt(request.getParameter("t6"));
	int it7 = Integer.parseInt(request.getParameter("t7"));
	String st8=request.getParameter("t8");
	
	String st9=request.getParameter("t9");


%>



<%!  	PreparedStatement ps=null;
%>
<% 



	
 	ps=con.prepareStatement("update rentals set  ownersname=?,facilities=?,location=?,address=?,rent=?,adavance=?,city=?,contactno=? where  houseno="+st1);
	

    ps.setString(1,st2);
	ps.setString(2,st3);
	ps.setString(3,st4);
	ps.setString(4,st5);
	ps.setInt(5, it6);
	ps.setInt(6, it7);
	ps.setString(7,st8);
	ps.setString(8,st9);


    
    
	int j=ps.executeUpdate();
		if (j>0)
		{%>             
			                               
  			<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b><font color="green" size="4"> Rental Details Updated Successfully</font></b>
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
<p align="center"><a href="rentalhome.jsp"><font color="red">Back</font></a></p>
