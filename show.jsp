<%-- 
    Document   : show
    Created on : 22-Dec-2021, 2:31:40 am
    Author     : hariombharti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost","root","");
    

        Connection connection = null;
        Statement statement = null;
        ResultSet resultSet = null;
 %>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </head>

<body>
        <div class="container">
            <!-- Content here -->

            <div class="row m-20">
                <div class="col-12 m-10 ">
                    <h1 style="text-align: center; margin-top:50px;"> BUS TICKET BOOKING SYSTEM</h1>
                     <div class="row" style=" margin-top:50px; padding:50px;">
                        <div class="col-12" style="text-align: center;">
                           <div class="container">
                               <h2>Booked ticket</h2>
                                           
                               <table class="table table-bordered info">
                                   <thead>
                                       <tr bgcolor="#6495ED" >
                                           <th >Id</th>
                                           <th >First name</th>
                                           <th >Last name</th>
                                           <th >Email</th>
                                           <th >From</th>
                                           <th >To</th> 
                                           <th >Date</th> 
                                           <th >Bus Type</th> 
                                           <th  >No of passanger</th> 
                                       </tr>
                                   </thead>
                                   <%
                                       try {
                                           connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/java", "root", "ravi@123");
                                           statement = connection.createStatement();
                                           String sql = "SELECT * FROM data";

                                           resultSet = statement.executeQuery(sql);

                                           while (resultSet.next()) {
                                   %>
                                   <tr bgcolor="#DEB887">

                                       <td><%=resultSet.getString("id")%></td>
                                       <td><%=resultSet.getString("first_name")%></td>
                                       <td><%=resultSet.getString("last_name")%></td>
                                       <td><%=resultSet.getString("email")%></td>
                                       <td><%=resultSet.getString("from_city")%></td>
                                       <td><%=resultSet.getString("to_city")%></td> 
                                       <td><%=resultSet.getString("date")%></td>
                                       <td><%=resultSet.getString("bus")%></td>
                                       <td><%=resultSet.getString("no_of_passanger")%></td>

                                   </tr>

                                   <%
                                           }
                                       } catch (Exception e) {
                                           e.printStackTrace();
                                       }
                                   %>
                               </table>
                              
                                
                           </div>
                        </div>
                        
                    </div>

                    
            </div>
        </div>
    </div>
    <script
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js">
        
    </script>
    
    </body>
    %>