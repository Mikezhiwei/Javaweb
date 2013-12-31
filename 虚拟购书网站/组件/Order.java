package DateManger;

public class Order {
                
	           private String order_number;
	           private String userid;
	           private String username;
	           private String order_date;
	           private String comment;
	           private double  paybill;
               private String isPay;	           
	           public Order()
	           {
	        	   this.paybill=0.0;
	           }
	           public void setOrdernumber(String Order_number)
	           {
	        	    this.order_number=Order_number;
	           }
	           public void setUserid(String userid)
	           {
	        	   this.userid=userid;
	           }
	           public void setOrder_date(String date)
	           {
	        	   this.order_date=date;
	           }
	           public void setComment(String comment)
	           {
	        	   this.comment=comment;
	           }
	           public void setUsername(String username)
	           {
	        	   this.username=username;
	           }
	           public void setPaybill(double bill)
	           {
	        	   this.paybill=bill;
	           }
	           public void setIspay(String ispay)
	           {
	        	   this.isPay=ispay;//0,代表未付款,1.代表已经付款
	           }
	           public String getOrdernumber()
	           {
	        	   return(this.order_number);
	           }
	           public String getOrder_date()
	           {
	        	   return(this.order_date);
	           }
	           public String  gerPaybill()
	           {
	        	  return(this.ChangeFromDoule(this.paybill));   
	           }
	           public String getUserid()
	           {
	        	   return(this.userid);
	           }
	           public String getUsername()
	           {
	        	   return(this.username);
	           }
	           public String getComment()
	           {
	        	   return(this.comment);
	           }
	           public String getIspay()
	           {
	        	   return(this.isPay);
	           }
	           public String ChangeFromDoule(double price)
	           {
	        	     return(price+"");
	           }
	           public double ChangeFromString(String str)
	           {
	        	   return(Double.parseDouble(str));
	           }
	           
	           
}
