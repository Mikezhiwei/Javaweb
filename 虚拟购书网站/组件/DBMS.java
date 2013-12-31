package DateManger;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

public class DBMS {
	  private   ResultSet res=null;
      private  Statement sta=null;
      private     Connection con=null;
    
    private String url;
    private String username;
    private String password;
    public DBMS()
    {
 	   this.url="";
 	   this.username="";
 	   this.password="";
    }
    public void getConnection()
    {
 	   this.url="jdbc:mysql://localhost:3306/bookmarket";
 	   //this.url="jdbc:mysql://localhost:3306";
 	   this.username="root";
 	   this.password="123456";
 	   try{
 		   Class.forName("com.mysql.jdbc.Driver").newInstance();
 		   con=DriverManager.getConnection(url, username, password);
 		   this.sta=con.createStatement();
 		   System.out.println("�������ӳɹ�");
 	   }catch(Exception e){
 		   System.out.println("���ݿ����Ӵ���");
 	   }
    }
    public void getConnection(String sql)
    {
 	   this.username="root";
 	   this.password="123456";
 	   this.url="jdbc:mysql://localhost:3306/"+sql;
 	   try{
 		   Class.forName("com.mysql.jdbc.Driver").newInstance();
 		   con=DriverManager.getConnection(url,username,password);
 		   this.sta=con.createStatement();
 		   System.out.println(sql+"DB"+"�Ѿ����ӳɹ�");
 	   }catch(Exception e){
 		   System.out.println("���ݿ����Ӵ���");
 	   }
    }
    public ResultSet doSelect(String sql)
    {
 	      try{
 	        this.res=this.sta.executeQuery(sql);
 	       }catch(Exception e){
 	    	  System.out.println("��ѯʧ��");
 	    	  System.out.println("����SQL���");
 	      }
 	      return(this.res);
    }
    public int doInsert(String sql)
    {  
 	    int sum=0;
 	    try{
 	      sum=this.sta.executeUpdate(sql);
 	    }catch(Exception e){
 	    	e.printStackTrace();
 	    	System.out.println("����ʧ��");
 	        System.out.println("����SQL���");
 	    }
 	    return (sum);
    }
    public int doDelete(String sql)
    {
 	   int sum=0;
 	   try{
 		   sum=this.sta.executeUpdate(sql);
 	   }catch(Exception e){
 		   System.out.println("ɾ��ʧ��");
 		   System.out.println("���SQL���");
 	   }
 	   return(sum);
    }
    public int doUpdate(String sql)
    {
 	   int sum=0;
 	   try{
 		   sum=this.sta.executeUpdate(sql);
 	   }catch(Exception e){
 		   System.out.println("����ʧ��");
 	   }
 	   return(sum);
    }
    public int doCount(String sql)
    {
 	   int count=0;
 	   try{
 		   res=this.sta.executeQuery(sql);
 		   while(res.next())
 		   {
 			  count++;   
 		   }
 	   }catch(Exception e){
 		   System.out.println("��������");
 	   }
 	   return(count);
    }
    public void close()
    {
 	   try{
 		 if(this.res!=null)
 		 {
 			 res.close();
 			 res=null;
 		 }
 		 if(this.sta!=null)
 		 {
 			 sta.close();
 			 sta=null;
 		 }
 		 if(this.con!=null)
 		 {
 			 con.close();
 			 con=null;
 		 }
 		 System.out.println("�رճɹ�");
 	   }catch(Exception e){
 		  System.out.println("�ر�ʧ��");   
 	   }
    }
    public String ChangeCoding(String str)//�����������������
    {
   	     String s=str;
   	     try{
   	    	 byte tempB[]=s.getBytes("ISO-8859-1");
   	    	 s=new String(tempB);
   	       }catch(Exception e){
   	        e.getStackTrace(); 	 
   	     }
   	       return (s);
    }
    public String getLogintime()
    {
 	    String currentdate;
 	    currentdate=new Date().toString();
 	    return(currentdate);
    }
    public  boolean excute(String sql)
    {
 	    boolean excute=false;
 	    try{
 	        excute=this.sta.execute(sql);
 	    }catch(Exception e){
 	        System.out.println("����SQL���");
 	    }
 	    return(excute);
    }
}
