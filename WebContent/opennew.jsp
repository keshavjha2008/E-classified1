<%@ include file="makecon.jsp" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=unicode">
<META content="MSHTML 6.00.2600.0" name=GENERATOR></HEAD>
<BODY bgColor=gainsboro>
<form action="opennewacc.jsp" method=post onsubmit="return pv(this)">

<script language="JavaScript">

  function pv(ThisForm)
  {

    if (ThisForm.name1.value == "")
    {
      alert("Please Enter Your \"NAME\".");
      ThisForm.name1.focus();
      return(false);
    }

    if (ThisForm.age.value == "")
    {
      alert("Please Enter Your \"AGE\".");
      ThisForm.ahage.focus();
      return(false);
    }

    if (ThisForm.ahocc.value == "")
    {
      alert("Please Enter Your \"OCCUPATION\".");
      ThisForm.ahocc.focus();
      return(false);
    }

    if (ThisForm.ahaddress.value == "")
    {
      alert("Please CONFIRM Your \"ADDRESS\".");
      ThisForm.ahaddress.focus();
      return(false);
    }

    if (ThisForm.ahphone.value == "")
    {
      alert("Please Enter Your \"PHONE NUMBER\".");
      ThisForm.ahphone.focus();
      return(false);
    }

    if (ThisForm.obalance.value == "")
    {
      alert("Please Enter Your \"OPENING BALANCE\".");
      ThisForm.obalance.focus();
      return(false);
    }

    if (ThisForm.ahemail.value == "")
    {
      alert("Please Enter Your \"E-MAIL ID\".");
      ThisForm.ahemail.focus();
      return(false);
    }



    if (ThisForm.wit_accno.value == "")
    {
      alert("Please Enter Your \"ENTER VALID REFERENCE ACCOUNT NO\".");
      ThisForm.wit_accno.focus();
      return(false);
    }
    if (ThisForm.wit_name.value == "")
    {
      alert("Please Enter Your \"ENTER REFERENCE NAME\".");
      ThisForm.wit_name.focus();
      return(false);
    }
	 if (ThisForm.wit_address.value == "")
    {
      alert("Please Enter Your \"REFERENCE PERSON ADDRESS\".");
      ThisForm.wit_address.focus();
      return(false);
    }
	}
//END OF NULL VALIDATION


//START VALIDATING CHARECTERS AND SPACE

  function cblur(ThisField)
  {
    cnt=0
    var val=ThisField.value
    len=val.length
    if(len !=0)
    {
      for(i=0;i<len;i++)
      {
        c=val.substr(i,1)
        if(c==" ") cnt++
      }
      if(cnt==len)
      {
        ThisField.value=""
        alert("Your Input Contains Only Space")
        ThisField.focus();
        return(false);
      }
    }
  r=0
  if((ThisField.name=="name1") ||(ThisField.name=="ahocc") ||(ThisField.name=="jahname")||(ThisField.name=="jahocc")||(ThisField.name=="wit_name"))
  {
    for(i=0;i<len;i++)
    {
      c=val.substr(i,1)
      if((c<"a"||c>"z")&&(c<"A"||c>"z")&&(c!=" ")&&(c!="."))
      {
        r=r+1
      }
    }
    if(r>0)
    {
      alert("Please Enter Only \"ALPHABETS\".")
      ThisField.value="";
      ThisField.focus();
      return(false);
    }
	}
//number
 if((ThisField.name=="age") || (ThisField.name=="ahphone") || (ThisField.name=="obalance") || (ThisField.name=="jahage")|| (ThisField.name=="wit_accno"))
  {
    for(i=0;i<len;i++)
    {
      c=val.substr(i,1)
      if((c<"0" ||c>"9") && (c!="-"))
      {
        r=r+1
      }
    }
    if(r>0)
    {
      alert("Enter Only \"NUMBERS\"!")
      ThisField.value= "";
      ThisField.focus();
      return(false);
    }
  }

    if(ThisField.name=="amail")
  {
    var l=ThisField.value.indexOf("@")
    var p=ThisField.value.indexOf(".")
    if((l==-1) || (p==-1))
    {
      alert("Please Enter Proper \"E-MAIL ID\".")
      ThisField.value= "";
      ThisField.focus();
      return(false);
    }
  }
  

/*  if(ThisField.name=="obalance")
  {
    var ob=ThisField.value
    if(ob<500)
    {
      alert("Minimum Balance is Rs \"500\".")
	  alert("value is**"+ob)
      ThisField.value= "";
      ThisField.focus();
      return(false);
    }
  }*/


//minimum balance checking

//end of min checking



}








  

</script>






