<%@include file="Header.jsp"%>





 <%
String msg1 =request.getParameter("msg1");
if(msg1!=null){
out.println("<script>alert('Incorrect user name and password')</script>");
}
%>
<div id="main">

<form method="post" name="f1" action="Buyer_Logincheck.jsp">

<br><br><br>
<h3 style="color: green;" align="center"><B>Buyer Login Form</B></h3>	


 <table align="center">

					<tr><td><br></td></tr>
					<tr><td>User Email:</td><td><input type="text" name="username"/></td></tr>
								<tr><td><br></td></tr>
					<tr><td>Password:</td><td><input type="password" name="password"/></td></tr>	
							<tr><td><br></td></tr>
					<tr><td>      </td><td><input type="reset">&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Login"></td></tr>
					
				

				<tr><td><br></td></tr>
<tr><td>      </td><td>----OR----</td></tr>

<tr><td>      </td><td><%@ include file="fb.jsp"%>

  </table>
</form><br><br><br><br><br>
</div>

<%@include file="Footer.jsp"%>

             