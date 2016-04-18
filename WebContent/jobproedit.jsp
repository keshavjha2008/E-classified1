<%@ include file="makecon.jsp" %>

<%@ page session="true"%>
<%     


    int it1=Integer.parseInt(request.getParameter("textfield1"));
	String st2=request.getParameter("textfield2");
	String st3=request.getParameter("textfield3");	
	String st4=request.getParameter("textfield4");
	String st5=request.getParameter("textfield5");
	String st6=request.getParameter("textfield6");
	String st7=request.getParameter("textfield7");
	String st8=request.getParameter("textfield8");
	String st9=request.getParameter("textfield9");	
	String st10=request.getParameter("textfield10");	
	String st11=request.getParameter("textfield11");
	String st12=request.getParameter("textfield12");
%>



<%!  	PreparedStatement ps=null;
%>
<% 



	
 	ps=con.prepareStatement("update jobs set  job_name=?,quali_req=?,skill_req=?,resp_req=?,exp_req=?,vac_open=?,createdby=?,createdon=?,lastdate=?,status=?,location=? where  job_code="+it1);
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
    
	int j=ps.executeUpdate();
		if (j>0)
		{%>             
			                               
  			<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b><font color="green" size="4"> Job Details Updated Successfully</font></b>
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

<p align="center"><a href="jobprojob.jsp"><font color="red">Back</font></a></p>