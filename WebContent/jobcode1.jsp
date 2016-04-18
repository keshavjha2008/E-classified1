<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>



<script type="text/javascript">
function emp()
{
	if(jobcodedelete.textfield1.value != ""){
		  var re = /^-?\d\d*$/;
		  if (!re.test(jobcodedelete.textfield1.value)) { 
			    alert("Please enter Integer number only");
			    jobcodedelete.textfield1.focus() ;
			    return false;
			} }
}

</script>
</HEAD>
<BODY>

 

<form name="jobcodedelete" action="jobcode.jsp" method="post" onsubmit="return emp();">
 
  
  

           
          <p align="center">   <font color="orange" size="5">U
            want to Delete a Record</font></p> 
            
            <table align="center">
            
            <tr>
            <td>
             <font color="green">Enter Job Code</font><font color="red">*</font> 
            </td>
            <td> 
                <input type="text" name="textfield1" size="20" tabindex="1" required>
             </td>
             </tr>
             </table>
             
             
            <p align="center"><input type="submit" name="Submit" value="Delete" onClick="return enter()" tabindex="2">
             </p>
             
             
             </form>
             </BODY>
             </HTML>