package Login;
import java.sql.ResultSet;
public class UserManger {
               
	          private DBMS dbcon=null;
	          private String name;
	          private String id;
	          private String sex;
	          private String age;
	          private String addresss;
	          private String phone;
	          private String job;
	          public String getName()
	          {
	        	  return(this.name);
	          }
	          public String getId()
	          {
	        	  return(this.id);
	          }
	          public String getSex()
	          {
	        	  return(this.sex);
	          }
	          public String getAge()
	          {
	        	  return(this.age);
	          }
	          public String getAddress()
	          {
	        	  return(this.addresss);
	          }
	          public String getJob()
	          {
	        	  return(this.job);
	          }
	          public String getPhone()
	          {
	        	  return(this.phone);
	          }
	          public void setName(String name)
	          {
	        	  this.name=name;
	          }
	          public void setId(String id)
	          {
	        	  this.id=id;
	          }
	          public void setSex(String sex)
	          {
	        	  this.sex=sex;
	          }
	          public void setAge(String age)
	          {
	        	  this.age=age;
	          }
	          public void setAddress(String address)
	          {
	        	  this.addresss=address;
	          }
	          public void setPhone(String phone)
	          {
	        	  this.phone=phone;  
	          }
	          public void setJob(String job)
	          {
	        	  this.job=job;
	          }
	          public UserManger()
	          {
	        	  this.dbcon=new DBMS();
	          }
	          public void showInfo()
	          {
	        	 try{
	        		 dbcon.getConnection();
	        		 String sql="SELECT * FROM userinfo";
	        		 ResultSet res=dbcon.doSelect(sql);
	        		 while(res.next()){
	        			 System.out.println(res.getString("name"));
	        			 System.out.println(res.getString("id"));
	        			 System.out.println(res.getString("sex"));
	        			 System.out.println(res.getString("jod"));
	        			 System.out.println(res.getString("address"));
	        			 System.out.println(res.getString("phone"));
	        		 }
	        	 }catch(Exception e){
	        		 e.getStackTrace();
	        	 }
	          }
	          public ResultSet userinfo()
	          {     
	        	  ResultSet res=null;
	        	  try{
	                  String sql="SELECT * FROM userinfo";
	        		  dbcon.getConnection();
	        		  res=dbcon.doSelect(sql);
	        	  }catch(Exception e){
	        		  e.getStackTrace();
	        	  }
	        	  return(res);
	          }
	          public ResultSet userinfo(String userid)
	          {
	        	  ResultSet res=null;
	        	  try{
	        		  String sql="SELECT * FROM userinfo WHERE id='"+userid+"'";
	        		  dbcon.getConnection();
	        		  res=dbcon.doSelect(sql);
	        		}catch(Exception e){
	        		  e.getStackTrace();
	        	  }
	        	  return(res);
	          }
	          public int addUser(String user[])//此表以name为主键
	          {
	        	  int count=0;
	        	  try{
	        		 dbcon.getConnection();
	        String sql="INSERT INTO userinfo(name,id,sex,age,jod,address,phone,ran)"
            +"VALUES('"+user[0]+"','"+user[1]+"','"+user[2]+"','"+user[3]+"','"+user[4]+"','"+user[5]+"','"+user[6]+"','"+user[7]+"')";
	        	     count=dbcon.doInsert(sql);
	        	     dbcon.close();
	        	   }
	        	  catch(Exception e)
	        	   {
	        		  e.getStackTrace(); 
	        	  }
	        	  return(count);
	          }
	          
	          public int delUser(String userid)
	          {
	        	   int count=0;
	        	   try{
	        		   dbcon.getConnection();
	        		   String sql="DELETE FROM userinfo WHERE id="+userid;
	        		   count=dbcon.doDelete(sql);
	        		   dbcon.close();
	        	}catch(Exception e){
	        		   e.getStackTrace();
	        	   }
	        	   return (count);
	          }
	          
	          public int updataUser(String user[],String userid)
	          {
	        	    int count=0;
	        	    try{
	        	    	this.dbcon.getConnection();
	        	    	String sql="UPDATE userinfo SET name='"+user[0]+"',id='"+user[1]+"',sex='"+user[2]+"',age='"+user[3]+"',jod='"+user[4]+"'" +
	        	    ",address='"+user[5]+"',phone='"+user[6]+"' WHERE id="+userid;
	        	    	count=dbcon.doUpdate(sql);
	        	    	dbcon.close();
	        	    }catch(Exception e)
	        	    {
	        	    	e.getStackTrace();
	        	    }
	        	    return count;
	          }
	          
	          public void close()
	          {
	        	  this.dbcon.close();
	          }

}
