<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>



<script language="JavaScript">
  
function valid(ThisForm)
 {
      
 if(ThisForm.username.value=="") 
    {
     alert("Enter User Name") ; 
      return false;
    }
 
  if(ThisForm.password.value=="") 
    {
     alert("Enter password");
     return false;
    }
 
 }    

</script>
 
</HEAD>
 
<BODY>
<form action="adminlogin.jsp" method="post" onSubmit="return valid(this)" target="_top">
<P>&nbsp;</P>
<P align=center>&nbsp; <STRONG><font color='orange' size='5'>
Welcome To Administrator Login Page</font></STRONG></P>
<P align=center>&nbsp;</P>
<P align=center>
<TABLE border=1 cellPadding=3 cellSpacing=2 style="HEIGHT: 98px; WIDTH: 319px" 
width="75%">
  
  <TR>
    <TD><STRONG>User Name&nbsp;&nbsp;&nbsp;&nbsp; </STRONG></TD>
    <TD><INPUT id=text1 name="username"></TD></TR>
  <TR>
    <TD><STRONG>Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      </STRONG></TD>
    <TD><INPUT type="password" name="password" style="LEFT: 216px; TOP: 173px"></TD></TR>
  <TR>
    <TD></TD>
    <TD>&nbsp; <INPUT id=submit1 name=submit1 style="BACKGROUND-COLOR: lavenderblush" type=submit value="Sign In">&nbsp;&nbsp;&nbsp;<INPUT id=reset1 name=reset1 style="BACKGROUND-COLOR: lavenderblush; LEFT: 62px; TOP: 2px" type=reset value=Reset></TD></TR></TABLE></P>
<P align=center>&nbsp;</P>
<P align=center>&nbsp;</P>
<P align=center>&nbsp;</P>

</form>

</BODY>
</HTML>

