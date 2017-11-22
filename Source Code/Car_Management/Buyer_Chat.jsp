<%@page import="database.*,java.sql.*"%>
<%@ include file="Buyer_Header.jsp"%>
<%
String bname=(String)session.getAttribute("bname");
String cid=request.getParameter("id");
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
String query="select * from addcar where cid="+cid+"";
System.out.println("query="+query);
ResultSet rs=st.executeQuery(query);
if(rs.next())
{
%><br><br>
<div align="center">
<table>
<tr>
	<td><img src="Car/<%=rs.getString("image")%>" style="height:150px;width:250px"></td>
	<td>&nbsp;&nbsp;&nbsp;</td>
	<td>
<table>
<tr><td><b> Details</b></td></tr>
<tr><td> <%=rs.getString("name")%></td></tr>
<tr><td> <%=rs.getString("mno")%></td></tr>

</table>
</td>
</tr>
</table><br><br><br>

<form method="post" action="Chat.jsp">
	

<table>
<tr><td><textarea name="message" rows="" cols="">  </textarea></td></tr>
<tr><td><input type="hidden" name="sename" value="<%=rs.getString("name")%>"></td>
<td><input type="hidden" name="seemail" value="<%=rs.getString("s_email")%>"></td>
<td><input type="hidden" name="carid" value="<%=rs.getString("cid")%>"></td></tr>
<tr><td><input type="submit" value="Send"></td></tr>

</table>
</form>
</div>


					

<%}
else{
response.sendRedirect("Buyer_ViewCars.jsp?select=id");
}

%>

<%@ include file="Footer.jsp"%>