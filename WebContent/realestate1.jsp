<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>

<script type="text/javascript">
function emp()
{
	if(f1.t1.value != ""){
		  var re = /^-?\d\d*$/;
		  if (!re.test(f1.t1.value)) { 
			    alert("Please enter Integer number only");
			    f1.t1.focus() ;
			    return false;
			} }
	if(f1.t6.value != ""){	  
		  if (isNaN(f1.t6.value)) { 
			    alert("Please enter valid number");
			    f1.t6.focus() ;
			    return false;
			} 	
	  }
	if(f1.t8.value != ""){
		  var re = /^-?\d\d*$/;
		  if (!re.test(f1.t8.value)) { 
			    alert("Please enter Integer number only");
			    f1.t8.focus() ;
			    return false;
			} 
		  if(f1.t8.value.length != 10){
			  alert("Please enter 10 digits only");
			    f1.t8.focus() ;
			    return false;
		  }
	  }
   }

</script>


</HEAD>
<BODY>
<form action="realestate.jsp" method="post" name="f1" onsubmit="return emp();">
<P>&nbsp;</P>
<P align=center><FONT 
size=4><STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<font color="orange" size="5" face="Times New Roman"> Wel come To Real Estate</FONT></STRONG></FONT></P>
<DIV align=center>
<P align=center>
<TABLE border=1 cellPadding=1 cellSpacing=1 width="75%">
  
  <TR>
    <TD>
      <P align=left>Plot&nbsp;No</P></TD>
    <TD><INPUT id=text2 name=t1 required></TD></TR>
  <TR>
    <TD>
      <P align=left>Owners Name</P></TD>
    <TD><INPUT id=text3 name=t2 required></TD></TR>
  
  <TR>
    <TD>
      <P align=left>Facilities</P></TD>
    <TD><TEXTAREA id=TEXTAREA1 name=t3 required></TEXTAREA></TD></TR>
  <TR>
    <TD>
      <P align=left>Location</P></TD>
    <TD><INPUT id=text6 name=t4 required></TD></TR>
  <TR>
    <TD>
      <P align=left>Address</P></TD>
    <TD><INPUT id=text7 name=t5 required></TD></TR>
  <TR>
    <TD>
      <P align=left>Land in acrs/sqft</P></TD>
    <TD><INPUT id=text8 name=t6 required></TD></TR>
  <TR>
    <TD>City</TD>
    <TD><INPUT id=text9 name=t7 required></TD></TR>
  <TR>
    <TD>Contact Number</TD>
    <TD><INPUT id=text4 name=t8 required></TD></TR>
  <TR>
    <TD></TD>
    <TD></TD></TR>
  <TR>
    <TD></TD>
    <TD>&nbsp;&nbsp;&nbsp;<INPUT id=submit1 name=submit1 type=submit value="Add">&nbsp;&nbsp;&nbsp; 
<INPUT id=reset1 name=reset1 style="LEFT: 103px; TOP: 1px" type=reset value=" Clear ">&nbsp;</TD></TR>
  <TR>
    <TD></TD>
    <TD></TD></TR></TABLE></P></DIV>
</form>
</BODY>
</HTML>
<SCRIPT Language=VBScript>
