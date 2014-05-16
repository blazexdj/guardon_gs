package test;

import java.sql.*;

public class mssqltest {
	public static void main(String[] args) throws ClassNotFoundException {

		String connectId = "test";
		String userOtp = "1234";

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {

			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

			con = DriverManager.getConnection(
					"jdbc:sqlserver://211.178.181.8:1433",

					"sa", "14741");

			stmt = con.createStatement();

			rs = stmt.executeQuery("select count(*) from syslogins where name='test'");

			rs.next();
			String str = rs.getString(1);
			System.out.println(str);

			if (str.equals("0"))
				System.out.println("there is no such Id");
			else {
				stmt.executeUpdate("SP_PASSWORD NULL," + "'" + userOtp + "', '"
						+ connectId + "'");		
				System.out.println("success!!");
			}	

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
