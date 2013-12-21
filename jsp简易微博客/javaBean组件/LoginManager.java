package Login;
import java.sql.ResultSet;
public class LoginManager {
               
	              private DBMS dbcon=null;
	              private String userid;
	              private String password;
	              
	              public void setUserid(String id)
	              {
	            	  this.userid=id;
	              }
	              public void setPassword(String pass)
	              {
	            	  this.password=pass;
	              }
	              public String getUserid()
	              {
	            	  return (this.userid);
	              }
	              public String getPassword()
	              {
	            	 return(this.password);  
	              }
	              public LoginManager()
	              {
	            	  this.dbcon=new DBMS();
	              }
	              public void showInfo()
	              {
	            	 try{
	                  dbcon.getConnection();
	            	  String sql="SELECT * FROM loginmes";
	            	  ResultSet res=this.dbcon.doSelect(sql);
	                  while(res.next())
	                  {
	                	  System.out.println(res.getString("di"));
	                	  System.out.println(res.getString("password"));
	                  }
	                  dbcon.close();
	            	 }catch(Exception e)
	            	 {
	            		 e.getStackTrace();
	            	 }
	              }
	              public boolean isExsit(String userid)
	              {
	            	 
	            	  boolean exsit=false;
	            	  try{
	            		 ResultSet res=null;
	            		 dbcon.getConnection();
	            		 String sql="SELECT * FROM loginmes WHERE di='"+userid+"'";
	            		 res=dbcon.doSelect(sql);
	            		 exsit=res.next();
	            		 this.dbcon.close();
	            	  }catch(Exception e){
	            		 System.out.println("≤È—Ø ß∞‹");
	            	  }
	            	  return(exsit);
	              }
	              public boolean isLogin(String userid,String password)
	              {
	            	  boolean login=false;
	            	  try{
	            		 ResultSet res=null;
	            		 dbcon.getConnection();
	            		 String sql="SELECT * FROM loginmes WHERE di='"+userid+"'AND password='"+password+"' ";
	            		 res=dbcon.doSelect(sql);
	            		 login=res.next();
	            	  }catch(Exception e){
	            		  e.getStackTrace();  
	            	  }
	            	  return (login);
	              }
	              public boolean isRight(String right,String userid)
	              {
	            	    boolean ran=false;
	            	    try{
	            	    	ResultSet res=null;
	            	    	dbcon.getConnection();
	            	    	String sql="SELECT * FROM loginmes WHERE di='"+userid+"'AND ran='"+right+"'";
	            	    	res=dbcon.doSelect(sql);
	            	    	ran=res.next();
	            	    }catch(Exception e){
	            	    	e.getStackTrace();
	            	    }
	            	    return(ran);
	              }  
	              public String nestId()
	              {
	            	  int count=0;
	            	  try{
	            		  dbcon.getConnection();
	            		  String sql="SELECT * FROM loginmes";
	            		  count=dbcon.doCount(sql);
	            		  count++;
	            		  dbcon.close();
	            	  }catch(Exception e){
	            		  e.getStackTrace();
	            	  }
	            	  return(count+"");
	              }
	              public int  addId(String userid,String password)
	              {
	            	    int add=0;
	            	   try{
	            		 dbcon.getConnection();
	            		 String sql="INSERT INTO loginmes(di,password)"+"VALUES('"+userid+"','"+password+"')";
	            	      add=dbcon.doInsert(sql);
	            	      dbcon.close();
	            	   }catch(Exception e)
	            	   {
           	              e.getStackTrace();
	            	   }
	            	   return(add);
	              }
	              public int addId(String userid,String password ,String range)
	              {
	            	    int count=0;
	            	    try{
	            	    	dbcon.getConnection();
	            	    	String sql="INSERT INTO loginmes(di,password,ran)"+"VALUES('"+userid+"','"+password+"','"+range+"')";
	            	    	count=dbcon.doInsert(sql);
	            	    	dbcon.close();
	            	    }catch(Exception e){
	            	    	e.getStackTrace();
	                    }
	            	    return(count);
	              }
	              public int delId(String userid)
	              {
	            	  int remove=0;
	            	  try{
	            		  dbcon.getConnection();
	            		  String sql="DELETE FROM loginmes WHERE di="+userid;
	            		 remove=dbcon.doDelete(sql);
	            		 dbcon.close();
	            	  }catch(Exception e){
	            		  e.getStackTrace();
	            	  }
	            	  return(remove);
	              }
	              public int updateId(String userid,String password)
	              {
	            	  int updated=0;
	            	  try{
	            		  dbcon.getConnection();
	            		  String sql="UPDATE loginmes SET di='"+userid+"',password='"+password+"' WHERE di='"+userid+"'";
	            		  updated=dbcon.doUpdate(sql);
	            		  dbcon.close();
	            	  }catch(Exception e){
	            		  e.getStackTrace();
	            	  }
	            	  return(updated);
	              }
	              public void close()
	              {
	            	this.dbcon.close();  
	              }
	              public int updateTime(String time,String userid)
	              {
	            	   int count=0;
	            	   try{
	            		   this.dbcon.getConnection();
	            		   String sql="UPDATE loginmes SET logintime='"+time+"'WHERE di='"+userid+"'";
	            		   count=dbcon.doUpdate(sql);
	            		   dbcon.close();
	            	   }catch(Exception e)
	            	   {
	            		   e.getStackTrace();
	            	   }
	            	   return(count);
	              }
	              public String getlogintime()
	              {
	            	    return(new java.util.Date().toString());
	              }
	              public int getMaxid()
	              {
	            	  String str="";
	            	  try{
	            		  this.dbcon.getConnection();
	            		  ResultSet res=null;
	            		  String sql="SELECT *FROM loginmes";
	            		  res=this.dbcon.doSelect(sql);
	            		  while(res.next())
	            		  {
	            			  if(res.isLast())
	            			  {
	            				  str=res.getString("di");
	            			  }
	            		  }
	            	  }catch(Exception e){
	            		  e.getStackTrace();
	            	  }
	            	 return(Integer.parseInt(str));
	              }
}                 
	              
