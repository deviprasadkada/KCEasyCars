package database;

import java.sql.*;

public class databasecon 
{
	static  Connection con;

	public static Connection getconnection(){

	try{
	Class.forName("com.mysql.jdbc.Driver");

 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/car_sales","root","root");

	}catch(Exception e){
	
	e.printStackTrace();
	}
 return con;
}
}
