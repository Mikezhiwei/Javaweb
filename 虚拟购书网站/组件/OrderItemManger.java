package DateManger;
import java.sql.ResultSet;
public class OrderItemManger extends DBMS {
                
	             private ResultSet res;
	             
	             public OrderItemManger()
	             {
	            	 this.getConnection();
	            	 this.res=null;
	             }
	             public ResultSet getOrder_item(String nunmber )
	             {
	            	  try{
	            		  String sql="SELECT *FROM orderitem WHERE "
	            	  }
	             }
	             
	             
}
