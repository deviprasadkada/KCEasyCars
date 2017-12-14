<%@page import="database.*,java.sql.*,java.util.*"%>

<%!
Connection con;
Statement st;
ResultSet rs;
int bid;
%>
<%
String name = request.getParameter("name");
String pass = request.getParameter("password");
String email = request.getParameter("email");
String contact = request.getParameter("contact");
try{
con= databasecon.getconnection();
st=con.createStatement();
Statement st2=con.createStatement();
ResultSet  rs2=st2.executeQuery("select * from buyer_reg  where b_email='"+name+"' ");
if(!rs2.next())
	{
 rs=st.executeQuery("select max(b_id) from buyer_reg");
rs.next();
	
bid=rs.getInt(1);
++bid;

PreparedStatement ps=con.prepareStatement("insert into buyer_reg values(?,?,?,?,?,?,?)");
ps.setInt(1, bid);
ps.setString(2, name);
ps.setString(4, pass);
ps.setString(3, email);
ps.setString(5, contact);
ps.setString(6, "Register");
ps.setString(7, "Status");

int i=ps.executeUpdate();
if(i>0){
response.sendRedirect("Buyer_Registration.jsp?msg1=succ");
}else{
response.sendRedirect("Buyer_Registration.jsp?msg=unsucc");
}
	}
	else{
	response.sendRedirect("Buyer_Registration.jsp?register=unsucc");
	}
}
catch(Exception e){e.printStackTrace();}
%>