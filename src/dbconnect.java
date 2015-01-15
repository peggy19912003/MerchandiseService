import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class dbconnect {
	public Connection con = null; //Database objects 

	public Statement stat = null; 

	public ResultSet rs = null; 

	public PreparedStatement pst = null; 
	  
	public Connection getcon(){return con;}
	public Statement getstat(){return stat;}
	public ResultSet getrs(){return rs;}
	public PreparedStatement getpst(){return pst;}
	  public void connect() throws Exception{
		  
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
