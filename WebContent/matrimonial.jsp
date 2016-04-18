<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>



<script type="text/javascript">


function emp()
{
	if(f1.t2.value != ""){
		  var re = /^-?\d\d*$/;
		  if (!re.test(f1.t2.value)) { 
			    alert("Please enter Integer number only");
			    f1.t2.focus() ;
			    return false;
			} }
	if(f1.t3.value != ""){
		var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		if (!re.test(f1.t3.value)) { 
		    alert("Please enter valid email id only");
		    f1.t3.focus() ;
		    return false;
		}		
	}
	if(f1.t4.value != ""){	 
		var re = /^\d{1,2}\/\d{1,2}\/\d{4}$/;
	if(!re.test(f1.t4.value)){
		alert("Invalid date format");
		f1.t4.focus();
		return false;
	}
}
	if(f1.t5.value != ""){	  
		  if (isNaN(f1.t5.value)) { 
			    alert("Please enter valid number");
			    f1.t5.focus() ;
			    return false;
			} 	
	  }
	if(f1.t9.value != ""){
		  var re = /^-?\d\d*$/;
		  if (!re.test(f1.t9.value)) { 
			    alert("Please enter Integer number only");
			    f1.t9.focus() ;
			    return false;
			} 
		  if(f1.t9.value.length != 10){
			  alert("Please enter 10 digits only");
			  f1.t9.focus() ;
			    return false;
		  }
	  }
   }

</script>

 
</HEAD>
<BODY>
<form action="matri.jsp" method="post" name="f1" onsubmit="return emp();">
<H1 align=center><font color="orange" size="5" face="Times New Roman"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
Wel come To Matrimonial </FONT>    </FONT>
<TABLE border=1 cellPadding=1 cellSpacing=1 style="HEIGHT: 441px; WIDTH: 452px" 
width="75%">
  
  <TR>
    <TD><STRONG>Name</STRONG></TD>
    <TD><INPUT id=text2 name=t1 required></TD></TR>
  <TR>
    <TD><STRONG>Age</STRONG></TD>
    <TD><INPUT id=text1 name=t2 required></TD></TR>
  <TR>
    <TD><STRONG>Mail ID</STRONG></TD>
    <TD><INPUT id=text3 name=t3 required></TD></TR>
  <TR>
    <TD><STRONG>Gender</STRONG></TD>
    <TD><SELECT id=select1 name=select1 
      style="HEIGHT: 22px; WIDTH: 89px"> <OPTION selected 
        value=Male>Male</OPTION><OPTION 
value=Female>Female</OPTION></SELECT></TD></TR>
  <TR>
    <TD><STRONG>Religion</STRONG></TD>
    <TD><SELECT id=select2 name=select2 
      style="HEIGHT: 22px; WIDTH: 89px"> <OPTION selected 
        value=Hindu>Hindu</OPTION><OPTION value=Muslim>Muslim</OPTION><OPTION 
        value=Christian>Christian</OPTION><OPTION 
      value=Others>Others</OPTION></SELECT></TD></TR>
  <TR>
    <TD><STRONG>Marital Status</STRONG></TD>
    <TD><SELECT id=select3 name=select3 
      style="HEIGHT: 22px; WIDTH: 89px"> <OPTION selected 
        value=Married>Married</OPTION><OPTION value="Un Married">Un 
        Married</OPTION></SELECT></TD></TR>
  <TR>
    <TD><STRONG>Date of Birth</STRONG></TD>
    <TD><INPUT id=text8 name=t4 required>(dd/mm/yyyy)</TD></TR>
  <TR>
    <TD><STRONG>Height</STRONG></TD>
    <TD><INPUT id=text8 name=t5 required>(5.7 
      ex: 5f,7inch)</TD></TR>

  <TR>
    <TD><STRONG>Occupation</STRONG></TD>
    <TD><INPUT id=text8 name=t6 required></TD></TR>
<!--  <TR>
    <TD><STRONG>Occupation</STRONG></TD>
    <TD><INPUT id=text9 name="occu" required></TD></TR>-->
  <TR>
    <TD><STRONG>Address</STRONG></TD>
    <TD><TEXTAREA id=TEXTAREA1 name=t7 style="HEIGHT: 38px; WIDTH: 154px" required></TEXTAREA></TD></TR>
  <TR>
    <TD><STRONG>Country</STRONG></TD>
    <TD><INPUT id=text11 name=t8 required></TD></TR>
  <TR>
    <TD><STRONG>Qualification</STRONG></TD>
    <TD><SELECT id=select4 name=select4 
      style="HEIGHT: 22px; WIDTH: 90px"> <OPTION selected 
        value=MCA>MCA</OPTION><OPTION value=MTech>MTech</OPTION><OPTION 
        value=MS>MS</OPTION><OPTION value=BTech>BTech</OPTION><OPTION 
        value=Others>Others</OPTION><OPTION value=""></OPTION></SELECT></TD></TR>
  <TR>
    <TD><STRONG>Contact Number</STRONG></TD>
    <TD><INPUT id=text13 name=t9 required></TD></TR>
  <TR>
    <TD></TD>
    <TD>
      <P>&nbsp;</P>
      <P>&nbsp; &nbsp;&nbsp;<INPUT id=submit1 name=submit1 style="BACKGROUND-COLOR: floralwhite" type=submit value="Add" onfocus="emp()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<INPUT id=reset1 name=reset1 style="BACKGROUND-COLOR: floralwhite" type=reset value=Reset></P></TD></TR></TABLE></H1>
</form>
</BODY>
</HTML>

