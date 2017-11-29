
<%@page import="database.*,java.sql.*,java.util.*"%>
<%!int count=0;%>
<% 
String email,name;
String uname=request.getParameter("username");
String pwd=request.getParameter("password");
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();Statement st2=con.createStatement();
ResultSet r=st.executeQuery("select * from buyer_reg  where b_email='"+uname+"' and b_pass='"+pwd+"'  ");
if(r.next())
	{

	email=r.getString("b_email");
		name=r.getString("b_name");
	session.setAttribute("bemail",email);
	session.setAttribute("bname",name);
	response.sendRedirect("Buyer_Home.jsp");
	
 }
   
 else{
 response.sendRedirect("Buyer_Login.jsp?msg1=fail");

   }
 
}catch(Exception e){e.printStackTrace();}

%>