package DateManger;
import java.sql.ResultSet;;
public class BookManger extends DBMS {
                  
	                 private ResultSet res;
	                 
	                 public BookManger()
	                 {
	                	 this.res=null;
	                	 this.getConnection();
	                 }
	                 /*建立一个可以根据多项字段进行查询的查询引擎*/
	                 public ResultSet getBookinfo()
	                 {
	                	  try{
	                		  String sql="SELECT * FROM bookinfo ";
	                		  this.res=this.doSelect(sql);
	                	  }catch(Exception e){
	                		  e.printStackTrace();
	                	  }
	                	  return(res);
	                 }
	                 public ResultSet getBookinfo(String isbn)//依据书的ISBN号码查询
	                 {
	                	  try{
	                		  String sql="SELECT *FROM bookinfo WHERE isbn='"+isbn+"'";
	                		  this.res=this.doSelect(sql);
	                	 }catch(Exception e){
	                		 e.printStackTrace();
	                	 }
	                	 return(this.res);
	                 }
	                 public ResultSet getBookinfo_number(String bnumber)//依据书在表中的位置查询
	                 {
	                	 try{
	                		 String sql="SELECT *FROM bookinfo WHERE booknumebr='"+bnumber+"'";
	                		 this.res=this.doSelect(sql);
	                	 }catch(Exception e){
	                		 e.printStackTrace();
	                	 }
	                	 return(res);
	                 }
	                 public ResultSet getBookinfo_title(String title)//依据标题查询
	                 {
	                	 try{
	                		 String sql="SELECT *FROM bookinfo WHERE title='"+title+"'";
	                		 this.res=this.doSelect(sql);
	                	 }catch(Exception e){
	                		 e.printStackTrace();
	                	 }
	                	 return(this.res);
	                 }
	                 public ResultSet getBookinfo_autohr(String author)//依据作者查询
	                 {
	                	  try{
	                		  String sql="SELECT  *FROM bookinfo WHERE author='"+author+"'";
	                		  this.res=this.doSelect(sql);
	                	  }catch(Exception e){
	                		  e.printStackTrace();
	                	  }
	                	  return(res);
	                 }
	                 public ResultSet getBookinfo_salerid(int saleid)//依照提供书籍的用户id查询
	                 {
	                	  try{
	                		  String sql="SELECT *FROM bookinfo WHERE saleid='"+saleid+"'";
	                		  this.res=this.doSelect(sql);
	                	  }catch(Exception e){
	                		  e.printStackTrace();
	                	  }
	                	  return(res);
	                 }
	                 public ResultSet getBookinfo_pulish(String pulish)//依据出版社查询
	                 {
	                	 try{
	                		 String sql="SELECT *FROM bookinfo WHERE pulish='"+pulish+"'";
	                		 this.res=this.doSelect(sql);
	                	 }catch(Exception e){
	                		 e.printStackTrace();
	                	 }
	                	 return(res);
	                 }
	                 public ResultSet getBookinfo_unclearA(String author)//模糊查询,作者
	                 {
	                	 try{
	                		 String sql="SELECT *FROM bookinfo WHERE author LIKE '%"+author.trim()+"%'";
	                	     this.res=this.doSelect(sql);
	                	 }catch(Exception e){
	                		 e.printStackTrace();
	                	 }
	                	 return(res);
	                 }
	                 public ResultSet getBookinfo_unclearT(String title)//模糊查询，标题
	                 {
	                	try{
	                		String sql="SELECT *FROM bookinfo WHERE title  LIKE '%"+title.trim()+"%'";
	                		this.res=this.doSelect(sql);
	                	}catch(Exception e)
	                	{
	                	  e.printStackTrace();
	                	}
	                	return(res);
	                 }
	                 public ResultSet getBookinfo_unclearP(String pulish)//模糊查询 出版社
	                 {
	                	 try{
	                		 String sql="SELECT *FROM bookinfo WHERE pulish LIKE '%"+pulish.trim()+"%'";
	                	     this.res=this.doSelect(sql);
	                	  }catch(Exception e){
	                		 e.printStackTrace();
	                	 }
	                	 return(res);
	                 }
	                 public ResultSet getBookinfo_unclearI(String isbn)//模糊查询 isbn号
	                 {
	                	 try{
	                		 String sql="SELECT *FROM bookinfo WHERE isbn LIKE '%"+isbn.trim()+"%'";
	                	    this.res=this.doSelect(sql);
	                	 }catch(Exception e){
	                		 e.printStackTrace();
	                	 }
	                	 return(res);
	                 }
	                 public int insertBook(String isbn,String title,String author,String pulish,String pulishdate,String price,String tatolnumber,String leavenumber,String comment,String salename,int saleid)
	                 {
	                	 int counter=0;
	                     try{
	                		 //String sql="INSERT INTO bookinfo (isbn,title,author,pulish,pulishdate,price,tatolnumber,leavenumber,comment) VALUES('"+isbn+"','"+title+"','"+author+"','"+pulish+"','"+pulishdate+"','"+price+"','"+tatolnumber+"','"+leavenumber+"','"+comment+"') ";
	                     String sql="INSERT INTO bookinfo (isbn,title,author,pulish,pulishdate,price,tatolnumber,leavenumber,comment,salepeoplename,saleid) VALUES('"+isbn+"','"+title+"','"+author+"','"+pulish+"','"+pulishdate+"','"+price+"','"+tatolnumber+"','"+leavenumber+"','"+comment+"','"+salename+"','"+saleid+"') ";
	                    	 counter=this.doInsert(sql);
	                		 this.close();
	                	 }catch(Exception e){
	                		 e.printStackTrace();
	                	 }
	                	 return(counter);
	                 }
	                	 
	                 public int delBook(String bnumber)
	                 {
	                	 int counter=0;
	                	 try{
	                		 String sql="DELETE FROM bookinfo WHERE booknumebr='"+bnumber+"'";
	                		 counter=this.doDelete(sql);
	                		 this.close();
	                	 }catch(Exception e)
	                	 {
	                		 e.printStackTrace();
	                	 }
	                	 return(counter);
	                 }
	                 public int updateBook(String bnumber,String title,String author,String isbn,String pulish,String pulishdate)//修改书的基本信息，作者，出版社，出版日期
	                 {
	                	 int counter=0;
	                	 try{
	                	    String sql="UPDATE bookinfo SET title='"+title+"',author='"+author+"',isbn='"+isbn+"',pulish='"+pulish+"',pulishdate='"+pulishdate+"' WHERE booknumebr='"+bnumber+"'";
	                		counter=this.doUpdate(sql);
	                		this.close();
	                	 }catch(Exception e)
	                	 {
	                		 e.printStackTrace();
	                	 }
	                	 return(counter);
	                 }
	                 public int updateBook(String bnumber,String price,String addnumber)
	                 {
	                	 int counter=0;
	                	 ResultSet res=this.doSelect(bnumber);
	                	 try{
	                		String sql="";
	                		
	                	 }catch(Exception e){
	                		 e.printStackTrace();
	                	 }
	                	 return(counter);
	                 }
	                 public void close()
	                 {
	                	 super.close();
	                	 this.res=null;
	                 }
	                 
}
