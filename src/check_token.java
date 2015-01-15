import java.sql.SQLException;


public class check_token {
	private dbconnect db= new dbconnect();
	public check_token() throws Exception{
			db.connect();
	}
	public  boolean check_token(String account) throws SQLException{
		String sql="select usr_token_id from usr_token where usr_account=?";
		db.pst=db.con.prepareStatement(sql);
		db.pst.setString(1, account);
		db.rs=db.pst.executeQuery();
		if(!db.rs.next()){
			System.out.println("in check_token = FALSE");	
			return false;}
		System.out.println("in check_token = TRUE");	
		return true;
	}
}
