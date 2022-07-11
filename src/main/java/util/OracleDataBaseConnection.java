package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class OracleDataBaseConnection {
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "test4", "1234");
			
		} catch (ClassNotFoundException e) {
			System.out.println("클래스 로드 오류 : " + e.getMessage());
		} catch (SQLException e) {
			System.out.println("계정정보 오류 : " + e.getMessage());
		}
		
		return conn;
	}
	
}
