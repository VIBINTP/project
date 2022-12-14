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
public class prs_coresprofobj extends dbclass {
public String id;
public String usercode;
public String correspondence;
public String profile; 
public String objective; 
public String create_prs_coresprofobj()
 {
    String query="INSERT INTO `prs_coresprofobj`(`usercode`, `correspondence`, `profile`, ` objective`) VALUES ('"+ usercode +"','"+ correspondence +"','"+ profile +"','"+  objective +"')";
    //System.out.println(query);
   // String message=super.tableinsertupdatedelete(query);
    return query;
 }
 public String update_prs_coresprofobj()
 {
    String query="UPDATE `prs_coresprofobj` SET `usercode`='"+ usercode +"',`correspondence`='"+ correspondence +"',`profile`='"+ profile +"',`objective`='"+ objective +"' WHERE id='"+ id+"'";
    String message=super.tableinsertupdatedelete(query);
    return message;
 }
 public ResultSet retriveall_prs_coresprofobj()
{
    return super.getfromtable("select * from prs_coresprofobj");
}
 public ResultSet retrivewithid_prs_coresprofobj()
{
    return super.getfromtable("select * from prs_coresprofobj  WHERE id='"+ id +"'");
}
 public String delete_prs_coresprofobj()
 {
    String query="delete from prs_coresprofobj WHERE id='"+ id +"'";
    String message=super.tableinsertupdatedelete(query);
    return message;
 }
}
