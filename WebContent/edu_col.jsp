<%@ include file="makecon.jsp" %>

<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>

<script type="text/javascript">


function emp()
{
	
  
  if(f1.wc.value != ""){	 
 		var re = /^(http[s]?:\/\/){0,1}(www\.){0,1}[a-zA-Z0-9\.\-]+\.[a-zA-Z]{2,5}[\.]{0,1}/;
 		if (!re.test(f1.wc.value)) { 
 		    alert("Please enter correct URL");
 		   f1.wc.focus() ;
 		    return false;
 		} 		
 	}
  if(f1.estdate.value != ""){	 
  		var re = /^\d{1,2}\/\d{1,2}\/\d{4}$/;
  	if(!re.test(f1.estdate.value)){
  		alert("Invalid date format");
  		f1.estdate.focus();
  		return false;
  	}
  }
  return true;
   }

</script>















</HEAD>
<BODY>
<form action="edu_Addcol.jsp" method=post name="f1" onsubmit="return emp();" >

<%!  	
	ResultSet rs = null;
	ResultSet rsuni = null;
%>
<%! String strr;%> 
<%! int unid,colid,courseid;%>
<% 
    Statement	unist=con.createStatement();
  	rsuni=unist.executeQuery("select univid,univname from univers_det");
	%>
<H4 align="left"><font color="green" size="4">Select The University:</font> <SELECT id=select1 
name=uniname style="HEIGHT: 22px; WIDTH: 129px"> 
<%
	while(rsuni.next())
	{%>


<option value='<%=rsuni.getInt(1)%>'><%=rsuni.getString(2)%></option>
 
<%}%>

</SELECT></H3>




<% try
	{
 	rs=st.executeQuery("select max(collageid) from collage_det");
	if(rs.next())
		{
		
		colid=rs.getInt(1)+1;
		System.out.println("Max college id:"+colid);
		
		}
	else
		{
	   	colid=500;
		System.out.println("Max:"+colid);
		}
}catch(Exception e){System.out.println("Exception..."+e);}
%>
 
 
  
  
<TABLE border=1 cellPadding=1 cellSpacing=1 align="center"
style="HEIGHT: 142px; LEFT: 150px; POSITION: absolute; TOP: 70px; WIDTH: 364px; Z-INDEX: 103" 
width="75%">
  
  <TR>
    <TD>
      <P><FONT color=darkred><STRONG>College Id</STRONG></FONT></P></TD>
    <TD><INPUT id=text1 name="cid" value="<%=colid%>" readonly="readonly"></TD></TR>
    
    
    
  <TR>
    <TD><FONT color=darkred><STRONG><FONT 
      color=darkred><STRONG>College</STRONG></FONT> Name</STRONG></FONT></TD>
    <TD><INPUT id=text2 name="cname" required></TD></TR>
    
    
    
  <TR>
    <TD><FONT color=darkred><STRONG><FONT 
      color=darkred><STRONG>College</STRONG></FONT> Address</STRONG></FONT></TD>
    <TD><INPUT id=text3 name="cadd" required></TD></TR>
    
    
    
  <TR>
    <TD><FONT color=darkred><STRONG><FONT color=darkred><STRONG><FONT 
      color=darkred><STRONG>College</STRONG></FONT> 
      Location</STRONG></FONT> </STRONG></FONT></TD>
    <TD><INPUT id=text4 name="cloc" required></TD></TR>
    
    
    
    
  <TR>
    <TD><FONT color=darkred><STRONG>Web Address of <FONT 
      color=darkred><STRONG>College</STRONG></FONT></STRONG></FONT></TD>
    <TD><INPUT id=text5 name="wc" required></TD>
    </TR> 
 
  
  <TR>
    <TD><FONT color=darkred><STRONG>About  
      College&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      </STRONG></FONT></TD>
    <TD><INPUT id=text6 name="abc" required></TD></TR>
    
    
  <TR>
    <TD><FONT color=darkred><STRONG>Established&nbsp;Date</STRONG></FONT></TD>
    <TD><INPUT id=text7 name="estdate" placeholder="dd/mm/yyyy" required></TD></TR></TABLE>
 
<INPUT id=submit1 name=submit1 style="LEFT: 243px; POSITION: absolute; TOP: 300px; Z-INDEX: 112" type=submit value="Submit" ><INPUT id=reset1 name=reset1 style="LEFT: 358px; POSITION: absolute; TOP: 300px; Z-INDEX: 113" type=reset value=Reset>
</form>