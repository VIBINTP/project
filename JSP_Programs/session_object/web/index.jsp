<%-- 
    Document   : index
    Created on : 02-Dec-2022, 12:06:42 pm
    Author     : hilbe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>Session Object Example</h1></center>
    <hr>
  <form action="welcome.jsp">
        <table>
            <tr>
                <td><h3>Student Details</h3></td>
            </tr>
            <tr>
                <td>Enter the Name:</td>
                <td><input type="text" name="stud_name"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="click"/>
                </td>
            </tr>
        </table>
    </form>
    </body>
</html>
