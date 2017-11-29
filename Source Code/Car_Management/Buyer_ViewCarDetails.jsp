<%@page import="database.*,java.sql.*"%>
<%@ include file="Buyer_Header.jsp"%>
<%
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

<div class="feturedimage">
		<div class="row firstrow">
			<div class="col-lg-6 costumcol colborder1">
				<div class="row costumrow">
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img1colon">
						
					</div>


					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
						<div class="featurecontant">
						<h5><u>Add Posted On </u>: <%=rs.getString("cdate")%></h5>
							<h5>City         <b>: <%=rs.getString("city")%></h5>
						<h5>Location     <b>: <%=rs.getString("locality")%></h5>
							<h5>Prize <b>: <%=rs.getString("exprize")%></h5>
							<h5>Name <b>: <%=rs.getString("name")%></h5>
					<h5>Contact No <b>: <%=rs.getString("mno")%></h5>
							<h5>Description <b>: <%=rs.getString("desc_")%></h5>
							
						
			 				<button ><a href="Buyer_ViewCars.jsp">Back</a></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button ><a href="Buyer_Chat.jsp?id=<%=rs.getString("cid")%>">Chat</a></button>
			 		<div id="readmore">
			 						
			 				</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 costumcol colborder2">
				<div class="row costumrow">
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img2colon">
						<img src="Car/<%=rs.getString("image")%>" alt="porsche">
					</div>
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
						
		
						

					</div>
				</div>
			</div>
		</div>
	</div>
	
</tr>
</table>
</div>
<%}
else{
response.sendRedirect("Buyer_ViewCars.jsp?select=id");
}

%>

<%@ include file="Footer.jsp"%>