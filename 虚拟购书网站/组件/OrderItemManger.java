package DateManger;
import java.sql.ResultSet;
public class OrderItemManger extends DBMS {
                
	             private ResultSet res;
	             
	             public OrderItemManger()
	             {
	            	 this.getConnection();
	            	 this.res=null;
	             }
	             public ResultSet getOrder_item(String number)//�����ڱ��е�λ�ò�ѯ
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
	             public ResultSet getOrder_item2(String number)//����ԭ��bookorder���е�������ѯ,�������
	             {
	            	      try{
	            	    	 String sql="SELECT *FROM orderitem WHERE booknumber='"+number+"'";
	            	    	 this.res=this.doSelect(sql);
	            	      }catch(Exception e){
	            	    	  e.printStackTrace();
	            	      }
	            	      return(res);
	             }
	             public int insertOrder_item(String tatolnumber,int ordernumber,String comment,String isbn,String author,String title,String pulish)//������������ڱ���������ֵ������һ��Ҫ�����ν��в�������ֹ����������ֵ�������
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
	             public int delOrder_item(String number)//���ݱ��е�������ɾ��,����ɾ��
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
	             public int delOrder_itme(int number)//���ݱ��е������ɾ��,����һ��ɾ��
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
	             public int updateOrder_item(String number,String comment,String isbn)//�޸���ź�����
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
	             public int updateOrder_item(String number,int ordernumber)//�޸Ķ������
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
