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
public class prs_education extends dbclass {
public String id;
public String user_code;
public String ug;
public String pg; 
public String hsc; 
public String sslc;
public String create_prs_education()
 {
    String query="INSERT INTO `prs_education`(`user_code`, `ug`, `pg`, `hsc`,`sslc`) VALUES ('"+ user_code +"','"+ ug +"','"+ pg +"','"+ hsc +"','"+ sslc +"')";
    String message=super.tableinsertupdatedelete(query);
    return message;
 }
 public String update_prs_education()
 {
    String query="UPDATE `prs_education` SET `user_code`='"+ user_code +"',`ug`='"+ ug +"',`pg`='"+ pg +"',`hsc`='"+ hsc +"',`sslc`='"+ sslc +"' WHERE id='"+ id+"'";
    String message=super.tableinsertupdatedelete(query);
    return message;
 }
 public ResultSet retriveall_prs_education()
{
    return super.getfromtable("select * from prs_education");
}
 public ResultSet retrivewithid_prs_education()
{
    return super.getfromtable("select * from prs_education  WHERE id='"+ id +"'");
}
 public String delete_prs_education()
 {
    String query="delete from prs_education WHERE id='"+ id +"'";
    String message=super.tableinsertupdatedelete(query);
    return message;
 }
}
