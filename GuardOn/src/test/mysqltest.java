package test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class mysqltest {

	public static void main(String[] args) throws ClassNotFoundException {

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;

		String ipAddress = "localhost";
		String serverId = "root";
		String serverPwd = "14741";

		String userOtp = "1234";
		String connectId = "test";

		try {

			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://" + ipAddress
					+ "/mysql", serverId, serverPwd);

			String query;

			query = "update user set password=password('" + userOtp
					+ "') where user='" + connectId + "'";

			stmt = (Statement) con.createStatement();
			rs = stmt.executeQuery("select count(*) from user where user='"
					+ connectId + "'");
			rs.next();
			String str = rs.getString(1);
			System.out.println(str);

			if (str.equals("0"))
				System.out.println("there is no such Id");
			else {
				stmt.executeUpdate(query);
				stmt.executeUpdate("flush privileges");
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