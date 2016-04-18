<%@ include file="makecon.jsp" %>

<HTML>
<HEAD>
<META NAME="GENERATOR" Content="Microsoft Visual Studio 6.0">
<TITLE></TITLE>


<script type="text/javascript">
function emp()
{  
  if(f1.noofseats.value != ""){
	  var re = /^-?\d\d*$/;
	  if (!re.test(f1.noofseats.value)) { 
		    alert("Please enter Integer number only");
		   f1.noofseats.focus() ;
		    return false;
		} 	
  }
  if(f1.duration.value != ""){
	  var re = /^-?\d\d*$/;
	  if (!re.test(f1.duration.value)) { 
		    alert("Please enter Integer number only");
		   f1.duration.focus() ;
		    return false;
		} 	
  }
  if(f1.feedet.value != ""){	  
	  if (isNaN(f1.feedet.value)) { 
		    alert("Please enter valid number");
		   f1.feedet.focus() ;
		    return false;
		} 	
  }
  if(f1.coursestdate.value != ""){	 
		var re = /^\d{1,2}\/\d{1,2}\/\d{4}$/;
	if(!re.test(f1.coursestdate.value)){
		alert("Invalid date format");
		f1.coursestdate.focus();
		return false;
	}
}
}

</script>
</HEAD>
<BODY>

<form action="edu_Addcourse.jsp" method=post name="f1" onsubmit="return emp();">

<%!  	
	ResultSet rsuni = null;
	ResultSet rscol=null;
	ResultSet rscourse = null;
%>
<%! String strr;%> 
<%! int univid,unid,colid,courseid;%>

<%
	Statement corscolst=con.createStatement();
	String cmd="Select * from collage_det";
	rscol=corscolst.executeQuery(cmd);
%>
<H4><font color='green' size='5'>Select The 
College:</font><SELECT id=select1 
name=collegeid style="HEIGHT: 22px; WIDTH: 129px"> 
<%	
	int val1=0;
	String val2=null;
	while(rscol.next())
	{
		val1=rscol.getInt(1);
		val2=rscol.getString(3);
	%>
		<option value='<%=val1%>'><%=val2%></option>");
<%}%>
</SELECT></H4>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</P>

<TABLE border=0 cellPadding=1 cellSpacing=1 
style="HEIGHT: 34px; LEFT: 240px; POSITION: absolute; TOP: 100px; WIDTH: 200px; Z-INDEX: 101" width="75%">
  
  <TR>
    <TD><FONT color="orange" size=5><STRONG>Course Details 
  </STRONG></FONT></TD></TR></TABLE>

  <% try
	{
	Statement coursedet=con.createStatement();
 	rscourse=coursedet.executeQuery("select max(courseid) from course_det");
	if(rscourse.next())
		{
		courseid=rscourse.getInt(1)+1;
		System.out.println("Max course id:"+courseid);
		
		}
	else
		{
	  	courseid=500;
		System.out.println("Max course id:"+courseid);
		}
}catch(Exception e){System.out.println("Exception..."+e);}
%>

<TABLE border=1 cellPadding=1 cellSpacing=1 width="75%" style="HEIGHT: 130px; LEFT: 204px; POSITION: absolute; TOP: 150px; WIDTH: 319px; Z-INDEX: 111">
  <TBODY>
  <TR>
    <TD>
      <P><FONT color=darkred><STRONG>Course Id</STRONG></FONT></P></TD>
    <TD><INPUT id=text8 name=courseid value="<%=courseid%>" readonly="readonly"></TD></TR>
  <TR>
    <TD>
      <P><FONT color=darkred><STRONG>Course Name</STRONG></FONT></P></TD>
    <TD><INPUT id=text9 name=coursename required></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG>
      <P><FONT color=darkred><STRONG>No of&nbsp; 
      Seat</STRONG></FONT></STRONG></FONT></P></TD>
    <TD><INPUT id=text10 name=noofseats required></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG><FONT 
      color=darkred><STRONG>Duration&nbsp;of&nbsp;Course</STRONG></FONT></STRONG></FONT></TD>
    <TD><INPUT id=text11 name=duration required></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG><FONT color=darkred><STRONG>Fees 
      Details</STRONG></FONT></STRONG></FONT></TD>
    <TD><INPUT id=text12 name=feedet required></TD></TR>
  <TR>
    <TD><FONT color=darkred><STRONG><FONT color=darkred><STRONG>Course 
      Starting Date</STRONG></FONT></STRONG></FONT></TD>
    <TD><INPUT id=text13 name=coursestdate placeholder="dd/mm/yyyy" required></TD></TR>
  <TR>
    <TD></TD>
    <TD></TD></TR></TBODY></TABLE>

	<INPUT id=submit1 name=submit1 style="LEFT: 243px; POSITION: absolute; TOP: 350px; Z-INDEX: 112" type=submit value="Submit"><INPUT id=reset1 name=reset1 style="LEFT: 358px; POSITION: absolute; TOP: 350px; Z-INDEX: 113" type=reset value=Reset>