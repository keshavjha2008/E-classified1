

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
<script type="text/javascript">
function emp()
{
	if(jobcodeedit.textfield6.value != ""){	  
		  if (isNaN(jobcodeedit.textfield6.value)) { 
			    alert("Please enter valid number");
			    jobcodeedit.textfield6.focus() ;
			    return false;
			} 	
	  }
	if(jobcodeedit.textfield7.value != ""){
		  var re = /^-?\d\d*$/;
		  if (!re.test(jobcodeedit.textfield7.value)) { 
			    alert("Please enter Integer number only");
			    jobcodeedit.textfield7.focus() ;
			    return false;
			} }
	if(jobcodeedit.textfield9.value != ""){	 
		var re = /^\d{1,2}\/\d{1,2}\/\d{4}$/;
	if(!re.test(jobcodeedit.textfield9.value)){
		alert("Invalid date format");
		jobcodeedit.textfield9.focus();
		return false;
	}
}
	if(jobcodeedit.textfield10.value != ""){	 
		var re = /^\d{1,2}\/\d{1,2}\/\d{4}$/;
	if(!re.test(jobcodeedit.textfield10.value)){
		alert("Invalid date format");
		jobcodeedit.textfield10.focus();
		return false;
	}
}
   }
</script>


</HEAD>
<BODY text=#000000  leftMargin=0 topMargin=0>

 <%@ include file="makecon.jsp" %>


<%-- <%@page import="java.sql.*"%>
<%! Connection con=null; 
	Statement st=null;
  %> --%>

  
<%!
	ResultSet rs=null;
%>
<%! int j;%>
<%! int jcodeedit;%>
<%! int jcode1;%>



<% System.out.println("welcome");%>
<% jcodeedit=Integer.parseInt(request.getParameter("textfield1"));
%>

<%
	try {
	   ResultSet rs=st.executeQuery("select * from jobs where job_code="+jcodeedit);
	    if(rs.next())
	     {
		   System.out.println("job edit  1:"+rs.getInt(1)+"..");
		    
                jcode1=jcodeedit;
		
	    
%>
                	                                    
    
    
<h2 align="center"><font size="4" color="orange">Updating the Old Requirements</font></h2>
               
 

 
<form name="jobcodeedit" action="jobproedit.jsp" method="post" onsubmit="return emp();">
   
         
      <table align="center">
        
        <tr>
           
   <td>Job Code</td>
   <td><input type="text" name="textfield1" value="<%=jcode1%>" size="20" tabindex="1" ReadOnly>
   </td>
       
     <td>Responsibility</TD>
     <TD>
    <input type="text" name="textfield5" value="<%=rs.getString(5)%>"  size="20" tabindex="5">
     </TD>
    
      </TR>
          
	
  <TR>
          
          <td>Job Name</TD>
          
       <td><input type="text" name="textfield2"value="<%=rs.getString(2)%>"size="20" tabindex="2">
       </TD>
          
    <td>Required Skills</TD>
    
 <td>
                <input type="text" name="textfield4" size="20" value="<%=rs.getString(4)%>" tabindex="4">
          </TD> 
          
    </TR>


<tr>
<TD>Qualification</TD>
     
          <td>
           
            <input type="text" name="textfield3" value="<%=rs.getString(3)%>" size="20" tabindex="3">
          </TD>

      
          
          
      <td>Required Experience</TD>
         <td>
          <input type="text" name="textfield6" value="<%=rs.getString(6)%>"size="20" tabindex="6">
          </TD>
          
          
  </TR>
      
      
      <tr>
   <td>Vacancies </TD>
    
    
   <td>
    <input type="text" name="textfield7" value="<%=rs.getString(7)%>"size="20" tabindex="7">
          </TD> 
         
         
    <td>Created by</TD>
    
 <td>
    <input type="text"   name="textfield8" size="20" value="<%=rs.getString(8)%>" tabindex="8" >
          </TD>
          
          
          
          </TR>
          
          
          
        <TR>
        
        
        <td>Status</TD>
           <td><input type="text" name="textfield11" value="<%=rs.getString(11)%>" size="20" tabindex="11">
          </TD>
          
          
           <td>Created On</TD>
    
    
      <td><input type="text" name="textfield9" value="<%=rs.getString(9)%>"  size="20" tabindex="9">
           </td>
          
             
          </tr>
          
           
        
        <TR>
        
     <td>Last Date</TD>
    
 <td>
               <input type="text" name="textfield10" value="<%=rs.getString(10)%>" size="20" tabindex="10">
           </TD>
           
           
        
     <td>Location</TD>
    
 <td>
               <input type="text" name="textfield12" value="<%=rs.getString(12)%>" size="20" tabindex="10">
           </TD>
           </TR>
            
     </table>
     <table align="center">     
                  
  <tr>
            <td>
            <input type="submit" name="Submit" value="Update" tabindex="12"> 
             
          </TD>
          
   </tr>       
           </table>
           </form>
           </form>

	<%
	  	
	}
 	else
	{%>
<table>
	<TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=771 
    bgColor=#ffffff>
            <p align="center"><b>Sorry could not find the record</b>
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
              	 	
           	<%

	}
	}
	catch(Exception e) 
	 {	System.out.println("......."+e); }


%>
</BODY>
</HTML>