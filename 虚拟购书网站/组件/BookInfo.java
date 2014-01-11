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
	            private int Qway;
	            private int isClear;
	            private String Qureystr;
	            private String salepeoplename;
	            private int saleid;
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
	            public void setQway(int Qway)
	            {
	            	this.Qway=Qway;
	            }
	            public void setSaleid(int saleid)
	            {
	            	this.saleid=saleid;
	            }
	            public void setQueryStr(String str)
	            {
	            	this.Qureystr=str;
	            }
	            public void setSalepeoplename(String name)
	            {
	            	this.salepeoplename=name;
	            }
	            public void setIsclear(int isClear)
	            {
	            	 this.isClear=isClear;
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
	            public String getQureystr()
	            {
	            	return(this.Qureystr);
	            }
	            public String getAuthor()
	            {
	            	return(this.author);
	            }
	            public String getSalepeoplename()
	            {
	            	return(this.salepeoplename);
	            }
	            public String getPulish()
	            {
	            	return(this.pulish);
	            }
	            public int getSaleid()
	            {
	            	//return(this.ChangedFromInt(this.saleid));
	               return(this.saleid);
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
	            public String ablenumber()
	            {
	            	return(this.tablenumber);
	            }
	            public int getQway()
	            {
	            	return(this.Qway);
	            }
	            public int getIsclear()
	            {
	            	return(this.isClear);
	            }
	            
	            public String ChangedFromInt(int number)
	            {
	            	return(number+"");
	            }
	            public String ChangedFromDouble(double number)
	            {
	            	return(number+"");
	            }
	            public int ChangedFromString(String str)
	            {
	            	return(Integer.parseInt(str));
	            }
	            public double ChangeFromStringD (String str)
	            {
	            	 return(Double.parseDouble(str));
	            }
	            

}
