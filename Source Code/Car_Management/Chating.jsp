<%@page import="database.*,java.sql.*"%>
<%@ include file="Buyer_Header.jsp"%>
<%
String bname=(String)session.getAttribute("bname");
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
ResultSet rs2=null;
String query="select * from chat where chatbemail='"+bemail+"' group by chatcar";
System.out.println("query="+query);
ResultSet rs=st.executeQuery(query);
while(rs.next())
{

	rs2=st2.executeQuery("select image from addcar where cid="+rs.getString("chatcar")+"");
	if(rs2.next())
	{
%><br><br>
<div align="center">
<table>
<tr>
	<td><img src="Car/<%=rs2.getString(1)%>" style="height:150px;width:250px"></td>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	
<td><a href="Chating1.jsp?carid=<%=rs.getString("chatcar")%>"><b> View and Reply</b></a></td></tr>

</table><br><br><br>



</div>


					

<%}
else{
response.sendRedirect("Buyer_ViewCars.jsp?select=id");
}
}

%>

<%@ include file="Footer.jsp"%>