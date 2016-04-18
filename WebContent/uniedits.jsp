

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
<script type="text/javascript">


function emp()
{
  
   	if(jobcodeedit.webadd.value != ""){
   		var re = /^(http[s]?:\/\/){0,1}(www\.){0,1}[a-zA-Z0-9\.\-]+\.[a-zA-Z]{2,5}[\.]{0,1}/;
   		if (!re.test(jobcodeedit.webadd.value)) { 
   		    alert("Please enter correct URL");
   		 	jobcodeedit.webadd.focus();
   		    return false;
   		}   		
   	}
   	return true;
   
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
<% jcodeedit=Integer.parseInt(request.getParameter("uniid"));
%>

<%
	try {
	   ResultSet rs=st.executeQuery("select * from univers_det where univid="+jcodeedit);
	    if(rs.next())
	     {
		   //System.out.println("job edit1:"+rs.getInt(1)+"..");
		    
                jcode1=jcodeedit;
		
	    
%>
                	                                    
    
    
<h2 align="center"><font size="4" color="orange">Updating the Old Requirements</font></h2>
               
 

 
<form name="jobcodeedit" action="uniedit.jsp" method="post" onsubmit="return emp();">
   
         
      <table align="center">
        
        <tr>
           
   <td>University Id</td>
   <td><input type="text" name="uniid" value="<%=jcode1%>" size="20" tabindex="1" ReadOnly>
   </td>
       </tr>
       
       <tr>
     <td>University Name</TD>
     <TD>
    <input type="text" name="uniname" value="<%=rs.getString(2)%>"  size="20" tabindex="5" required>
     </TD>
    
      </TR>
          
	
  <TR>
          
          <td>University Location</TD>
          
       <td><input type="text" name="uniloc"value="<%=rs.getString(3)%>"size="20" tabindex="2" required>
     </td>
     </TR>
     
     <tr>     
    <td>University Address</TD>
    
 <td>
                <input type="text" name="uniadd" size="20" value="<%=rs.getString(4)%>" tabindex="4" required>
          </TD> 
          
    </TR>


<tr>
<TD>Web Address of University</TD>
     
          <td>
           
            <input type="text" name="webadd" value="<%=rs.getString(5)%>" size="20" tabindex="3" required>
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