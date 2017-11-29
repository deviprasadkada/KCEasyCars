<%@page import="database.*,java.sql.*,java.util.*"%>
<%@ include file="Seller_Header.jsp"%>


<br><br>

<%
Connection con = databasecon.getconnection();

Statement st=con.createStatement();Statement st2=con.createStatement();
ResultSet r=st.executeQuery("select * from seller_reg  where s_email='"+semail+"'  ");
if(r.next())
	{

%>
<body>

<div class="allcontain">
	<div class="contact">
		<div class="newslettercontent">
			<div class="leftside">
				<img id="image_border" src="image/border.png" alt="border">
					<div class="contact-form">
						<h1>Person Details</h1>
							<div class="form-group group-coustume">
								<input type="text" class="form-control name-form" value="<%=r.getString("s_name")%>"readonly>
								<input type="text" class="form-control email-form"  value="<%=r.getString("s_email")%>"readonly>
								<input type="text" class="form-control subject-form"  value="<%=r.getString("s_mno")%>"readonly>
							
							</div>
					</div>
			</div>
			
		</div>

	</div>
</div>

<%}else{

System.out.println("Seller_Home");
}%>


<br><br><br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>


<%@ include file="Footer.jsp"%>