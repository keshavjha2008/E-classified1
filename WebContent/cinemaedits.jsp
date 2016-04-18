

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
<script type="text/javascript">


function emp()
{
	
	if(jobcodeedit.t11.value != ""){
		  var re = /^-?\d\d*$/;
		  if (!re.test(jobcodeedit.t11.value)) { 
			    alert("Please enter Integer number only");
			    jobcodeedit.t11.focus() ;
			    return false;
			} 
		  if(jobcodeedit.t11.value.length != 10){
			  alert("Please enter 10 digits only");
			  jobcodeedit.t11.focus() ;
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
	   ResultSet rs=st.executeQuery("select * from sunday_cinema where theetorno="+jcodeedit);
	    if(rs.next())
	     {
		   //System.out.println("job edit1:"+rs.getInt(1)+"..");
		    
                jcode1=jcodeedit;
		
	    
%>
                	                                    
    
    
<h2 align="center"><font size="4" color="orange">Updating the Old Requirements</font></h2>
               
 

 
<form name="jobcodeedit" action="cinemaedit.jsp" method="post" onsubmit="return emp();">
   
         
      <table align="center">
        
        <tr>
           
   <td>Theatre No</td>
   <td><input type="text" name="t1" value="<%=jcode1%>" size="20" tabindex="1" ReadOnly>
   </td>
       
       </tr>
       
       
       <tr>
       
     <td>Theatre Name</TD>
     <TD>
    <input type="text" name="t2" value="<%=rs.getString(2)%>"  size="20" tabindex="5">
     </TD>
    
      </TR>
          
	
  <TR>
          
          <td>Location</TD>
          
       <td><input type="text" name="t3"value="<%=rs.getString(3)%>"size="20" tabindex="2">
       </TD>
    
  </tr>
  
  <tr>  
          
    <td>Address</TD>
    
 <td>
                <input type="text" name="t4" size="20" value="<%=rs.getString(4)%>" tabindex="4">
          </TD> 
          
    </TR>


<tr>
<TD>Movie Name</TD>
     
          <td>
           
            <input type="text" name="t5" value="<%=rs.getString(5)%>" size="20" tabindex="3">
          </TD>
</tr>
<tr>
      
          
          
      <td>Movie Language</TD>
         <td>
          <input type="text" name="t6" value="<%=rs.getString(6)%>"size="20" tabindex="6">
          </TD>
          
          
  </TR>
      
      
      <tr>
   <td>Morning Show</TD>
    
    
   <td>
    <input type="text" name="t7" value="<%=rs.getString(7)%>"size="20" tabindex="7">
          </TD> 
    </tr>
    
    
    <tr>     
         
    <td>Noon Show</TD>
    
 <td>
    <input type="text"   name="t8" size="20" value="<%=rs.getString(8)%>" tabindex="8" >
          </TD>
          
      </tr>    
          
          

     
<tr>
   <td>First Show</TD>
    
    
   <td>
    <input type="text" name="t9" value="<%=rs.getString(9)%>"size="20" tabindex="7">
          </TD> 
   </tr>
   <tr>      
         
    <td>Second Show</TD>
    
 <td>
    <input type="text"   name="t10" size="20" value="<%=rs.getString(10)%>" tabindex="8" >
          </TD>
          
          
          
          </TR>
          <tr>
   <td>Phone Number</TD>
    
    
   <td>
    <input type="text" name="t11" value="<%=rs.getString(11)%>"size="20" tabindex="7">
          </TD> 
       </tr>
       <tr>  
         
    <td>Hero</TD>
    
 <td>
    <input type="text"   name="t12" size="20" value="<%=rs.getString(12)%>" tabindex="8" >
          </TD>
          
          
          
          </TR>
          
          
          <tr>
          <td>Movie Type</TD>
    
 <td>
    <input type="text"   name="t13" size="20" value="<%=rs.getString(13)%>" tabindex="8" >
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