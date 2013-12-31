package DateManger;

public class LoginInfo {
                 
	          private String userid;
	          private String password;
	          private String tablenumber;
	          private String password2;
	          public LoginInfo()
	          {
	        	  this.userid="";
	        	  this.password="";
	          }
	          public void setTablenumber(String tablenum)
	          {
	        	  this.tablenumber=tablenum;
	          }
	          public void setPassword2(String password2)
	          {
	        	  this.password2=password2;
	          }
	          public String getTablenumber()
	          {
	        	  return(this.tablenumber);
	          }
	          public void setUserid(String userid)
	          {
	        	  this.userid=userid;
	          }
	          public void setPassword(String password)
	          {
	        	  this.password=password;
	          }
	          public String getUserid()
	          {
	        	  return(this.userid);
	          }
	          public String getPassword()
	          {
	        	  return (this.password);
	          }
	          public boolean isSamePassword()
	          {
	        	  return(this.password.equals(this.password2));  
	          }
}

