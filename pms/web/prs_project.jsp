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
<%@page import="pms.prs_project"%>
<h1 class="h3 mb-4 text-gray-800">prs_project</h1>
<div class="row">
<div class="col-lg-12"> 
<%
String user_code="";
String p_name="";
String tech_used="";
String description="";
String responsibility="";
String id=request.getParameter("id").toString();
    if(request.getParameter("option").toString().contains("edit"))
        {
            prs_project iu_prs_project=new prs_project();
            ResultSet resultSet = null; 
            iu_prs_project.id=id;
            resultSet = iu_prs_project.retrivewithid_prs_project();
            int sno=0;
            while(resultSet.next())
            {
                user_code=resultSet.getString("user_code");
                p_name=resultSet.getString("p_name");
               tech_used=resultSet.getString("tech_used");
                description=resultSet.getString("description");
                responsibility=resultSet.getString("responsibility");
            }
        }
                   
    if(request.getParameter("option").toString().contains("add") || request.getParameter("option").toString().contains("edit"))
        {           
%>
<form action="prs_project.jsp?option=" method="post">
    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
        <tr>
            <td align="right">Name:</td>
            <td>
                <input  class="form-control form-control-user" type="text" name="user_code" value="<%=user_code%>" required=""/>
            </td>
        </tr>
        <tr>
            <td align="right">p_name:</td>
            <td>
                <input  class="form-control form-control-user" type="text" name="p_name" value="<%=p_name%>" required=""/>
            </td>
        </tr>
        <tr>
            <td align="right">tech_used:</td>
            <td>
                <input  class="form-control form-control-user" type="text" name="tech_used" value="<%=tech_used%>" required=""/>
            </td>
        </tr>
        <tr>
            <td align="right">description:</td>
            <td>
                <input  class="form-control form-control-user" type="text" name="description" value="<%=description%>" required=""/>
            </td>
        </tr>
        <tr>
            <td align="right">responsibility:</td>
            <td>
                <input  class="form-control form-control-user" type="text" name="responsibility" value="<%=responsibility%>" required=""/>
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
           prs_project delete_prs_project=new prs_project();
            delete_prs_project.id=request.getParameter("id");
            String delete_message= delete_prs_project.delete_prs_project();
            out.println("<script type = 'text/javascript'>");
            out.println("window.alert('Data Deleted sucessfully')");
            out.println("window.location = 'prs_project.jsp?option=view&id=0'");
            out.println("</script>");
        }
    else if(request.getParameter("option").toString().contains("view"))
        {
%>
<div class="card shadow mb-4">
    <div class="card-body">
        <div class="table-responsive">
        <center>
            <a href="prs_project.jsp?option=add&id=0" >Add User Detail</a>
        </center>
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>Sl.No</th>
                        <th>user_code</th>
                        <th>p_name</th>
                        <th>tech_used</th>
                        <th>description</th>
                         <th>responsibility</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
<%
            prs_project userview=new prs_project();
            ResultSet resultSet = null;
            resultSet = userview.retriveall_prs_project();
            int sno=0;
            while(resultSet.next())
            {
                sno=sno+1;

%>
                        <tr>
                            <td><%=sno%></td>
                            <td><%=resultSet.getString("user_code") %></td>
                            <td><%=resultSet.getString("p_name") %></td>
                            <td><%=resultSet.getString("tech_used") %></td>
                            <td><%=resultSet.getString("description") %></td>
                            <td><%=resultSet.getString("responsibility") %></td>
                            <td><a href="prs_project.jsp?option=edit&id=<%=resultSet.getString("id")%>">Edit</a>|<a href="prs_project.jsp?option=delete&id=<%=resultSet.getString("id")%>">Delete</a></td>
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
                prs_project create_prs_project=new prs_project();
                create_prs_project.user_code=request.getParameter("user_code");
                create_prs_project.p_name=request.getParameter("p_name");
                create_prs_project.tech_used=request.getParameter("email");
                create_prs_project.description=request.getParameter("description");
                create_prs_project.responsibility=request.getParameter("responsibility");
                create_prs_project.id=request.getParameter("id");
                String create_message="";
                    if(create_prs_project.id.equals("0"))
                        {
                            create_message=create_prs_project.create_prs_project();
                        }
                    else
                        {
                            create_message=create_prs_project.update_prs_project();
                        }
                if(create_message.contains("1"))
                    {
                        out.println("<script type = 'text/javascript'>");
                        out.println("window.alert('User Details saved sucessfully')");
                        out.println("window.location = 'prs_project.jsp?option=view&id=0'");
                        out.println("</script>");
                    }
                else
                    {
                        out.println("<script type = 'text/javascript'>");
                        out.println("window.alert('User Details not saved')");
                        out.println("window.location = 'prs_project.jsp?option=view&id=0'");
                        out.println("</script>");
                    }
            }
                                %>
        </div>
<%@include file="footer.jsp" %>
    </body>
</html>
