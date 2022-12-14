/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pms;
import java.sql.ResultSet;

/**
 *
 * @author GAVASKAR S
 */
public class prs_project extends dbclass {
public String id;
public String user_code;
public String p_name;
public String tech_used; 
public String description; 
public String responsibility; 
public String create_prs_project()
 {
    String query="INSERT INTO `prs_project`(`user_code`, `p_name`, `tech_used`, `description`, `responsibility`) VALUES ('"+ user_code +"','"+ p_name +"','"+ tech_used +"','"+ description +"','"+ responsibility +"')";
    String message=super.tableinsertupdatedelete(query);
    return message;
 }
 public String update_prs_project()
 {
    String query="UPDATE `prs_project` SET `user_code`='"+ user_code +"',`p_name`='"+ p_name +"',`tech_used`='"+ tech_used +"',`description`='"+description +"',`responsibility`='"+responsibility +"' WHERE id='"+ id+"'";
    String message=super.tableinsertupdatedelete(query);
    return message;
 }
 public ResultSet retriveall_prs_project()
{
    return super.getfromtable("select * from prs_project");
}
 public ResultSet retrivewithid_prs_project()
{
    return super.getfromtable("select * from prs_project  WHERE id='"+ id +"'");
}
 public String delete_prs_project()
 {
    String query="delete from prs_project WHERE id='"+ id +"'";
    String message=super.tableinsertupdatedelete(query);
    return message;
 }
}
