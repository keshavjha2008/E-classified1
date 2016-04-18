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
	if(f1.t11.value != ""){
		  var re = /^-?\d\d*$/;
		  if (!re.test(f1.t11.value)) { 
			    alert("Please enter Integer number only");
			    f1.t11.focus() ;
			    return false;
			} 
		  if(f1.t11.value.length != 10){
			  alert("Please enter 10 digits only");
			  f1.t11.focus() ;
			    return false;
		  }
	  }
}
</script>
</HEAD>
<BODY>
<form action="cinemas.jsp" method="post" name="f1" onsubmit="return emp();">
<H1 align=center><font color="orange" size="5" face="Times New Roman"> Welcome To Sunday Cinema</FONT></H1>
<P align=center >
<TABLE border=1 cellPadding=1 cellSpacing=1 style="HEIGHT: 344px; WIDTH: 413px" 
width="75%">
  
  <TR>
    <TD><STRONG>Theatre No</STRONG></TD>
    <TD><INPUT id=text2 name=t1 required></TD></TR>
  <TR>
    <TD><STRONG>Theatre Name</STRONG></TD>
    <TD><INPUT id=text1 name=t2 required></TD></TR>
  <TR>
    <TD><STRONG>Location</STRONG></TD>
    <TD><INPUT id=text3 name=t3 required></TD></TR>
  <TR>
    <TD><STRONG>Address</STRONG></TD>
    <TD><INPUT id=text4 name=t4 required></TD></TR>
  <TR>
    <TD><STRONG>Movie Name</STRONG></TD>
    <TD><INPUT id=text5 name=t5 required></TD></TR>
  <TR>
    <TD><STRONG>Movie Language</STRONG></TD>
    <TD><INPUT id=text6 name=t6 required></TD></TR>
  <TR>
    <TD><STRONG>Morning Show</STRONG></TD>
    <TD><INPUT id=text7 name=t7 required></TD></TR>
  <TR>
    <TD><STRONG>Noon Show</STRONG></TD>
    <TD><INPUT id=text8 name=t8></TD></TR>
  <TR>
    <TD><STRONG>First Show</STRONG></TD>
    <TD><INPUT id=text9 name=tt9 required></TD></TR>
  <TR>
    <TD><STRONG>Second Show</STRONG></TD>
    <TD><INPUT id=text10 name=t10 required></TD></TR>
  <TR>
    <TD><STRONG>Phone Number</STRONG></TD>
    <TD><INPUT id=text11 name=t11 required></TD></TR>
  <TR>
    <TD><STRONG>Hero</STRONG></TD>
    <TD><INPUT id=text12 name=t12 required></TD></TR>
  <TR>
    <TD><STRONG>Movie Type</STRONG></TD>
    <TD><INPUT id=text13 name=t13 required></TD></TR>
  <TR>
    <TD></TD>
    <TD>
      <P>&nbsp;</P>
      <P><INPUT id=submit1 name=submit1 style="BACKGROUND-COLOR: floralwhite" type=submit value="Add" onfocus="emp()">&nbsp;&nbsp;&nbsp;&nbsp; 
<INPUT id=reset1 name=reset1 style="BACKGROUND-COLOR: floralwhite" type=reset value=Reset></P></TD></TR></TABLE></P>
</form>
</BODY>
</HTML>

