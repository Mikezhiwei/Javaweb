package DateManger;

public class BookInfo {
           
	            private String isbn;
	            private String title;
	            private String author;
	            private String pulish;
	            private String pulishdate;
	            private double  price;
	            private String comment;
	            private int tatolNumber;
	            private int leaveNumber;
	            private String resgitdate;
	            private String tablenumber;
	            
	            public BookInfo()
	            {
	               this.tatolNumber=this.leaveNumber=0;	
	            }
	            public void setIsbn(String isbn)
	            {
	            	this.isbn=isbn;
	            }
	            public void setTitle(String title)
	            {
	            	this.title=title;
	            }
	            public void setAuthor(String author)
	            {
	            	this.author=author;
	            }
	            public void setPrice(double  price)
	            {
	            	this.price=price;
	            }
	            public void setPulish(String pulish)
	            {
	            	this.pulish=pulish;
	            }
	            public void setTablenumber(String num)
	            {
	            	this.tablenumber=num;
	            }
	            public void setPulishdate(String date)
	            {
	            	this.pulishdate=date;
	            }
	            public void setComment(String comment)
	            {
	            	this.comment=comment;
	            }
	            public void setTotalNumber(int number)
	            {
	            	this.tatolNumber=number;
	            }
	            public void setLeaveNumber(int number)
	            {
	            	this.leaveNumber=number;
	            }
	            public void  resgitdate(String regdate)
	            {
	            	this.resgitdate=regdate;
	            }
	            
	            
	            public String getIsbn()
	            {
	            	return(this.isbn);
	            }
	            public String getTitle()
	            {
	            	return(this.title);
	            }
	            public String getAuthor()
	            {
	            	return(this.author);
	            }
	            public String getPulish()
	            {
	            	return(this.pulish);
	            }
	            public String getPulishdate()
	            {
	            	return(this.pulishdate);
	            }
	            public String getComment()
	            {
	            	return(this.comment);
	            }
	            public String getPrice()
	            {
	            	return(this.price+"");
	            }
	            public String getResgitdate()
	            {
	            	return(this.resgitdate);
	            }
	            public String  getTotalNumber()
	            {
	            	return(this.ChangedFromInt(this.tatolNumber));
	            }
	            public String getLeaveNumber()
	            {
	            	return(this.ChangedFromInt(this.leaveNumber));
	            }
	            public String getTablenumber()
	            {
	            	return(this.tablenumber);
	            }
	            public String ChangedFromInt(int number)
	            {
	            	return(number+"");
	            }
	            public int ChangedFromString(String str)
	            {
	            	return(Integer.parseInt(str));
	            }
	            

}
