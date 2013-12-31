package DateManger;

public class OrderItem {
                    
	              private String Ordernumber;
	              private String isbn;
	              private int BookNumber;//¶©¹ºµÄÊıÁ¿
	              private String tablenumber;
	              
	              public OrderItem()
	              {
	            	  this.BookNumber=0;
	              }
	              
	              public void setIsbn(String isbn)
	              {
	            	 this.isbn=isbn; 
	              }
	              public void setOrdernumber(String str)
	              {
	            	  this.Ordernumber=str;
	              }
	              public void setTablenumber(String str)
	              {
	            	  this.tablenumber=str;
	              }
	              public void setBooknumber(int n)
	              {
	            	  this.BookNumber=n;
	              }
	              public String getIsbn()
	              {
	            	  return(this.isbn);
	              }
	              public String getOrdernumber()
	              {
	            	  return(this.Ordernumber);
	              }
	              public String getTablenumber()
	              {
	            	  return(this.tablenumber);
	              }
	              public int getBooknumebr()
	              {
	            	  return(this.BookNumber);
	              }
	              public String ChangeFromInt(int number)
	              {
	            	  return(number+"");
	              }
	              public int ChangeFromString(String str)
	              {
	            	  return(Integer.parseInt(str));
	              }
	             
}