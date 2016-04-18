<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>


<script type="text/javascript">
function emp()
{
	if(jobcode11.textfield6.value != ""){	  
		  if (isNaN(jobcode11.textfield6.value)) { 
			    alert("Please enter valid number");
			    jobcode11.textfield6.focus() ;
			    return false;
			} 	
	  }
	if(jobcode11.textfield7.value != ""){
		  var re = /^-?\d\d*$/;
		  if (!re.test(jobcode11.textfield7.value)) { 
			    alert("Please enter Integer number only");
			    jobcode11.textfield7.focus() ;
			    return false;
			} }
	if(jobcode11.textfield9.value != ""){	 
		var re = /^\d{1,2}\/\d{1,2}\/\d{4}$/;
	if(!re.test(jobcode11.textfield9.value)){
		alert("Invalid date format");
		jobcode11.textfield9.focus();
		return false;
	}
}
	if(jobcode11.textfield10.value != ""){	 
		var re = /^\d{1,2}\/\d{1,2}\/\d{4}$/;
	if(!re.test(jobcode11.textfield10.value)){
		alert("Invalid date format");
		jobcode11.textfield10.focus();
		return false;
	}
}
   }
</script>

</HEAD>
<BODY text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0>

<%@ include file="makecon.jsp" %>


<%!  	
	ResultSet rs = null;
%>
<%! int jcode;%>
<%! String strr;%> 
<% try
	{
 	rs=st.executeQuery("select max(job_code) from jobs");
	if(rs.next())
		{
		
		jcode=rs.getInt(1)+1;
		System.out.println("MaxJcode:"+jcode);
		
		}
	else
		{
	   	jcode=500;
		System.out.println("Max:"+jcode);
		}

 }
 catch(Exception e)
	{}
finally
{
	rs.close();
	st.close();
	con.close();
}
 %>

 	
<TABLE cellSpacing=0 cellPadding=0 width=761 bgColor=#6699cc border=0>

  <TBODY>
  <TR>
    <TD vAlign=top height=321 width="784">
      <TABLE cellSpacing=0 cellPadding=0 width="784" border=0 height="353">
       <form name="jobcode11" method="post" action="jobadds.jsp" onsubmit="return emp();">
        <TBODY>
        <TR>
          <TD vAlign=top width=767 
    bgColor=#ffffff colspan="4" height="26">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=767 
    bgColor=#ffffff colspan="4" height="36">
            <p align="center">
              
            <p align="center">
              <b>
              <font color='orange' size='5'>
              Adding the New Jobs</font></b>
            <p align="center">&nbsp;</p>
              </TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="31"><span class="text">&nbsp;&nbsp;&nbsp; Job Code</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="31">
            <p align="center"><input name="textfield1" 
			value="<%=jcode%>" tabindex="1" ReadOnly 
           ></p>
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="31">&nbsp;Responsibilities 
                &nbsp;&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="31"><input name="textfield5" tabindex="5" required 
           >
          </TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="31"><span class="text">&nbsp;&nbsp;&nbsp; Job Name&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="31">
            <p align="center"><input name="textfield2" tabindex="2" required ></p>
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="31">&nbsp;Req. 
                Experience&nbsp;&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="31"><input name="textfield6" tabindex="6" required
           >
          </TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="26">&nbsp;&nbsp;&nbsp; Qualification &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            &nbsp;&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="26">
            <p align="center"><input name="textfield3" tabindex="3" required></p>
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="26">&nbsp;Vacancies&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="26"><input name="textfield7" tabindex="7" required
           >
          </TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="36">&nbsp;&nbsp;&nbsp; Required Skills&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="36">
            <p align="center"> 
                <input name="textfield4" tabindex="4" required></p>
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="36">&nbsp;Created 
                by &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
	          <TD vAlign=top width=190 
    bgColor=#ffffff height="36"><input name="textfield8"   tabindex="8" required   >
          </TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="38" rowspan="2">&nbsp;&nbsp;&nbsp; Created On&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="19">
            <p align="center"><input name="textfield9" tabindex="9" required>
            </p>
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="19">&nbsp;
          </TD></TR>
        <TR>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="19">
            <p align="center">(dd/mm/yyyy)</p>
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="19">&nbsp; Status</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="19"><input name="textfield11" tabindex="11" required
           >
          </TD>
        </TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="26">&nbsp;&nbsp;&nbsp;&nbsp; Last Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="26">
            <p align="center">&nbsp; 
                <input name="textfield10" tabindex="10" required >
            </p>
          </TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="26">&nbsp;&nbsp;Location</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="26">&nbsp;<input name="textfield12" tabindex="11" required
           ></TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="26">
            <p align="center">(dd/mm/yyyy)</p></TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="26">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="submit" name="Submit" value="Create" onfocus="emp()"tabindex="12">&nbsp;&nbsp;
            <input type="reset" name="Submit2" value="Reset" tabindex="13">
          </TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="26">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="26">&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="26">&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=134 
    bgColor=#ffffff height="25">&nbsp;</TD>
          <TD vAlign=top width=260 
    bgColor=#ffffff height="25">&nbsp;</TD>
          <TD vAlign=top width=177 
    bgColor=#ffffff height="25">&nbsp;</TD>
          <TD vAlign=top width=190 
    bgColor=#ffffff height="25">&nbsp;</TD></TR></TBODY>

</form>
</TABLE></TD></TR></TBODY></TABLE>


</BODY></HTML>
