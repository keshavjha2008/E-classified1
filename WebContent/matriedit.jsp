<%@ include file="makecon.jsp" %>

<%@ page session="true"%>
<%     


    String st1=request.getParameter("t1");
	String st2=request.getParameter("t2");
	String st3=request.getParameter("t3");	
	String st4=request.getParameter("select1");
	
	String st5=request.getParameter("select2");
	String st6=request.getParameter("select3");
	String st7=request.getParameter("t4");
	String st8=request.getParameter("t5");
	
	String st9=request.getParameter("t6");	
	String st10=request.getParameter("t7");	
	String st11=request.getParameter("t8");
	String st12=request.getParameter("select4");
	
	String st13=request.getParameter("t9");
	
%>



<%!  	PreparedStatement ps=null;
%>
<% 



	
 	ps=con.prepareStatement("update matrimonial_det set  Name=?,age=?,mailid=?,gender=?,religion=?,martialstatus=?,dob=?,height=?,occupation=?,nameofres=?,country=?,eduqual=? where  contactno="+st13);
	

    ps.setString(1,st1);
	ps.setString(2,st2);
	ps.setString(3,st3);
	ps.setString(4,st4);
	ps.setString(5,st5);
	ps.setString(6,st6);
	ps.setString(7,st7);
	ps.setString(8,st8);
	ps.setString(9,st9);
	ps.setString(10,st10);
    ps.setString(11,st11);
    ps.setString(12,st12);
    
    
	int j=ps.executeUpdate();
		if (j>0)
		{%>             
			                               
  			<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b><font color="green" size="4"> Matrimonial Details Updated Successfully</font></b>
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


<p align="center"><a href="matrihome.jsp"><font color="red">Back</font></a></p>