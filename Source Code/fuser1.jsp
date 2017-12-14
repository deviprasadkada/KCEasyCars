<%@ page  import="java.sql.*" import="database.*" %>
<%
String name = request.getParameter("id");
String email= request.getParameter("id2");
String id= request.getParameter("id3");


try{
Connection con = databasecon.getconnection();
Statement st1 = con.createStatement();
Statement st = con.createStatement();
		session.setAttribute("name",name);
session.setAttribute("bemail",email);
 ResultSet rs=st.executeQuery("select max(b_id) from buyer_reg");
rs.next();
	
int bid=rs.getInt(1);
++bid;

System.out.println("bid=="+bid);


int i=st1.executeUpdate("insert into buyer_reg (b_id,b_name,b_email,b_mno,b_pass,b_status,b_status1) values('"+bid+"','"+name+"','"+email+"',"+id+",'fb','Register','Status')");

response.sendRedirect("Buyer_Home.jsp?fb=succ");

}
catch(Exception ee){

response.sendRedirect("Buyer_Home.jsp?id=all");
}

%>