<%@ include file="makecon.jsp" %>

<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>

 
 <script type="text/javascript">


function emp()
{
  
   	if(f1.webadd.value != ""){
   		var re = /^(http[s]?:\/\/){0,1}(www\.){0,1}[a-zA-Z0-9\.\-]+\.[a-zA-Z]{2,5}[\.]{0,1}/;
   		if (!re.test(f1.webadd.value)) { 
   		    alert("Please enter correct URL");
   		    f1.webadd.focus();
   		    return false;
   		}
   		
   	}
   	return true;
   
 }
   

</script>
 
 
</HEAD>
<BODY>
<form action="edu_Adduni.jsp" method="post" name="f1" onsubmit="return emp();">

<%!  	
	ResultSet rs = null;
%>
<%! String strr;%> 
<%! int unid,colid,courseid;%>
<% try
	{
	String cmd="select max(univid) from univers_det";
	rs=st.executeQuery(cmd);
	if(rs.next())
		{
		unid=rs.getInt(1)+1;
		System.out.println("Max Univer id:"+unid);
		}
	else
		{
	   	unid=500;
		System.out.println("Max:"+unid);
		}

}catch(Exception e){System.out.println("Exception..."+e);}
%>

<P>
<TABLE  cellPadding=1 cellSpacing=1 style="HEIGHT: 34px; WIDTH: 192px" 
width="75%">
  <TR>
    <TD><font color="orange" size="5" face="Times New Roman"><STRONG>University 
      Details</STRONG></FONT></TD></TR></TABLE>
<TABLE border=1 cellPadding=1 cellSpacing=1 
style="HEIGHT: 34px; LEFT: 240px; POSITION: absolute; TOP: 100px; WIDTH: 200px; Z-INDEX: 101" width="75%">
  
</TABLE></P>
<TABLE border=1 cellPadding=1 cellSpacing=1 style="HEIGHT: 162px; WIDTH: 364px" 
width="75%">
  

  <TR>
    <TD>
      <P><FONT color=darkred><STRONG>University Id</STRONG></FONT></P></TD>
    <TD><INPUT id=text1 name=uniid value="<%=unid%>" readonly="readonly"></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG>University Name</STRONG></FONT></TD>
    <TD><INPUT id=text2 name="uniname" required></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG>University Location</STRONG></FONT></TD>
    <TD><INPUT id=text3 name="uniloc" required></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG>University Address</STRONG></FONT></TD>
    <TD><INPUT id=text4 name="uniadd" required></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG>Web Address of 
    University</STRONG></FONT></TD>
    <TD><INPUT id=text5 name="webadd" required></TD></TR>

		<INPUT id=submit1 name=submit1 style="LEFT: 243px; POSITION: absolute; TOP: 300px; Z-INDEX: 112" type=submit value="Submit" >
		<INPUT id=reset1 name=reset1 style="LEFT: 358px; POSITION: absolute; TOP: 300px; Z-INDEX: 113" type=reset value="Reset">
	</TABLE>
 
 
 
 
</form>
</BODY>
</HTML>