<%!  	
	ResultSet rs = null;
	ResultSet rs1 = null;
	ResultSet rs2 = null;
%>
<%! String unid,colid,courseid;%>
<%! String strr;%> 
<%! int uniid,collid,coursid,jcode;%>
<% try
	{
 	rs=st.executeQuery("select max(universid) from univers_det");
	if(rs.next())
		{
		
		unid=rs.getString(1);
		uniid=Integer.parseInt(unid)+1;
		System.out.println("Max Univer id:"+uniid);
		
		}
	else
		{
	   	jcode=500;
		System.out.println("Max:"+uniid);
		}

}catch(Exception e){}
%>

<TABLE style="HEIGHT: 62px; LEFT: 25px; POSITION: absolute; TOP: 
11px; WIDTH: 464px; Z-INDEX: 100" cellSpacing=1 cellPadding=1 width=464 align=center bgColor=powderblue border=1>
  
  <TR>
    <TD>
      <P 
      align=left>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT 
      size=5>University Details</FONT></STRONG></P></TD></TR></TABLE>
<TABLE 
style="HEIGHT: 322px; LEFT: 80px; POSITION: absolute; TOP: 74px; WIDTH: 399px; Z-INDEX: 103" 
cellSpacing=1 cellPadding=1 width=399 align=center border=1 id=TABLE1>
  
  <TR>
    <TD><STRONG><FONT color=brown>University id</FONT></STRONG></TD>
    <TD><INPUT id=text1 name="uid" Onblur='cblur(name1)' value="uniid"><STRONG><FONT 
      color=brown>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      </FONT></STRONG></TD></TR>
  <TR>
    <TD><STRONG><FONT color=brown>University Name</FONT></STRONG></TD>
    <TD><INPUT id=text2 name="uname" Onblur='cblur(age)'><STRONG><FONT 
    color=brown></FONT></STRONG></TD></TR>
  <TR>
    <TD><STRONG><FONT color=brown>University Location</FONT></STRONG></TD>
    <TD><STRONG><FONT color=brown><INPUT id=text3 name="uloc"></FONT></STRONG></TD></TR>
  <TR>
    <TD><STRONG><FONT color=brown>University Address</FONT></STRONG></TD>
    <TD><STRONG><FONT color=brown><TEXTAREA id=TEXTAREA1 name=uaddress></TEXTAREA></FONT></STRONG></TD></TR>
  <TR>
    <TD><STRONG><FONT color=brown>Web Address of University</FONT></STRONG></TD>
    <TD><STRONG><FONT color=brown><INPUT id=text4 
    name="webadd" ></FONT></STRONG></TD></TR>
</table>


<TABLE style="HEIGHT: 62px; LEFT: 25px; POSITION: absolute; TOP: 
11px; WIDTH: 464px; Z-INDEX: 100" cellSpacing=1 cellPadding=1 width=464 align=center bgColor=powderblue border=1>
  
  <TR>
    <TD>
      <P 
      align=left>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT 
      size=5>College Details</FONT></STRONG></P></TD></TR></TABLE>

<TABLE 
style="HEIGHT: 322px; LEFT: 80px; POSITION: absolute; TOP: 74px; WIDTH: 399px; Z-INDEX: 103" 
cellSpacing=1 cellPadding=1 width=399 align=center border=1 id=TABLE1>
  
<% try
	{
 	rs=st.executeQuery("select max(collegeid) from college_det");
	if(rs.next())
		{
		
		colid=rs.getString(1);
		collid=Integer.parseInt(unid)+1;
		System.out.println("Max college id:"+collid);
		
		}
	else
		{
	   	collid=500;
		System.out.println("Max:"+collid);
		}
}catch(Exception e){}
%>
  <TR>
    <TD><STRONG><FONT color=brown>College id</FONT></STRONG></TD>
    <TD><INPUT id=text1 name="cid" Onblur='cblur(cid)' value="collid"><STRONG><FONT 
      color=brown>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      </FONT></STRONG></TD></TR>
  <TR>
    <TD><STRONG><FONT color=brown>University Id</FONT></STRONG></TD>
    <TD><INPUT id=text2 name="cname" Onblur='cblur(cname)'><STRONG><FONT 
    color=brown></FONT></STRONG></TD></TR>

  <TR>
    <TD><STRONG><FONT color=brown>College Name</FONT></STRONG></TD>
    <TD><INPUT id=text2 name="cname" Onblur='cblur(cname)'><STRONG><FONT 
    color=brown></FONT></STRONG></TD></TR>
  <TR>
    <TD><STRONG><FONT color=brown>College Location</FONT></STRONG></TD>
    <TD><STRONG><FONT color=brown><INPUT id=text3 name="cloc"></FONT></STRONG></TD></TR>
  <TR>
    <TD><STRONG><FONT color=brown>College Address</FONT></STRONG></TD>
    <TD><STRONG><FONT color=brown><TEXTAREA id=TEXTAREA1 name=caddress></TEXTAREA></FONT></STRONG></TD></TR>
  <TR>
    <TD><STRONG><FONT color=brown>Web Address of College</FONT></STRONG></TD>
    <TD><STRONG><FONT color=brown><INPUT id=text4 
    name="webadd" ></FONT></STRONG></TD></TR>
  <TR>
    <TD><STRONG><FONT color=brown>About College</FONT></STRONG></TD>
    <TD><STRONG><FONT color=brown><INPUT type=text 
    name="aboutc" ></FONT></STRONG></TD></TR>
  <TR>
    <TD><STRONG><FONT color=brown>Established Date of College</FONT></STRONG></TD>
    <TD><STRONG><FONT color=brown><INPUT type=text 
    name="estadate" ></FONT></STRONG></TD></TR>

