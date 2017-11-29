<%@ page  import="java.sql.*" import="database.*" %>
<%
String name = request.getParameter("id");
String email= request.getParameter("id2");
String id= request.getParameter("id3");


try{
Connection con = databasecon.getconnection();
Statement st1 = con.createStatement();
Statement st = con.createStatement();
		session.setAttribute("semail",email);
		session.setAttribute("user",id);

 ResultSet rs=st.executeQuery("select max(s_id) from seller_reg");
rs.next();
	
int sid=rs.getInt(1);
++sid;

System.out.println("sid=="+sid);
int i=st1.executeUpdate("insert into seller_reg (s_id,s_name,s_email,s_mno,s_pass,s_status,s_status1) values("+sid+",'"+name+"','"+email+"',"+id+",'fb','Register','Status')");

response.sendRedirect("Seller_Home.jsp?fb=succ");

}
catch(Exception ee){

response.sendRedirect("Seller_Home.jsp?id=all");
}

%>