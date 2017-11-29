<%@page import="database.*,java.sql.*,java.util.*"%>
<%@ include file="Buyer_Header.jsp"%>


	<div class="allcontain">
<div id="carousel-up" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner " role="listbox">
			<div class="item active">
				<img src="image/oldcar.jpg" alt="oldcar">
				<div class="carousel-caption">
					<h2>Porsche 356</h2>
					<p>Lorem ipsum dolor sit amet, consectetur ,<br>
						sed do eiusmod tempor incididunt ut labore </p>
				</div>
			</div>
			<div class="item">
				<img src="image/porche.jpg" alt="porche">
				<div class="carousel-caption">
					<h2>Porche</h2>
						<p>Lorem ipsum dolor sit amet, consectetur ,<br>
						sed do eiusmod tempor incididunt ut labore </p>
				</div>
			</div>
			<div class="item">
				<img src="image/benz.jpg" alt="benz">
				<div class="carousel-caption">
					<h2>Car</h2>
					<p>Lorem ipsum dolor sit amet, consectetur ,<br>
						sed do eiusmod tempor incididunt ut labore </p>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-default midle-nav">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed textcostume" data-toggle="collapse" data-target="#navbarmidle" aria-expanded="false">
						<h1>SEARCH TEXT</h1>
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="navbarmidle">
				<div class="searchtxt">
					<h1>SEARCH CAR</h1>
				</div>
				<form class="navbar-form navbar-left searchformmargin" role="search">
					<div class="form-group">
<form method="post" action="">
					
						<select name="year" class="form-control searchform" >
<option value="%%" selected>---Year-----</option>
<%
int i=2018;
while(i>2000){
	--i;
%>
<option value="<%=i%>"><%=i%></option>
<%}%>
</select>

<select  name="brand" class="form-control searchform">
						<option value="%%">----Brand----</option>
						<option value="Audi">Audi</option>
<option value="%Benz%">Benz</option>
<option value="%Bmw%">Bmw</option>
<option value="%Chervolet%">Chervolet</option>
<option value="%Fiat%">Fiat</option>
<option value="%Ford%">Ford</option>
<option value="%Honda%">Honda</option>
<option value="%Hyundai%">Hyundai</option>
<option value="%Maruthi%">Maruthi</option>
<option value="%Range Rover%">Range Rover</option>
<option value="%Skoda%">Skoda</option>
<option value="%Tata2010%">Tata</option>
<option value="%VolksWageon%">VolksWageon</option>
</select>
<select  name="city"   class="form-control searchform" >
<option value="%%">---- City-----</option>
<option value="%Bangalore%">Bangalore</option>
<option value="%Chennai%">Chennai</option>
<option value="%Delhi%">Delhi</option>
<option value="%Hyderabad%">Hyderabad</option>
<option value="%Mumbai%">Mumbai</option>
</select>
<input type="number" name="exprize"  title="value must be less then 99 Crores" class="form-control searchform" placeholder="Price Below" required>

<input type="submit" value="Search"  class="form-control searchform" >
</form>
					</div>
				</form>
				
			</div>
		</nav>
	</div>
</div>
<%!
String query,year,city,brand,exprize;
%>
<%
try{
 year=request.getParameter("year");
if(year==null)
{
System.out.println("year null");
year="%%";
}
brand=request.getParameter("brand");
if(brand==null)
{
System.out.println("brand null");
brand="%%";
}
city=request.getParameter("city");
if(city==null)
{
System.out.println("city null");
city="%%";
}
 exprize=request.getParameter("exprize");
if(exprize==null)
{
System.out.println("price null");
exprize="100000000";
}
System.out.println("exprize="+exprize);
//String desc=request.getParameter("desc");

query="select * from addcar where year_ like '"+year+"' and brand like'"+brand+"' and city like'"+city+"' and exprize<="+exprize+" ";


Connection con=databasecon.getconnection();
Statement st=con.createStatement();

System.out.println("query="+query);
ResultSet rs=st.executeQuery(query);
%>

<table><tr></tr>



<div class="allcontain">
	<div class="feturedsection">
		<h1 class="text-center"><span class="bdots">&bullet;</span>Pre Owned<span class="carstxt">Cars</span>&bullet;</h1>
	</div>

<%
while(rs.next()){
%>
<tr>


	<div class="feturedimage">
		<div class="row firstrow">
			<div class="col-lg-6 costumcol colborder1">
				<div class="row costumrow">
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img1colon">
						
					</div>


					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
						<div class="featurecontant">
						<h5><u>Add Posted On </u> <b> <%=rs.getString("cdate")%></b></h5>
							<h1><%=rs.getString("brand")%></h1>
							<p><%=rs.getString("year_")%></p>
			 				<h2>Price </h2>
							<h1><%=rs.getString("exprize")%></h1>
			 				<button ><a href="Buyer_ViewCarDetails.jsp?id=<%=rs.getString("cid")%>">View More</a></button>
			 				<div id="readmore">
			 						
			 				</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 costumcol colborder2">
				<div class="row costumrow">
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 img2colon">
						<img src="Car/<%=rs.getString("image")%>" alt="porsche">
					</div>
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 txt1colon ">
						
		
						

					</div>
				</div>
			</div>
		</div>
	</div>



</tr>












			<%}
con.close();
}
catch(Exception e)
{e.printStackTrace();}

%>
</table>


<br><br><br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
<br><br><br>
<%@ include file="Footer.jsp"%>

