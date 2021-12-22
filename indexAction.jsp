<%-- 
    Document   : index
    Created on : 21-Dec-2021, 4:48:47 pm
    Author     : hariombharti
--%>

<%@page import="java.sql.*"%>
<%
 
String first_name= request.getParameter("first_name"); 
String last_name= request.getParameter("last_name");
String email= request.getParameter("email");
String from_city= request.getParameter("from_city");
String to_city= request.getParameter("to_city");
String date= request.getParameter("date");
String bus = request.getParameter("bus");
String no_of_passanger = request.getParameter("no_of_passanger");

   
try{
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost","root","");
    PreparedStatement ps = conn.prepareStatement("insert into data(first_name,last_name,email,from_city,to_city,date,bus,no_of_passanger) values(?,?,?,?,?,?,?,?)");
    ps.setString(1,first_name);
    ps.setString(2,last_name);
    ps.setString(3,email);
    ps.setString(4,from_city);
    ps.setString(5,to_city);
    ps.setString(6,date);
    ps.setString(7,bus);
    ps.setString(8,no_of_passanger);
    
    int x = ps.executeUpdate();

    response.sendRedirect("success.html");
    }
    catch(Exception e){
    out.println(e);
    }
%>
