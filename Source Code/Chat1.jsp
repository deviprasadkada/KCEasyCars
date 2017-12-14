<%@page import="database.*,java.sql.*,java.util.Date,java.text.SimpleDateFormat"%>
<%@ include file="Buyer_Header.jsp"%>
<%
String bname=(String)session.getAttribute("bname");

String message=request.getParameter("message");
String seemail=request.getParameter("seemail");
String sename=request.getParameter("sename");
String carid=request.getParameter("carid");
String chatmessage=bname+":  \n"+message;
System.out.println("chatmessage="+chatmessage);
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
String query="select max(chatid) from chat";
System.out.println("query="+query);
SimpleDateFormat sdf =new SimpleDateFormat("dd-MM-yyyy");
Date d=new Date();
String date=sdf.format(d);

ResultSet rs=st.executeQuery(query);
rs.next();
int chatid=rs.getInt(1);
++chatid;
PreparedStatement ps=con.prepareStatement("insert into chat values(?,?,?,?,?,?,?,?,?)");
ps.setInt(1,chatid);
ps.setString(2, bname);
ps.setString(3, bemail);
ps.setString(4, sename);
ps.setString(5,seemail);
ps.setString(6, chatmessage);
ps.setString(7, carid);
ps.setString(8, date);
ps.setString(9, "Chat");
int i=ps.executeUpdate();
if(i>0){
response.sendRedirect("Chating1.jsp?carid="+carid);
}else{
response.sendRedirect("Chating.jsp?msg=unsucc");
}

%>

<%@ include file="Footer.jsp"%>