<%-- 
    Document   : user_setting
    Created on : 07-Dec-2022, 11:54:07 am
    Author     : GAVASKAR S
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%@include file="header.jsp" %>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="pms.prs_coresprofobj"%>
<h1 class="h3 mb-4 text-gray-800">User Setting</h1>
<div class="row">
<div class="col-lg-12"> 
<%
String usercode="";
String correspondence="";
String profile="";
String objective="";
String id=request.getParameter("id").toString();
    if(request.getParameter("option").toString().contains("edit"))
        {
            prs_coresprofobj iu_prs_coresprofobj=new prs_coresprofobj();
            ResultSet resultSet = null; 
            iu_prs_coresprofobj.id=id;
            resultSet = iu_prs_coresprofobj.retrivewithid_prs_coresprofobj();
            int sno=0;
            while(resultSet.next())
            {
                id=resultSet.getString("id");
               	usercode=resultSet.getString("usercode");
                correspondence=resultSet.getString("correspondence");
                profile=resultSet.getString("profile");
                objective=resultSet.getString("objective");
            }
        }
                   
    if(request.getParameter("option").toString().contains("add") || request.getParameter("option").toString().contains("edit"))
        {           
%>
<form action="prs_coresprofobj.jsp?option=" method="post">
    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <tr>
            <td align="right">usercode:</td>
            <td>
                <input  class="form-control form-control-user" type="text" name="usercode" value="<%=usercode%>" required=""/>
            </td>
        </tr>
        <tr>
            <td align="right">correspondence:</td>
            <td>
                <input  class="form-control form-control-user" type="text" name="correspondence" value="<%=correspondence%>" required=""/>
            </td>
        </tr>
        <tr>
            <td align="right">profile:</td>
            <td>
                <input  class="form-control form-control-user" type="text" name="profile" value="<%=profile%>" required=""/>
            </td>
        </tr>
        <tr>
            <td align="right">objective:</td>
            <td>
                <input  class="form-control form-control-user" type="text" name="objective" value="<%=objective%>" required=""/>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="hidden" name="id" value="<%=id%>"/>
                <input  type="submit" name="save" value="Save"/>
            </td>
        </tr>
    </table>
</form>
</div>
<%                               
    }
    else if(request.getParameter("option").toString().contains("delete"))
        {
            prs_coresprofobj delete_prs_coresprofobj=new prs_coresprofobj();
            delete_prs_coresprofobj.id=request.getParameter("id");
            String delete_message= delete_prs_coresprofobj.delete_prs_coresprofobj();
            out.println("<script type = 'text/javascript'>");
            out.println("window.alert('Data Deleted sucessfully')");
            out.println("window.location = 'usersetting.jsp?option=view&id=0'");
            out.println("</script>");
        }
    else if(request.getParameter("option").toString().contains("view"))
        {
%>
<div class="card shadow mb-4">
    <div class="card-body">
        <div class="table-responsive">
        <center>
            <a href="prs_coresprofobj.jsp?option=add&id=0" >Add Correspondence/Profile and Objective Detail</a>
        </center>
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                         <th>Sl.N0</th>
                        <th>usercode</th>
                        <th>correspondence</th>
                        <th>profile</th>
                        <th>objective</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
<%
            prs_coresprofobj userview=new prs_coresprofobj();
            ResultSet resultSet = null;
            resultSet = userview.retriveall_prs_coresprofobj();
            int sno=0;
            while(resultSet.next())
            {
                sno=sno+1;

%>
                        <tr>
                            <td><%=sno%></td>
                            <td><%=resultSet.getString("usercode") %></td>
                            <td><%=resultSet.getString("correspondence") %></td>
                            <td><%=resultSet.getString("profile") %></td>
                            <td><%=resultSet.getString("objective") %></td>
                            <td><a href="prs_coresprofobj.jsp?option=edit&id=<%=resultSet.getString("id")%>">Edit</a>|<a href="prs_coresprofobj.jsp?option=delete&id=<%=resultSet.getString("id")%>">Delete</a></td>
                        </tr>
<%
            }

%>
                    </tbody>
            </table>
        </div>
    </div>
</div>
<%
        }
        else
            {
%>
<%
                prs_coresprofobj create_prs_coresprofobj=new prs_coresprofobj();
                create_prs_coresprofobj.usercode=request.getParameter("usercode");
                create_prs_coresprofobj.correspondence=request.getParameter("correspondence");
                create_prs_coresprofobj.profile=request.getParameter("profile");
                create_prs_coresprofobj.objective=request.getParameter("objective");
                create_prs_coresprofobj.id=request.getParameter("id");
                String create_message="";
                
                    if(create_prs_coresprofobj.id.equals("0"))
                        {
                            create_message=create_prs_coresprofobj.create_prs_coresprofobj();
                        }
                    else
                        {
                            create_message=create_prs_coresprofobj.update_prs_coresprofobj();
                        }
          
                if(create_message.contains("1"))
                    {
                        out.println("<script type = 'text/javascript'>");
                        out.println("window.alert('Correspondence/Profile and Objective Details saved sucessfully')");
                        out.println("window.location = 'prs_coresprofobj.jsp?option=view&id=0'");
                        out.println("</script>");
                    }
                else
                    {
                        out.println("<script type = 'text/javascript'>");
                        out.println("window.alert('Correspondence/Profile and Objective Details not saved')");
                        out.println("window.location = 'prs_coresprofobj.jsp?option=view&id=0'");
                        out.println("</script>");
                    }
            }
                                %>
        </div>
<%@include file="footer.jsp" %>
    </body>
</html>
