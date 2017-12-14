<%@page import="database.*,java.sql.*"%>
<%@ include file="Seller_Header.jsp"%>
    <style>
body {
        background-color: #009999;
        
} 
    a {
        color: white;
        font-family: 'BebasNeue Regular';
    }
    </style>
<%
String sname=(String)session.getAttribute("sname");
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
ResultSet rs2=null;
String query="select * from chat where chatsemail='"+semail+"' group by chatcar";
System.out.println("query="+query);
ResultSet rs=st.executeQuery(query);
while(rs.next())
{

	rs2=st2.executeQuery("select image from addcar where cid="+rs.getString("chatcar")+"");
	if(rs2.next())
	{
%><br><br><br><br>
<div align="center">
<table>
<tr>
	<td><img src="Car/<%=rs2.getString(1)%>" style="height:150px;width:250px"></td>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
	
<td><a href="Seller_Chating1.jsp?carid=<%=rs.getString("chatcar")%>"><b> View and Reply</b></a></td></tr>

</table><br><br><br>



</div>


					

<%}
else{
response.sendRedirect("Buyer_ViewCars.jsp?select=id");
}
}

%>
<br><br><br><br><br><br><br><br>
<%@ include file="Footer.jsp"%>