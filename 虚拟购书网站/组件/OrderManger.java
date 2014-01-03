package DateManger;
import java.sql.ResultSet;
public class OrderManger extends DBMS {
      
	               private ResultSet res;
	               
	               public OrderManger()
	               {
	            	 this.res=null;
	            	 this.getConnection();
	               }
	               public ResultSet getOrders(String userid)//根据用户身份查询
	               {
	            	      try{
	            	    	  String sql="SELECT *FROM bookorder WHERE userid='"+userid+"'";
	            	    	  this.res=this.doSelect(sql);
	            	      }catch(Exception e)
	            	      {
	            	    	  e.printStackTrace();
	            	      }
	            	      return(this.res);
	               }
	               public ResultSet getOrders_single(String number)
	               {
	            	     try{
	            	    	 String sql="SELECT *FROM bookorder WHERE odernumber='"+number+"'";
	            	    	 this.res=this.doSelect(sql);
	            	     }catch(Exception e)
	            	     {
	            	    	 e.printStackTrace();
	            	     }
	            	     return(res);
	               }
	               
	               public int insertOrder(String username,String userid,String orderdate,String paybill,String ispay,String comment)
	               {
	            	   int counter=0;
	            	   try{
	            		   String sql="INSERT INTO bookorder (username,userid,orderdate,paybill,ispay,comment) VALUES('"+username+"','"+userid+"','"+orderdate+"','"+paybill+"','"+ispay+"','"+comment+"')";
	            		   counter=this.doInsert(sql);
	            		   this.close();
	            	   }catch(Exception e){
	            		   e.printStackTrace();
	            	   }
	            	   return(counter);
	               }
	               public int delOrder(String tablenumber)
	               {
	            	  int counter=0;
	            	  try{
	            		  String sql="DELETE FROM bookorder WHERE odernumber='"+tablenumber+"'";
	            		  counter=this.doDelete(sql);
	            		  this.close();
	            	  }catch(Exception e){
	            		  e.printStackTrace();
	            	  }
	            	  return(counter);
	               }
	               public int updateOder(String tablenumber,String username,String userid,String orderdate,String paybill,String ispay)
	               {
	            	   int counter=0;
	            	   try{
	            		   String sql="UPDATE bookorder SET username='"+username+"',userid='"+userid+"',orderdate='"+orderdate+"',paybill='"+paybill+"',ispay='"+ispay+"' WHERE odernumber='"+tablenumber+"'";
	            		   counter=this.doUpdate(sql);
	            		   this.close();
	            	   }catch(Exception e){
	            		   e.printStackTrace();
	            	   }
	            	   return(counter);
	               }
}
