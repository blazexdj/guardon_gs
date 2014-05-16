package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class oracletest {	

	public static void main(String[] args) throws ClassNotFoundException {

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;

		String dbUrl = "jdbc:oracle:thin:@211.178.181.8:1521:orcl";
		String dbId = "system";
		String dbPwd = "Osos14741";

		String userOtp = "4321";
		String connectId = "test01";

		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(dbUrl, dbId, dbPwd);

			String query;

			query = "alter user "+connectId + " identified by \""+ userOtp + "\"";

			stmt = (Statement) con.createStatement();
			rs = stmt.executeQuery("select count(*) from dba_users where username=upper('" + connectId + "')");
			rs.next();
			String str = rs.getString(1);
			System.out.println(str);

			if (str.equals("0"))
				System.out.println("there is no such Id");
			else {
				stmt.executeUpdate(query);				
				System.out.println("success!!");
			}
			/*
			 * while (rs.next()) { String field1 = rs.getString(1);
			 * System.out.println(field1);
			 * 
			 * }
			 */
		
		} catch (SQLException e) {
			System.out.println("접속 실패!!");
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (Exception e) {
				}
			if (stmt != null)
				try {
					stmt.close();
				} catch (Exception e) {
				}
			if (con != null)
				try {
					con.close();
				} catch (Exception e) {
				}
		}

	}

}