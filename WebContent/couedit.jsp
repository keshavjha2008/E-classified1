<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
<script type="text/javascript">
function emp()
{  
  if(jobcodeedit1.courseid.value != ""){
	  var re = /^-?\d\d*$/;
	  if (!re.test(jobcodeedit1.courseid.value)) { 
		    alert("Please enter Integer number only");
		    jobcodeedit1.courseid.focus() ;
		    return false;
		} 	
  }
}
</script>

</HEAD>
<BODY text=#000000 leftMargin=0 topMargin=0>
<TABLE cellSpacing=0 cellPadding=0 width=780 border=0>

<form name="jobcodeedit1" action="couedits.jsp" method="post" onsubmit="return emp();">
  <TBODY>
  <TR>
    <TD vAlign=top height=321>
      <TABLE cellSpacing=0 cellPadding=0 width="784" border=0>
        <TBODY>
        <TR>
          <TD vAlign=top width=76 
    bgColor=#ffffff rowspan="12">&nbsp;</TD>
          <TD vAlign=top width=689 
    bgColor=#ffffff>&nbsp;</TD></TR>
    
    
    
        <TR>
          <TD vAlign=top width=689 
    bgColor=#ffffff> <b><font size="4" color="orange">You want to Edit a Record</font></b></TD></TR>
            
            
            
        <TR>
          <TD vAlign=top width=689 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=689 
    bgColor=#ffffff>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </TD></TR>
        <TR>
          <TD vAlign=top width=689 
    bgColor=#ffffff>
            <p align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <font color="#A87DFF">Enter Course Id</font><font color="red">*</font> 
                <input type="text" name="courseid" size="20" tabindex="1" required>
            </p>
          </TD></TR>
        <TR>
          <TD vAlign=top width=689 
    bgColor=#ffffff>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </TD></TR>
        <TR>
          <TD vAlign=top width=689 
    bgColor=#ffffff>
            <p align="center">
            <input type="submit" name="Submit" value="Edit" tabindex="2">&nbsp;
            </p>
          </TD></TR>
          
          
          <!-- <tr>
          <td>
           <font size="4" color="red"><a href="jobprojob.htm">Back</a> </font>
          </td>
          </tr> -->
          
          
        <TR>
          <TD vAlign=top width=689 
    bgColor=#ffffff>
            <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
          </TD></TR>
        <TR>
          <TD vAlign=top width=689 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=689 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=689 
    bgColor=#ffffff>&nbsp;</TD></TR>
        <TR>
          <TD vAlign=top width=689 
    bgColor=#ffffff>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY>
</form>
</TABLE>
 
</BODY> </HTML>