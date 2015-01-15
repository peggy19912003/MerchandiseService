
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;
/**
 * 
 * API
 * 
 * query_goods  //seach good by id
 * param  id
 * 
 * submit   // insert good 
 * param  ....
 * **/
public class submit_goods {
	private Connection con = null; //Database objects 

	  private Statement stat = null; 
	  private check_token ch;
	  private ResultSet rs = null; 

	  private PreparedStatement pst = null; 

	 // private String selectSQL = "select * from book where isbn = ?"; 
	
	 public submit_goods(){
		 try{
				connect();
				ch = new check_token();
			}catch(Exception e){
				//return e.toString();
				//return "NO"+e.getMessage();
			}
	 }
	 public String ss(String aa){return aa;}
	 public int submit(String name,String describe,String account,String date,int days,double money,String pic,String bclass,String sclass){ 
		System.out.println("in submit");	
		 try{
				if(!ch.check_token(account)){
					return -2;
				}
				System.out.println("in submit try");	
			}catch(Exception e){
				System.out.println("in submit Exception"+e.getMessage());	
				return -3;
			}
		 	String str="";//insert goods(`name`,`describe`,`account`,`date`,`days`,`money`,`pic`,`bclass`,`sclass`) values('番仔火','想要嗎?送你一支番仔火','aaa','2014-12-31 10:20:44',365,81000,'/picture/0001.pic','生活','文具')
			String insertSQL = "insert goods(`name`,`describe`,`account`,`date`,`days`,`money`,`pic`,`bclass`,`sclass`) values(?,?,?,?,?,?,?,?,?)"; 
			ArrayList<String> booklist = new ArrayList<String>();
			int id=0;//http://127.0.0.1:8080/submit_goods/services/submit_goods/submit?name=%E7%B6%B2%E5%9D%80%E6%B8%AC%E8%A9%A6&describe=%E6%88%91%E7%94%A8%E7%B6%B2%E5%9D%80%E5%82%B3%E7%9A%84%E5%96%94!!!&account=aaa0&date=2014-12-30%2008:48:10&days=365&money=810&pic=0000.pic&blass=%E7%B6%B2%E8%B7%AF&sclass=%E7%94%A8%E7%B6%B2%E5%9D%80
			http://127.0.0.1:8080/submit_goods/services/submit_goods/submit?name=%E7%B6%B2%E5%9D%80%E6%B8%AC%E8%A9%A6&describe=%E6%88%91%E7%94%A8%E7%B6%B2%E5%9D%80%E5%82%B3%E7%9A%84%E5%96%94&account=aaa0&date=2014-12-30&days=365&money=810&pic=0000.pic&blass=%E7%B6%B2%E8%B7%AF&sclass=%E7%94%A8%E7%B6%B2%E5%9D%80
		    try 
		    { 
    	      pst = con.prepareStatement(insertSQL, Statement.RETURN_GENERATED_KEYS); 
    	      
    	      pst.setString(1, name); 
    	      pst.setString(2, describe);
    	      pst.setString(3, account); 
    	      pst.setString(4, date); 
    	      pst.setInt(5, days); 
    	      pst.setDouble(6, money); 
    	      pst.setString(7, pic); 
    	      pst.setString(8, bclass); 
    	      pst.setString(9, sclass); 
    	      
    	      pst.executeUpdate(); 
    	      ResultSet rs = pst.getGeneratedKeys();
    	        if (rs.next()){
    	            id=rs.getInt(1);
    	        }
    	        rs.close();
    	        
    	        pst.close();
    	      
		    } 
		    catch(SQLException e) 
		    { 
		      System.out.println("Insert Exception :" + e.toString()); 
		    } 
		    return id;
		    
		    } 
	 
