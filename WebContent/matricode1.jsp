<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>Untitled Document</TITLE>
<META http-equiv=Content-Type content="text/html; charset=iso-8859-1">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>



<script type="text/javascript">
function emp()
{	
	if(matricodedelete.t9.value != ""){
		  var re = /^-?\d\d*$/;
		  if (!re.test(matricodedelete.t9.value)) { 
			    alert("Please enter Integer number only");
			    matricodedelete.t9.focus() ;
			    return false;
			} 
		  if(matricodedelete.t9.value.length != 10){
			  alert("Please enter 10 digits only");
			  matricodedelete.t9.focus() ;
			    return false;
		  }
	  }
   }

</script>
</HEAD>
<BODY>

 

<form name="matricodedelete" action="matricode.jsp" method="post" onsubmit="return emp();">
 
  
  

           
          <p align="center">   <font color="orange" size="5">U
            want to Delete a Record</font></p> 
            
            <table align="center">
            
            <tr>
            <td>
             <font color="green">Enter Contact Number</font><font color="red">*</font> 
            </td>
            <td> 
                <input type="text" name="t9" size="20" tabindex="1" required>
             </td>
             </tr>
             </table>
             
             
            <p align="center"><input type="submit" name="Submit" value="Delete" onClick="return enter()" tabindex="2">
             </p>
             
             
             </form>
             </BODY>
             </HTML>