<%@page import="database.*,java.sql.*"%>
<%@ include file="Buyer_Header.jsp"%>
<%
String bname=(String)session.getAttribute("bname");
String cid=request.getParameter("carid");
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
String query="select * from chat where chatcar="+cid+"";
System.out.println("query="+query);
ResultSet rs=st.executeQuery(query);

%><br><br>
<div align="center">
<table>
<tr>
	<td><textarea name="" rows="10" cols="30"><%while(rs.next())
{%> <%=rs.getString("chatmessage")%>
<%}%>
</textarea>
</td>
</tr>
</table><br><br><br>
	<%ResultSet rs2=st2.executeQuery(query);
	if(rs2.next()){
	%>
<form method="post" action="Chat1.jsp">


<table>
<tr><td><textarea name="message" rows="" cols="">  </textarea></td></tr>
<tr><td><input type="hidden" name="sename" value="<%=rs2.getString("chatsname")%>"></td>
<td><input type="hidden" name="seemail" value="<%=rs2.getString("chatsemail")%>"></td>
<td><input type="hidden" name="carid" value="<%=cid%>"></td></tr>
<tr><td><input type="submit" value="Send"></td></tr>

</table>
</form>
<%}
else{
System.out.println("Chating1 else");
}%>
</div>


					



<%@ include file="Footer.jsp"%>