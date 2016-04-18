

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
<script type="text/javascript">


function emp()
{
	if(jobcodeedit.t2.value != ""){
		  var re = /^-?\d\d*$/;
		  if (!re.test(jobcodeedit.t2.value)) { 
			    alert("Please enter Integer number only");
			    jobcodeedit.t2.focus() ;
			    return false;
			} }
	if(jobcodeedit.t3.value != ""){
		var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		if (!re.test(jobcodeedit.t3.value)) { 
		    alert("Please enter valid email id only");
		    jobcodeedit.t3.focus() ;
		    return false;
		}		
	}
	if(jobcodeedit.t4.value != ""){	 
		var re = /^\d{1,2}\/\d{1,2}\/\d{4}$/;
	if(!re.test(jobcodeedit.t4.value)){
		alert("Invalid date format");
		jobcodeedit.t4.focus();
		return false;
	}
}
	if(jobcodeedit.t5.value != ""){	  
		  if (isNaN(jobcodeedit.t5.value)) { 
			    alert("Please enter valid number");
			    jobcodeedit.t5.focus() ;
			    return false;
			} 	
	  }
	if(jobcodeedit.t9.value != ""){
		  var re = /^-?\d\d*$/;
		  if (!re.test(jobcodeedit.t9.value)) { 
			    alert("Please enter Integer number only");
			    jobcodeedit.t9.focus() ;
			    return false;
			} 
		  if(jobcodeedit.t9.value.length != 10){
			  alert("Please enter 10 digits only");
			  jobcodeedit.t9.focus() ;
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
<% jcodeedit=request.getParameter("t9");
%>

<%
	try {
	   ResultSet rs=st.executeQuery("select * from matrimonial_det where contactno="+jcodeedit);
	    if(rs.next())
	     {
		   //System.out.println("job edit1:"+rs.getInt(1)+"..");
		    
                jcode1=jcodeedit;
		
	    
%>
                	                                    
    
    
<h2 align="center"><font size="4" color="orange">Updating the Old Requirements</font></h2>
               
 

 
<form name="jobcodeedit" action="matriedit.jsp" method="post" onsubmit="return emp();">
   
         
      <table align="center">
        
        <tr>
           
   <td>Name</td>
   <td><input type="text" name="t1" value="<%=rs.getString(1)%>" size="20" tabindex="1" required>
   </td>
       
     <td>Age</TD>
     <TD>
    <input type="text" name="t2" value="<%=rs.getString(2)%>"  size="20" tabindex="5" required>
     </TD>
    
      </TR>
          
	
  <TR>
          
          <td>Mail ID</TD>
          
       <td><input type="text" name="t3"value="<%=rs.getString(3)%>"size="20" tabindex="2" required>
       </TD>
          
    <td>Gender</TD>
    
 <td>
                <input type="text" name="select1" size="20" value="<%=rs.getString(4)%>" tabindex="4" required>
          </TD> 
          
    </TR>


<tr>
<TD>Realigion</TD>
     
          <td>
           
            <input type="text" name="select2" value="<%=rs.getString(5)%>" size="20" tabindex="3" required>
          </TD>

      
          
          
      <td>Marital Status</TD>
         <td>
          <input type="text" name="select3" value="<%=rs.getString(6)%>"size="20" tabindex="6" required>
          </TD>
          
          
  </TR>
      
      
      <tr>
   <td>Date of Birth</TD>
    
    
   <td>
    <input type="text" name="t4" value="<%=rs.getString(7)%>"size="20" tabindex="7" required>
          </TD> 
         
         
    <td>Height</TD>
    
 <td>
    <input type="text"   name="t5" size="20" value="<%=rs.getString(8)%>" tabindex="8" required>
          </TD>
          
          
          
          </TR>
          
          
          
        <TR>
        
        
        <td>Occupation</TD>
           <td><input type="text" name="t6" value="<%=rs.getString(9)%>" size="20" tabindex="11" required>
          </TD>
          
          
           <td>Address</TD>
    
    
      <td><input type="text" name="t7" value="<%=rs.getString(10)%>"  size="20" tabindex="9" required>
           </td>
          
             
          </tr>
          
           
        
        <TR>
        
     <td>Country</TD>
    
 <td>
               <input type="text" name="t8" value="<%=rs.getString(11)%>" size="20" tabindex="10" required>
           </TD>
           
           
        
     <td>Qualification</TD>
    
 <td>
               <input type="text" name="select4" value="<%=rs.getString(12)%>" size="20" tabindex="10" required>
           </TD>
           </TR>
            
           <tr> 
            <td>Contact Number</TD>
    
 <td>
               <input type="text" name="t9" value="<%=jcode1%>" size="20" tabindex="10" ReadOnly>
           </TD>
            </tr>
            
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