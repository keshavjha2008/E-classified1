
<%@ include file="makecon.jsp" %>

<%!String user;%>

<%!                      ResultSet rs = null;

			 String pass = null; 
%>

        	
<%		
user=request.getParameter("username");
pass = request.getParameter("password");
%>
<%
try
{
rs = st.executeQuery("select *  from adminclassified where  username='"+user+"'and  password='"+pass+"'"); 
if(rs.next())
 {  	
 %>
<frameset rows="18%,75%,*">
<frame src="title.jsp"  scrolling=no  bordercolor=#6480ed  >
<frameset cols="25%,*">
<frame src="aleft.jsp" bordercolor=#6480ed scrolling=no>
<frame src="aright.jsp" name="right" bordercolor=#6480ed  scrolling=auto>
</frameset>
<frame src="footer.jsp" name="bottom" bordercolor=#6480ed  scrolling=no>
</frameset>
			  
<%	
}
    else
{     
	out.println("<font color='orange' size='5'>Sorry U are Not Administrator pls check it</font>");
	       con.close();
}

session.setAttribute("str1",user);	
}
catch(Exception e)
{}

%>