package Login;
import java.sql.ResultSet;
public class BlogManager {
	              
	           private DBMS dbcon=null;
	           private String username;
	           private String userid;
	           private int number;
	           private String aritcle;
	           private String pulishtime;
	           private String theme;
	           private String updatetime;
	           private ResultSet res=null;
	           
	           public BlogManager()
	           {
	        	  this.dbcon=new DBMS();
	        	  this.userid="";
	        	  this.username="";
	        	  this.number=0;
	        	  this.aritcle="";
	        	  this.theme="";
	        	  this.pulishtime="";
	           }
	           public void setUserid(String userid)
	           {
	        	   this.userid=userid;
	           }
	           public String getUserid()
	           {
	        	   return(this.userid);
	           }
	           public void setUsername(String username)
	           {
	        	   this.username=username;
	           }   
	           public String getUsername()
	           {
	        	   return(this.username);
	           }
	           public void setTheme(String theme)
	           {
	        	   this.theme=theme;
	           }
	           public String getTheme()
	           {
	        	   return(this.theme);
	           }
	           public void setArticle(String article)
	           {
	        	   this.aritcle=article;
	           }
	           public String getArticle()
	           {
	        	   return(this.aritcle);
	           }
	           public void setTime(String time)
	           {
	        	   this.pulishtime=time;
	           }
	           public String getIime()
	           {
	        	   return(this.pulishtime);
	           }
               public void setNumber(int number)
               {
            	   this.number=number;
               }
               public int getNumber()
               {
            	   return(this.number);
               }
	           
	            public ResultSet getBlog(String userid)
	            {
	                this.res=null; 
	                try{
	                  this.dbcon.getConnection();
	                  String sql="SELECT *FROM blog WHERE userid="+userid;
	                  this.res=this.dbcon.doSelect(sql);
	                }catch(Exception e){
	                	e.getStackTrace();
	                }
	                return(res);
	            }
	            public ResultSet getBlog()
	            {
	            	this.res=null;
	            	try{
	            		this.dbcon.getConnection();
	            		String sql="SELECT *FROM blog";
	            		this.res=this.dbcon.doSelect(sql);
	            	}catch(Exception e){
	            		e.getStackTrace();
	            	}
	            	return(res);
	            }
	            public ResultSet getBlognumber(String number)
	            {
	            	   this.res=null;
	            	   try{
	            		   this.dbcon.getConnection();
	            		   String sql="SELECT * FROM blog WHERE number="+number;
	            		   res=dbcon.doSelect(sql);
	            	   }catch(Exception e){
	            		   e.getStackTrace();
	            	   }
	            	   return(this.res);
	            }
	            public int insertBlog(String bloger[])//numberΪ��������
	            {
	            	  int count=0;
	            	  try{
	            		  this.dbcon.getConnection();
	            		  String sql="INSERT INTO blog(username,userid,theme,article,pulishtime) VALUES('"+bloger[0]+"','"+bloger[1]+"','"+bloger[2]+"','"+bloger[3]+"','"+bloger[4]+"')";//����������д���ֶ�
	            		  count=this.dbcon.doInsert(sql);
	            		  this.close();
	            	  }catch(Exception e){
	            		  e.getStackTrace();
	            	  }
	            	  return (count);
	            }
	            public void close()
	            {
	            	this.dbcon.close();
	            }
	            public int updateBlogtheme(String theme,String userid,String lasttheme)//���¸��˵ı���,����useri�ͱ���������
	            {
	                int count=0;
	                try{
	                	this.dbcon.getConnection();
	                	String sql="UPDATE blog SET theme='"+theme+"' WHERE userid='"+userid+"' AND theme='"+lasttheme+"'";
	                	count=this.dbcon.doUpdate(sql);
	                	
	                	this.close();
	                }catch(Exception e)
	                {
	                	e.getStackTrace();
	                }
	                return(count);
	            }
	            public int updateBlog(String article,String userid,String theme)//���¸��˵�����,���õ��Ǳ����userid
	            {
	            	int count=0;
	            	try{
	            		this.dbcon.getConnection();
	            		String sql="UPDATE blog SET article='"+article+"'WHERE userid='"+userid+"' AND theme='"+theme+"'";
	            	    count=this.dbcon.doUpdate(sql);
	            	    
	            	    this.close();
	            	}catch(Exception e)
	            	{
	            		e.getStackTrace();
	            	}
	            	return count;
	            }
	            public int UpdateBlog(String number,String article)//��������number��������������,ͬʱ�����޸�ʱ��
	            {
	                  int count=0;
	                  try{
	                	  this.dbcon.getConnection();
	                	  String sql="UPDATE blog SET article='"+article+"' WHERE number='"+number+"'";
	                	  count=this.dbcon.doUpdate(sql);
	                	  this.updatetime(number, this.getnowtime());
	                	  this.close();
	                  }catch(Exception e){
	                	  e.getStackTrace();
	                  }
	                  return(count);
	            }
	            
	            public int UpdateBlogtheme(String number,String theme)//����number�������������µı���
	            {
	            	  int count=0;
	            	  try{
	            		  String sql="UPDATE blog SET theme='"+theme+"' WHERE number='"+number+"'";
	            		  this.dbcon.getConnection();
	            		 count=this.dbcon.doUpdate(sql); 
	            		 this.updatetime(number, this.getnowtime());
	            		 this.close();
	            	  }catch(Exception e){
	            		  e.getStackTrace();
	            	  }
	            	  return(count);
	            }
	            public int delBlog(String userid ,String theme)//�����û����ͱ������ɾ������
	            {
	            	  int count=0;
	            	  try{
	            		  this.dbcon.getConnection();
	            		  String sql="DELETE FROM blog WHERE userid='"+userid+"'AND theme='"+theme+"'";
	            		  count=this.dbcon.doDelete(sql);
	            		  
	            		  this.close();
	            	  }catch(Exception e){
	            		  e.getStackTrace();
	            	  }
	            	  return(count);
	            }
	            public int delBolg(String number)//��������number��ɾ������
	            {
	            	  int count=0;
	            	  try{
	            		  this.dbcon.getConnection();
	                      String sql="DELETE FROM blog WHERE number="+number;		 
	            		  count=this.dbcon.doDelete(sql);
	            		  this.close();
	            	  }catch(Exception e)
	            	  {
	            		  e.getStackTrace();
	            	  }
	            	  return(count);
	            }
	            public int delBloguserid(String userid)
	            {
	            	 int count=0;
	            	 try{
	            		 this.dbcon.getConnection();
	            		 String sql="DELETE FROM blog WHERE userid="+userid;
	            		 count=this.dbcon.doDelete(sql);
	            		 this.close();
	            	 }catch(Exception e){
	            		 e.getStackTrace();
	            	 }
	            	 return(count);
	            }
	            public int updatetime(String number,String time)
	            {
	            	int count=0;
	            	try{
	                    String sql="UPDATE blog SET updatetime='"+time+"' WHERE number='"+number+"'";		
	            	    //this.dbcon.getConnection();
	            	    count=this.dbcon.doUpdate(sql);
	            	    //this.close();
	            	}catch(Exception e){
	            		e.getStackTrace();
	            	}
	               return(count);
	            }
                public String getnowtime()
                {
                	return(new java.util.Date().toString());
                }
}