</table>


<TABLE style="HEIGHT: 62px; LEFT: 25px; POSITION: absolute; TOP: 
11px; WIDTH: 464px; Z-INDEX: 100" cellSpacing=1 cellPadding=1 width=464 align=center bgColor=powderblue border=1>
  
  <TR>
    <TD>
      <P 
      align=left>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<STRONG>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT 
      size=5>Course Details</FONT></STRONG></P></TD></TR></TABLE>

<TABLE 
style="HEIGHT: 322px; LEFT: 80px; POSITION: absolute; TOP: 74px; WIDTH: 399px; Z-INDEX: 103" 
cellSpacing=1 cellPadding=1 width=399 align=center border=1 id=TABLE1>
  
<% try
	{
 	rs=st.executeQuery("select max(courseid) from course_det");
	if(rs.next())
		{
		
		courseid=rs.getString(1);
		coursid=Integer.parseInt(courseid)+1;
		System.out.println("Max course id:"+coursid);
		
		}
	else
		{
	  	coursid=500;
			System.out.println("Max course id:"+coursid);
		}
}catch(Exception e){}
%>

  <TR>
    <TD><STRONG><FONT color=brown>Course id</FONT></STRONG></TD>
    <TD><INPUT id=text1 name="coid"  value="coursid"><STRONG><FONT 
      color=brown>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      </FONT></STRONG></TD></TR>
  <TR>
    <TD><STRONG><FONT color=brown>College Id</FONT></STRONG></TD>
    <TD><INPUT id=text2 name="cname" Onblur='cblur(cname)'><STRONG><FONT 
    color=brown></FONT></STRONG></TD></TR>
  <TR>
    <TD><STRONG><FONT color=brown>Course Name</FONT></STRONG></TD>
    <TD><STRONG><FONT color=brown><INPUT id=text3 name="coname"></FONT></STRONG></TD></TR>
  <TR>
    <TD><STRONG><FONT color=brown>No of Seats</FONT></STRONG></TD>
    <TD><STRONG><FONT color=brown><INPUT type=text 
    name="noseat" ></FONT></STRONG></TD>
</TR>
  <TR>
    <TD><STRONG><FONT color=brown>Duration of Course</FONT></STRONG></TD>
    <TD><STRONG><FONT color=brown><INPUT id=text4 
    name="dcourse" ></FONT></STRONG></TD></TR>
  <TR>
    <TD><STRONG><FONT color=brown>Fees of Course</FONT></STRONG></TD>
    <TD><STRONG><FONT color=brown><INPUT type=text 
    name="fc" ></FONT></STRONG></TD></TR>
  <TR>
    <TD><STRONG><FONT color=brown>Course Starting  Date</FONT></STRONG></TD>
    <TD><STRONG><FONT color=brown><INPUT type=text 
    name="csdate" ></FONT></STRONG></TD></TR>

</table>

<P><INPUT id=submit1 style="BACKGROUND-COLOR: rosybrown; COLOR: darkblue; FONT-STYLE: normal; FONT-WEIGHT: bold; LEFT: 176px; POSITION: absolute; TOP: 685px; Z-INDEX: 108" type=submit value=Register name=submit1><INPUT id=reset1 style="BACKGROUND-COLOR: rosybrown; COLOR: darkblue; FONT-WEIGHT: bold; HEIGHT: 24px; LEFT: 282px; POSITION: absolute; TOP: 685px; WIDTH: 64px; Z-INDEX: 109" type=reset size=23 value=Reset name=reset1></P></FORM>
</BODY></HTML>
