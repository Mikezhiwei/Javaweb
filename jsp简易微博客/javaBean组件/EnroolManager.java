package Login;
import java.sql.ResultSet;
public class EnroolManager {
	           
            private LoginManager login=null;
            private UserManger user=null;
            
            public EnroolManager()
            {
            	 this.login=new LoginManager();
            	 this.user=new UserManger();
            }
            
            public  int [] EnrollUser(String user[],String userid,String password)
            {  
            	 int []insert=new int [2];
                 insert[0]=this.login.addId(userid, password);
                 insert[1]=this.user.addUser(user);
                 return(insert);
            }
            public int [] EnrollUser(String user[],String userid,String password,String right)
            {
            	 int []insert=new int[2];
            	 insert[0]=this.login.addId(userid, password,right);
            	 insert[1]=this.user.addUser(user);
            	 return(insert);
            }
            public int[] DeleteUser(String userid)
            {
            	int []remove=new int[2];
            	remove[0]=this.login.delId(userid);
            	remove[1]=this.user.delUser(userid);
            	return(remove);
            }
}
