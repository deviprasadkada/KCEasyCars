<%@include file="Header.jsp"%>
<%
String msg = request.getParameter("msg");
if(msg != null){
out.println("<script>alert('Registration Unsuccessfully..Please check once again..')</script>");
}

String msg1 = request.getParameter("msg1");
if(msg1 != null){
out.println("<script>alert('Registration successfully..Thank ypu for Register..')</script>");
}

String msg2 = request.getParameter("register");
if(msg2 != null){
out.println("<script>alert('Email is Already registered..')</script>");
}
%>
<div id="content">
        <div class="content_item">
		<br><br>		<br><br><br><br>
<form action="Buyer_Reginsert.jsp" method="post">
<table align="center">
<tr><td colspan="3"><font size="6" color="orange"><b><u>Registration Form</u></b></font></td></tr>
<tr><td><br></td></tr>
<tr>
<td><font size="5">Name</font></td>
<td><font size="5">:</font></td>
<td><input type="text" name="name"  required/></td>
</tr>
<tr><td><br></td></tr>


<tr>
<td><font size="5">Password</font></td>
<td><font size="5">:</font></td>
<td><input type="password" name="password"  required/></td>
</tr>
<tr><td><br></td></tr>
<tr>
<td><font size="5">Email</font></td>
<td><font size="5">:</font></td>
<td><input type="email" name="email"  required/></td>
</tr>
<tr><td><br></td></tr>
<tr>
<td><font size="5">Contact</font></td>
<td><font size="5">:</font></td>
<td><input type="text" name="contact" maxlength="10" required/></td>
</tr>
<tr><td><br></td></tr>
<tr><td></td>
<td><font size="5"></font></td>
<td><input type="submit" value="Submit"></td>

</tr>
</table>
</form>
		</div><!--close content_text-->  		
	</div><!--close content-->	    

 <%@include file="Footer.jsp"%>