	 public int update_mygood(int id,String name,String describe,String account,String date,int days,double money,String pic,String bclass,String sclass){ 
				
			 try{
					if(!ch.check_token(account)){
						return -1;
					}
					System.out.println("in submit try");	
				}catch(Exception e){
					System.out.println("in submit Exception"+e.getMessage());	
					return -1;
				}
			 	String SQL="update goods set `name`=?,`describe`=?,`date`=?,`days`=?,`money`=?,`pic`=?,`bclass`=?,`sclass`=? where id=?";
				try 
			    { 
	    	      pst = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS); 
	    	      
	    	      pst.setString(1, name); 
	    	      pst.setString(2, describe);
	    	      pst.setString(3, date); 
	    	      pst.setInt(4, days); 
	    	      pst.setDouble(5, money); 
	    	      pst.setString(6, pic); 
	    	      pst.setString(7, bclass); 
	    	      pst.setString(8, sclass); 
	    	      pst.setInt(9, id); 
	    	      pst.executeUpdate(); 
	    	      ResultSet rs = pst.getGeneratedKeys();
	    	        if (rs.next()){
	    	            id=rs.getInt(1);
	    	        }
	    	        rs.close();
	    	        
	    	        pst.close();
	    	      
			    } 
			    catch(SQLException e) 
			    { 
			      System.out.println("Insert Exception :" + e.toString()); 
			    } 
			    return id;
			    
			    } 
	 public int delete_mygood(int id,String account){ 
			
		 try{
				if(!ch.check_token(account)){
					return -1;
				}
				System.out.println("in submit try");	
			}catch(Exception e){
				System.out.println("in submit Exception"+e.getMessage());	
				return -1;
			}
		 	String str="";//insert goods(`name`,`describe`,`account`,`date`,`days`,`money`,`pic`,`bclass`,`sclass`) values('番仔火','想要嗎?送你一支番仔火','aaa','2014-12-31 10:20:44',365,81000,'/picture/0001.pic','生活','文具')
			String SQL="delete from goods where id=?";
			ArrayList<String> booklist = new ArrayList<String>();
			try 
		    { 
    	      pst = con.prepareStatement(SQL, Statement.RETURN_GENERATED_KEYS); 

    	      pst.setInt(1, id); 
    	      pst.executeUpdate(); 
      		  pst.close();
    	      
		    } 
		    catch(SQLException e) 
		    { 
		      System.out.println("Insert Exception :" + e.toString()); 
		    } 
		    return id;
		    
		    } 
	 public ArrayList<String> query_goods(int id){ 
			String str="";
			String querySQL = "select * from goods where id=?"; 
			System.out.println("query"); 
			ArrayList<String> booklist = new ArrayList<String>();
			
		    try 
		    { 
		       
		    	pst = con.prepareStatement(querySQL); 
		    	pst.setInt(1, id); 
		    	rs = pst.executeQuery(); 
		      while(rs.next()) 
		      { 
		    	  booklist.add(rs.getObject(1).toString());// id
		    	  booklist.add(rs.getObject(2).toString());// title
		    	  booklist.add(rs.getObject(3).toString());// isbn
		    	  booklist.add(rs.getObject(4).toString());// author
		    	  booklist.add(rs.getObject(5).toString());// abstract
		    	  booklist.add(rs.getObject(6).toString());// abstract
		    	  booklist.add(rs.getObject(7).toString());// abstract
		    	  booklist.add(rs.getObject(8).toString());// abstract
		    	  booklist.add(rs.getObject(9).toString());// abstract
		    	  booklist.add(rs.getObject(10).toString());// abstract
		    	  str+=(rs.getInt("id")+"\t"+ rs.getString("name")+"\t"+ rs.getString("describe")
		        		+"\t"+ rs.getString("account"))+"\t"+ rs.getString("date")+"\t"+ rs.getInt("days")
		        		+"\t"+ rs.getDouble("money")+"\t"+ rs.getString("pic")+"\t"+ rs.getString("bclass")
		        		+"\t"+ rs.getString("sclass")+"\n"; 
		      } 
		    } 
		    catch(SQLException e) 
		    { 
		      System.out.println("DropDB Exception :" + e.toString()); 
		      
		    } 
		    return booklist;
		    } 
	 
	 public ArrayList<String> query_Allgoods(){ 
			String str="";
			String querySQL = "select * from goods"; 
			System.out.println("query"); 
			ArrayList<String> booklist = new ArrayList<String>();
			
		    try 
		    { 
		       
		    	stat = con.createStatement();
		    	rs = stat.executeQuery(querySQL);
		      while(rs.next()) 
		      { 
		    	  booklist.add(rs.getObject(1).toString());// id
		    	  booklist.add(rs.getObject(2).toString());// title
		    	  booklist.add(rs.getObject(3).toString());// isbn
		    	  booklist.add(rs.getObject(4).toString());// author
		    	  booklist.add(rs.getObject(5).toString());// abstract
		    	  booklist.add(rs.getObject(6).toString());// abstract
		    	  booklist.add(rs.getObject(7).toString());// abstract
		    	  booklist.add(rs.getObject(8).toString());// abstract
		    	  //booklist.add(rs.getObject(9).toString());// abstract
		    	  booklist.add(rs.getObject(10).toString());// abstract
		    	  str+=(rs.getInt("id")+"\t"+ rs.getString("name")+"\t"+ rs.getString("describe")
		        		+"\t"+ rs.getString("account"))+"\t"+ rs.getString("date")+"\t"+ rs.getInt("days")
		        		+"\t"+ rs.getDouble("money")+"\t"+ rs.getString("pic")+"\t"+ rs.getString("bclass")
		        		+"\t"+ rs.getString("sclass")+"\n"; 
		      } 
		    } 
		    catch(SQLException e) 
		    { 
		      System.out.println("DropDB Exception :" + e.toString()); 
		      
		    } 
		    return booklist;
		    } 
	 
	 public ArrayList<String> query_bclass(){ 
			String str="";
			String querySQL = "select * from bigclass"; 
			System.out.println("query"); 
			ArrayList<String> booklist = new ArrayList<String>();
			
		    try 
		    { 
		       
		    	stat = con.createStatement();
		    	rs = stat.executeQuery(querySQL);
		      while(rs.next()) 
		      { 
		    	  booklist.add(rs.getObject(1).toString());// id
		    	  booklist.add(rs.getObject(2).toString());// name

		    	  str+=(rs.getInt("id")+"\t"+ rs.getString("bigclass")+"\n"); 
		      } 
		    } 
		    catch(SQLException e) 
		    { 
		      System.out.println("DropDB Exception :" + e.toString()); 
		      
		    } 
		    return booklist;
		    } 
	 public ArrayList<String> query_sclass(String bclass){ 
			String str="";
			String querySQL = "select * from smallclass where id=(select id from bigclass where bigclass=?)"; 
			System.out.println("query"); 
			ArrayList<String> booklist = new ArrayList<String>();
			
		    try 
		    { 
		       
		    	pst = con.prepareStatement(querySQL); 
		    	pst.setString(1, bclass); 
		    	rs = pst.executeQuery(); 
		      while(rs.next()) 
		      { 
		    	  booklist.add(rs.getObject(1).toString());// id
		    	  booklist.add(rs.getObject(2).toString());// title

		    	  str+=(rs.getInt("id")+"\t"+ rs.getString("smallclass")+"\n"); 
		      } 
		    } 
		    catch(SQLException e) 
		    { 
		      System.out.println("DropDB Exception :" + e.toString()); 
		      
		    } 
		    return booklist;
		    }
	 private void connect() throws Exception{
			//Properties properties = new Properties();
			//String configFile = "config.properties";
			//InputStream inputStream = getClass().getClassLoader().getResourceAsStream(configFile);
			/*try {
				//properties.load(new FileInputStream(configFile));
				properties.load(inputStream);
			} catch (FileNotFoundException ex) {
				
			} catch (IOException ex) {
				
			}*/
				
			// 第二個參數為預設值，如果沒取到值的時候回傳預設值
			/*String host = properties.getProperty("host", "jdbc:mysql://localhost/default");
			String username = properties.getProperty("username","");
			String password = properties.getProperty("password", "");
			String dbname = properties.getProperty("dbname", "");
			String tablename = properties.getProperty("tablename", "");*/
			
				
			try { 
			     /* Class.forName("com.mysql.jdbc.Driver"); 
			      //註冊driver 
			      con = DriverManager.getConnection( 
			      "jdbc:mysql://"+host+"/"+dbname+"?useUnicode=true&characterEncoding=utf-8",
			      username,password); */
			      //取得connection
				 Class.forName("com.mysql.jdbc.Driver"); 
			      //註冊driver 
			     /* con = DriverManager.getConnection( 
			      "jdbc:mysql://127.0.0.1/webservice?useUnicode=true&characterEncoding=utf-8",
			      "root","1234567899");*/
			      con = DriverManager.getConnection( 
					      "jdbc:mysql://140.118.109.39/webservice?useUnicode=true&characterEncoding=utf-8",
					      "hsnl","hsnl1130");
			    } 
			    catch(ClassNotFoundException e) 
			    { 
			    	throw new Exception("DriverClassNotFound :"+e.toString());
			    }//有可能會產生sqlexception 
			    catch(SQLException x) { 
			    	throw new Exception("Exception :"+x.toString());
			    } 
			
			
		}
}
