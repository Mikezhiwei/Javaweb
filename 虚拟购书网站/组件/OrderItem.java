package DateManger;

public class OrderItem {
                    
	              private int  Ordernumber;
	              private String isbn;
	              private int BookNumber;//¶©¹ºµÄÊýÁ¿
	              private String comment;
	              private String tablenumber;
	              private String title;
	              private String author;
	              private String pulish;
	              
	              public OrderItem()
	              {
	            	  this.BookNumber=0;
	              }
	              
	              public void setIsbn(String isbn)
	              {
	            	 this.isbn=isbn; 
	              }
	              public void setOrdernumber(int number)
	              {
	            	  this.Ordernumber=number;
	              }
	              public void setTablenumber(String str)
	              {
	            	  this.tablenumber=str;
	              }
	              public void setAuthor(String author)
	              {
	            	  this.author=author;
	              }
	              public void setTitle(String title)
	              {
	            	  this.title=title;
	              }
	              public void setPulish(String pulish)
	              {
	            	  this.pulish=pulish;
	              }
	              public void setComment(String str)
	              {
	            	  this.comment=str;
	              }
	              public void setBooknumber(int n)
	              {
	            	  this.BookNumber=n;
	              }
	              public String getIsbn()
	              {
	            	  return(this.isbn);
	              }
	              public int getOrdernumber()
	              {
	            	  return(this.Ordernumber);
	              }
	              public String getAuthor()
	              {
	            	  return(this.author);
	              }
	              public String getPulish()
	              {
	            	  return(this.pulish);
	              }
	              public String getTitle()
	              {
	            	   return(this.title);
	              }
	              public String getComment()
	              {
	            	  return(this.comment);
	              }
	              public String  getBooknumebr()
	              {
	            	  return(this.BookNumber+"");
	              }
	              public String getTableNumber()
	              {
	            	  return(this.tablenumber);
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