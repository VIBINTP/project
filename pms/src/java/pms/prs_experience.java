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
public String username;
public String password;
public String email; 
public String mobileno; 
public String create_prs_experience()
 {
    String query="INSERT INTO `prs_experience`(`username`, `password`, `email`, `mobileno`) VALUES ('"+ username +"','"+ password +"','"+ email +"','"+ mobileno +"')";
    String message=super.tableinsertupdatedelete(query);
    return message;
 }
 public String update_prs_experience()
 {
    String query="UPDATE `prs_experience` SET `username`='"+ username +"',`password`='"+ password +"',`email`='"+ email +"',`mobileno`='"+ mobileno +"' WHERE id='"+ id+"'";
    String message=super.tableinsertupdatedelete(query);
    return message;
 }
 public ResultSet retriveall_prs_experience()
{
    return super.getfromtable("select * from prs_experience");
}
 public ResultSet retrivewithid_usersetting()
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
