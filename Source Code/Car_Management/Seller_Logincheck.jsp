
<%@page import="database.*,java.sql.*,java.util.*"%>
<%!int count=0;%>
<% 
String email,name;
String uname=request.getParameter("username");
String pwd=request.getParameter("password");
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();Statement st2=con.createStatement();
ResultSet r=st.executeQuery("select * from seller_reg  where s_email='"+uname+"' and s_pass='"+pwd+"'  ");
if(r.next())
	{

	email=r.getString("s_email");
	name=r.getString("s_name");
	session.setAttribute("semail",email);
		session.setAttribute("sname",name);
	response.sendRedirect("Seller_Home.jsp");
	
 }
   
 else{
 response.sendRedirect("Seller_Login.jsp?msg1=fail");

   }
 
}catch(Exception e){e.printStackTrace();}

%>