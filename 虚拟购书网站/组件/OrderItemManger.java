package DateManger;
import java.sql.ResultSet;
public class OrderItemManger extends DBMS {
                
	             private ResultSet res;
	             
	             public OrderItemManger()
	             {
	            	 this.getConnection();
	            	 this.res=null;
	             }
	             public ResultSet getOrder_item(String number)//根据在表中的位置查询
	             {
	            	  try{
	            		  String sql="SELECT * FROM orderitem WHERE number='"+number+"'";
	            		  this.res=this.doSelect(sql);
	            		  }catch(Exception e)
	            	  {
	            		  e.printStackTrace();
	            	  }
	            	  return(this.res);
	             }
	             public ResultSet getOrder_item2(String number)//根据原来bookorder表中的主键查询,利用外键
	             {
	            	      try{
	            	    	 String sql="SELECT *FROM orderitem WHERE booknumber='"+number+"'";
	            	    	 this.res=this.doSelect(sql);
	            	      }catch(Exception e){
	            	    	  e.printStackTrace();
	            	      }
	            	      return(res);
	             }
	             public int insertOrder_item(String tatolnumber,int ordernumber,String comment,String isbn,String author,String title,String pulish)//插入操作，对于表中是整形值的数据一定要用整形进行操作，防止外界输入错误值而插表中
	             {
	            	 int counter=0;
	            	 try{
	            		 String sql="INSERT INTO orderitem (booknumber,ordermodel,comment,isbn,author,pulish,title) VALUES('"+ordernumber+"','"+tatolnumber+"','"+comment+"','"+isbn+"','"+author+"','"+pulish+"','"+title+"')";
	            		 counter=this.doInsert(sql);
	            		 this.close();
	            	 }catch(Exception e)
	            	 {
	            		 e.printStackTrace();
	            	 }
	            	 return(counter);
	             }
	             public int delOrder_item(String number)//根据表中的主键来删除,单个删除
	             {
	            	   int counter=0;
	            	   try{
	            		   String sql="DELETE FROM orderitem WHERE number='"+number+"'";
	            		   counter=this.doInsert(sql);
	            		   this.close();
	            		 }catch(Exception e){
	            		   e.printStackTrace();
	            	   }
	            	   return(counter);
	             }
	             public int delOrder_itme(int number)//根据表中的外键来删除,至少一个删除
	             {
	            	  int counter=0;
	            	  try{
	            		  String sql="DELETE FROM orderitem WHERE booknumber='"+number+"'";
	            		  counter=this.doInsert(sql);
	            		  this.close();
	            	  }catch(Exception e)
	            	  {
	            		  e.printStackTrace();
	            	  }
	            	  return(counter);
	             }
	             public int updateOrder_item(String number,String comment,String isbn)//修改书号和评论
	             {
	            	   int counter=0;
	            	   try{
	            		   String sql="UPDATE orderitem SET isbn='"+isbn+"',comment='"+comment+"' WHERE number='"+number+"'";
	            		   counter=this.doUpdate(sql);
	            		}catch(Exception e){
	            		   e.printStackTrace();
	            	   }
	            	   return(counter);
	            	   
	             }
	             public int updateOrder(String number,String author,String title,String pulish)
	             {
	            	   int counter=0;
	            	   try{
	            		   String sql="UPDATE orderitem SET author='"+author+"',title='"+title+"',pulish='"+pulish+"' WHERE number='"+number+"'";
	            	       counter=this.doUpdate(sql);
	            	       this.close();
	            	   }catch(Exception e){
	            		   e.printStackTrace();
	            	   }
	            	   return(counter);
	             }
	             public int updateOrder_item(String number,int ordernumber)//修改订单编号
	             {
	            	   int counter=0;
	            	   try{
	            		   String sql="UPDATE orderitem SET booknumber='"+ordernumber+"' WHERE number='"+number+"'";
	            	       counter=this.doUpdate(sql);
	            	       this.close();
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
