
<%@ include file="makecon.jsp" %>

<%!int it1;%>
<%   
        System.out.println("welcome");
		//String s1=request.getParameter("textfield1");
		//it1=Integer.parseInt(request.getParameter("textfield1"));
		//System.out.println(s1);
		try{
			it1=Integer.parseInt(request.getParameter("textfield1"));
		//Integer i=new Integer(s1);
   //it1=i.intValue();
  // it1=Integer.parseInt(s1); 
		}catch(NumberFormatException e)
		{System.out.println("sss"+e);}

        System.out.println("sai"+it1);
	String st2=request.getParameter("textfield2");
	String st3=request.getParameter("textfield3");	
	String st4=request.getParameter("textfield4");
	
	String st5=request.getParameter("textfield5");
        System.out.println(it1);
        String it6=request.getParameter("textfield6");
        System.out.println(it1);
        String it7=request.getParameter("textfield7");
        System.out.println(it1);
	String st8=request.getParameter("textfield8");
	
		
	
	String st9=request.getParameter("textfield9");	
	String st10=request.getParameter("textfield10");	
	String st11=request.getParameter("textfield11");
	String st12=request.getParameter("textfield12");	
	
%>



<%! PreparedStatement ps=null;%>
<% 




try
	{
 	ps=con.prepareStatement("insert into jobs values(?,?,?,?,?,?,?,?,?,?,?,?)");

	ps.setInt(1,it1);

	ps.setString(2,st2);
	ps.setString(3,st3);
	ps.setString(4,st4);
	ps.setString(5,st5);

	ps.setString(6,it6);
	ps.setString(7,it7);

	ps.setString(8,st8);
	ps.setString(9,st9);
	ps.setString(10,st10);
	ps.setString(11,st11);
	ps.setString(12,st12);

	int j=ps.executeUpdate();
		if (j>0)
		{ %><TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b><font color='orange' size='5'>JOB Details Added Successfully</font></b>
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
<p>

          </TD></TR>
            
			                               
  			

	
		<%}
		else
		{%>
		<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b><font color='orange' size='5'>Sorry !Try Again</font></b>
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
<p align="center"><a href="jobprojob.jsp"><font color="red">Back</font></a></p>