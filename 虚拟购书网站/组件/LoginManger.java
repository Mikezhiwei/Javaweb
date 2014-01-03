package DateManger;
import java.sql.ResultSet;
public class LoginManger extends DBMS {
                   
	             private ResultSet res;
	             public LoginManger()
	             {
	                  this.getConnection();
	             }
	              public boolean isExsit(String username)//验证用户名是否存在
	             {
	            	  boolean exsit=false;
	            	  try{
	            		  String sql="SELECT * FROM logininfo WHERE username='"+username+"'";
	            		  //String sql="SELECT * FROM logininfo WHERE username="+username;//错误的SQL语句
	            		  this.res=this.doSelect(sql);
	            		  exsit=res.next();
	            		 }catch(Exception e)
	            	   {
	            		  e.printStackTrace();
	            	   }
	            		 return(exsit);
	             }
	             public boolean isLogin(String username,String password)//验证姓名和密码是否正确
	             {
	            	  boolean login=false;
	            	  try{
	            		  String sql="SELECT *FROM logininfo WHERE username='"+username+"' AND password='"+password+"'";
	            		  this.res=this.doSelect(sql);
	            		  login=res.next();
	            	  }catch(Exception e){
	            		  e.printStackTrace();
	            	  }
	            	  return(login);
	             }
	             public int insertLogin(String userid,String password)//
	             {
	            	 int counter=0;
	            	 try{
	            		 String sql="INSERT INTO logininfo (username,password) VALUES('"+userid+"','"+password+"')";
	            		 counter=this.doInsert(sql);
	            		 this.close();
	            	 }catch(Exception e){
	            		 e.printStackTrace();
	            	 }
	            	 return(counter);
	             }
	             public int delLogin(String numebr)
	             {
	            	 int counter=0;
	            	 try{
	            		 String sql="DELETE FROM logininfo WHERE userid='"+numebr+"'";
	            		 counter=this.doDelete(sql);
	            		 this.close();
	            	 }catch(Exception e){
	            		 e.printStackTrace();
	            	 }
	            	 return(counter);
	             }
	             public int updateLoing(String userid,String password)
	             {
	            	  int counter=0;
	            	  try{
	            		  String sql="UPDATE logininfo SET password='"+password+"' WHERE userid='"+userid+"'";
	            		  counter=this.doUpdate(sql);
	            		  this.close();
	            	  }catch(Exception e){
	            		  e.printStackTrace();
	            	  }
	            	  return(counter);
	             }
	            
	             
}
