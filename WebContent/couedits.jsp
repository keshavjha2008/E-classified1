

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
<script type="text/javascript">
function emp()
{  
  if(jobcodeedit.noofseats.value != ""){
	  var re = /^-?\d\d*$/;
	  if (!re.test(jobcodeedit.noofseats.value)) { 
		    alert("Please enter Integer number only");
		    jobcodeedit.noofseats.focus() ;
		    return false;
		} 	
  }
  if(jobcodeedit.duration.value != ""){
	  var re = /^-?\d\d*$/;
	  if (!re.test(jobcodeedit.duration.value)) { 
		    alert("Please enter Integer number only");
		    jobcodeedit.duration.focus() ;
		    return false;
		} 	
  }
  if(jobcodeedit.feedet.value != ""){	  
	  if (isNaN(jobcodeedit.feedet.value)) { 
		    alert("Please enter valid number");
		    jobcodeedit.feedet.focus() ;
		    return false;
		} 	
  }
  if(jobcodeedit.coursestdate.value != ""){	 
		var re = /^\d{1,2}\/\d{1,2}\/\d{4}$/;
	if(!re.test(jobcodeedit.coursestdate.value)){
		alert("Invalid date format");
		jobcodeedit.coursestdate.focus();
		return false;
	}
}
}

</script>

</HEAD>
<BODY text=#000000  leftMargin=0 topMargin=0>

 <%@ include file="makecon.jsp" %>
 


<%!
	ResultSet rs=null;
%>
<%! int j;%>
<%! int jcodeedit;%>
<%! int jcode1;%>


<% System.out.println("welcome");%>
<% jcodeedit=Integer.parseInt(request.getParameter("courseid"));
%>

<%
	try {
	   ResultSet rs=st.executeQuery("select * from course_det where courseid="+jcodeedit);
	    if(rs.next())
	     {
		   //System.out.println("job edit1:"+rs.getInt(1)+"..");
		    
                jcode1=jcodeedit;
		
	    
%>
                	                                    
    
    
<h2 align="center"><font size="4" color="orange">Updating the Old Requirements</font></h2>
               
 

 
<form name="jobcodeedit" action="courseedit.jsp" method="post" onsubmit="return emp();">
   
         
      <table align="center">
        
        <tr>
           
   <td>Course Id</td>
   <td><input type="text" name="courseid" value="<%=jcode1%>" size="20" tabindex="1" ReadOnly>
   </td>
       </tr>
       
       <tr>
     <td>Course Name</TD>
     <TD>
    <input type="text" name="coursename" value="<%=rs.getString(3)%>"  size="20" tabindex="5" required>
     </TD>
    
      </TR>
          
	
  <TR>
          
          <td>No of seats</TD>
          
       <td><input type="text" name="noofseats"value="<%=rs.getString(4)%>"size="20" tabindex="2" required>
       </TD>
     
     </tr>
     <tr>
          
    <td>Duration of Course</TD>
    
 <td>
                <input type="text" name="duration" size="20" value="<%=rs.getString(5)%>" tabindex="4" required>
          </TD> 
          
    </TR>


<tr>
<TD>Fees Details</TD>
     
          <td>
           
            <input type="text" name="feedet" value="<%=rs.getString(6)%>" size="20" tabindex="3" required>
          </TD>

    </tr>  
          
       <tr>   
      <td>Course  Starting Date</TD>
         <td>
          <input type="text" name="coursestdate" value="<%=rs.getString(7)%>"size="20" tabindex="6" required>
          </TD>
          
          
  </TR>
      
     

     

            
     </table>
     <table align="center">     
                  
  <tr>
            <td>
            <input type="submit" name="Submit" value="Update" tabindex="12" required> 
             
          </TD>
          
   </tr>       
           </table>
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