<%@ page import="java.sql.*,database.databasecon,java.util.Date,java.text.SimpleDateFormat"%>
<%!
int cid;
%>

<%

String year=request.getParameter("year");
String brand=request.getParameter("brand");
String color=request.getParameter("color");
String kmdriven=request.getParameter("kmdriven");
String owner=request.getParameter("owner");
String city=request.getParameter("city");
String locality=request.getParameter("locality");
String exprize=request.getParameter("exprize");
String oname=request.getParameter("oname");
String mno=request.getParameter("mno");
String pic=request.getParameter("pic");
String desc=request.getParameter("desc");

String semail=(String)session.getAttribute("semail");

Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(cid)  from addcar");
rs.next();
cid=rs.getInt(1);
++cid;
SimpleDateFormat sdf =new SimpleDateFormat("dd-MM-yyyy");
Date d=new Date();
String date=sdf.format(d);




PreparedStatement ps=con.prepareStatement("insert into addcar values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

ps.setInt(1, cid);
ps.setString(2, year);
ps.setString(3, brand);
ps.setString(4, color);
ps.setString(5,kmdriven);
ps.setString(6, owner);
ps.setString(7, city);
ps.setString(8, locality);
ps.setString(9, exprize);
ps.setString(10, oname);
ps.setString(11,mno);
ps.setString(12, pic);
ps.setString(13, desc);
ps.setString(14, semail);
ps.setString(15, date);
ps.setString(16, "AddCar");
ps.setString(17, "CAR");
int i=ps.executeUpdate();

if(i>0){
response.sendRedirect("Seller_CarSell.jsp?caradd=succ");
}else{
response.sendRedirect("Seller_CarSell.jsp?fail=unsucc");
}

%>