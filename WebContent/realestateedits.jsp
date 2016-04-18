

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
<script type="text/javascript">


function emp()
{
	if(jobcodeedit.t1.value != ""){
		  var re = /^-?\d\d*$/;
		  if (!re.test(jobcodeedit.t1.value)) { 
			    alert("Please enter Integer number only");
			    jobcodeedit.t1.focus() ;
			    return false;
			} }
	if(jobcodeedit.t6.value != ""){	  
		  if (isNaN(jobcodeedit.t6.value)) { 
			    alert("Please enter valid number");
			    jobcodeedit.t6.focus() ;
			    return false;
			} 	
	  }
	
	if(jobcodeedit.t8.value != ""){
		  var re = /^-?\d\d*$/;
		  if (!re.test(jobcodeedit.t8.value)) { 
			    alert("Please enter Integer number only");
			    jobcodeedit.t8.focus() ;
			    return false;
			} 
		  if(jobcodeedit.t8.value.length != 10){
			  alert("Please enter 10 digits only");
			  jobcodeedit.t8.focus() ;
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
<%! String jcodeedit;%>
<%! String jcode1;%>


<% System.out.println("welcome");%>
<% jcodeedit=request.getParameter("t1");
%>

<%
	try {
	   ResultSet rs=st.executeQuery("select * from realestate where flotno="+jcodeedit);
	    if(rs.next())
	     {
		   //System.out.println("job edit1:"+rs.getInt(1)+"..");
		System.out.println("job edit1:"+rs.getString(1)+"..");
                jcode1=jcodeedit;
		
	    
%>
                	                                    
    
    
<h2 align="center"><font size="4" color="orange">Updating the Old Requirements</font></h2>
               
 

 
<form name="jobcodeedit" action="realestateedit.jsp" method="post" onsubmit="return emp();">
   
         
      <table align="center">
        
        <tr>
           
   <td>Flat No</td>
   <td><input type="text" name="t1" value="<%=jcode1%>" size="20" tabindex="1" ReadOnly>
   </td>
       
     <td>Owners Name</TD>
     <TD>
    <input type="text" name="t2" value="<%=rs.getString(2)%>"  size="20" tabindex="5" required>
     </TD>
    
      </TR>
          
	
  <TR>
          
          <td>Facilities</TD>
          
       <td><input type="text" name="t3"value="<%=rs.getString(3)%>"size="20" tabindex="2" required>
       </TD>
          
    <td>Location</TD>
    
 <td>
                <input type="text" name="t4" size="20" value="<%=rs.getString(4)%>" tabindex="4" required>
          </TD> 
          
    </TR>


<tr>
<TD>Address</TD>
     
          <td>
           
            <input type="text" name="t5" value="<%=rs.getString(5)%>" size="20" tabindex="3" required>
          </TD>

      
          
          
      <td>Land in acrs/sqft</TD>
         <td>
          <input type="text" name="t6" value="<%=rs.getString(6)%>"size="20" tabindex="6" required>
          </TD>
          
          
  </TR>
      
      
      <tr>
   <td>City</TD>
    
    
   <td>
    <input type="text" name="t7" value="<%=rs.getString(7)%>"size="20" tabindex="7" required>
          </TD> 
         
         
    <td>Contact Number</TD>
    
 <td>
    <input type="text"   name="t8" size="20" value="<%=rs.getString(8)%>" tabindex="8" required>
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