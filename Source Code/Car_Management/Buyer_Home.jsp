<%@page import="database.*,java.sql.*,java.util.*"%>
<%@ include file="Buyer_Header.jsp"%>


<br><br>

<%
Connection con = databasecon.getconnection();

Statement st=con.createStatement();Statement st2=con.createStatement();
ResultSet r=st.executeQuery("select * from buyer_reg  where b_email='"+bemail+"'  ");
if(r.next())
	{
%>

<div class="allcontain">
	<div class="contact">
		<div class="newslettercontent">
			<div class="leftside">
				<img id="image_border" src="image/border.png" alt="border">
					<div class="contact-form">
						<h1>Person Details</h1>
							<div class="form-group group-coustume">
								<input type="text" class="form-control name-form" value="<%=r.getString("b_name")%>"readonly>
								<input type="text" class="form-control email-form"  value="<%=r.getString("b_email")%>"readonly>
								<input type="text" class="form-control subject-form"  value="<%=r.getString("b_mno")%>"readonly>
							
							</div>
					</div>
			</div>
			
		</div>

	</div>
</div>

<%}else{

System.out.println("Buyer_Home");
}%>


<br><br><br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>


<%@ include file="Footer.jsp"%>