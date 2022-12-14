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
public class prs_experience extends dbclass {
public String id;
public String user_code;
public String companyname;
public String fromdate; 
public String todate; 
public String designation; 
public String create_prs_experience()
 {
    String query="INSERT INTO `prs_experience`(`user_code`, `companyname`, `fromdate`, `todate`, `designation`) VALUES ('"+ user_code +"','"+ companyname +"','"+ fromdate +"','"+ todate +"','"+ designation +"')";
    String message=super.tableinsertupdatedelete(query);
    return message;
 }
 public String update_prs_experience()
 {
    String query="UPDATE `prs_experience` SET `user_code`='"+ user_code +"',`companyname`='"+ companyname +"',`fromdate`='"+ fromdate +"',`todate`='"+ todate +"',`designation`='"+ designation +"' WHERE id='"+ id+"'";
    String message=super.tableinsertupdatedelete(query);
    return message;
 }
 public ResultSet retriveall_prs_experience()
{
    return super.getfromtable("select * from prs_experience");
}
 public ResultSet retrivewithid_prs_experience()
{
    return super.getfromtable("select * from prs_experience  WHERE id='"+ id +"'");
}
 public String delete_prs_experience()
 {
    String query="delete from prs_experience WHERE id='"+ id +"'";
    String message=super.tableinsertupdatedelete(query);
    return message;
 }
}
