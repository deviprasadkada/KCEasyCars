<%@include file="Seller_Header.jsp"%>
<%

String msg2 = request.getParameter("caradd");
if(msg2 != null){
out.println("<script>alert('Car Posted Successfully..')</script>");
}
%>

        
		<br><br>		<br><br><br><br>
<form action="Seller_InsertCarDetails.jsp" method="post">
<table align="center">
<tr><td colspan="3"><font size="6" color="c0c0c0"><b>Car Details</b></font></td></tr>
<tr><td><br></td></tr>
<tr>
<td><font size="5">Year</font></td>
<td><font size="5">:</font></td>
<td><select name="year"  required>
<option value="Notselected">-------Select  Year-------</option>
<%
int i=2018;
while(i>2000){
	--i;
%>
<option value="<%=i%>"><%=i%></option>
<%}%>
</select>
</td>
</tr>
<tr><td><br></td></tr>


<tr>
<td><font size="5">Car Brand</font></td>
<td><font size="5">:</font></td>
<td><select  name="brand"  required>
<option >------Select  Brand-------</option>
<option value="Audi">Audi</option>
<option value="Benz">Benz</option>
<option value="Bmw">Bmw</option>
<option value="Chervolet">Chervolet</option>
<option value="Fiat">Fiat</option>
<option value="Ford">Ford</option>
<option value="Honda">Honda</option>
<option value="Hyundai">Hyundai</option>
<option value="Maruthi">Maruthi</option>
<option value="Range Rover">Range Rover</option>
<option value="Skoda">Skoda</option>
<option value="Tata2010">Tata</option>
<option value="VolksWageon">VolksWageon</option>
</select>
</td>
</tr>
<tr><td><br></td></tr>

<tr>
<td><font size="5">Color</font></td>
<td><font size="5">:</font></td>
<td><select name="color"  required>
<option value="Notselected">-------Select  Color-------</option>
<option value="Black">Black</option>
<option value="Brown">Brown</option>
<option value="Red">Red</option>
<option value="Orange">Orange</option>
<option value="Yellow">Yellow</option>
<option value="Green">Green</option>
<option value="Blue">Blue</option>
<option value="Violet">Violet</option>
<option value="Grey">Grey</option>
<option value="White">White</option>
<option value="Silver">Silver</option>
</select>
</td>
</tr>
<tr><td><br></td></tr>
<tr>
<td><font size="5">KM Driven</font></td>
<td><font size="5">:</font></td>
<td><input type="tel" name="kmdriven" maxlength="7"required>
</td>
</tr>

<tr><td><br></td></tr>
<tr>
<td><font size="5">Owner</font></td>
<td><font size="5">:</font></td>
<td><select  name="owner"  required>
<option value="Notselected">------Select  Owner-------</option>
<option value="First">First</option>
<option value="Second">Second</option>
<option value="Third">Third</option>
<option value="Above">Above</option>
</select>
</td>
</tr>

<tr><td><br></td></tr>
<tr>
<td><font size="5">City</font></td>
<td><font size="5">:</font></td>
<td><select  name="city"  required>
<option value="Notselected">-------Select City--------</option>
<option value="Kansas City">Kansas City</option>
<option value="Chicago">Chicago</option>
<option value="Detroit">Detroit</option>
<option value="San Fransisco">San Francisco</option>
<option value="New York">New York</option>
</select>
</td>
</tr>

<tr><td><br></td></tr>
<tr>
<td><font size="5">Locality</font></td>
<td><font size="5">:</font></td>
<td><select  name="locality"  required>
<option value="Notselected">------Select Locality------</option>
<option value="Armour blvd">Armour Blvd</option>
<option value="Plaza">Plaza</option>
<option value="Overland Park">Overland Park</option>
<option value="Olathe">Olathe</option>
<option value="Tomahalk">Tomahalk</option>
</select>
</td>
</tr>
<tr><td><br></td></tr>
<tr>
<td><font size="5">Expect Prize</font></td>
<td><font size="5">:</font></td>
<td><input type="tel" name="exprize" maxlength="8"required>
</td>
</tr>
<tr><td><br></td></tr>
<tr>
<td><font size="5">Name</font></td>
<td><font size="5">:</font></td>
<td><input type="text" name="oname" required>
</td>
</tr>

<tr><td><br></td></tr>
<tr>
<td><font size="5">Mobile No</font></td>
<td><font size="5">:</font></td>
<td><input type="tel" name="mno" maxlength="10"required>
</td>
</tr>

<tr><td><br></td></tr>
<tr>
<td><font size="5">Upload Pic</font></td>
<td><font size="5">:</font></td>
<td><input type="file" name="pic"required>
</td>
</tr>

<tr><td><br></td></tr>
<tr>
<td><font size="5">Description</font></td>
<td><font size="5">:</font></td>
<td><textarea name="desc" rows=""></textarea>
</td>
</tr>

<tr><td><br></td></tr>
<tr><td></td>
<td><font size="5"></font></td>
<td><input type="submit" value="List My Car"></td>

</tr>
</table>
</form>
	    

 <%@include file="Footer.jsp"%>
