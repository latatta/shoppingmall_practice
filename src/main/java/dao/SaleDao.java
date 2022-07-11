package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import util.OracleDataBaseConnection;
import vo.Member;
import vo.Sale;

public class SaleDao {
	public SaleDao() {	}
	private static SaleDao dao = new SaleDao();
	public static SaleDao getInstance() {
		return dao;
	}
	
	public List<Sale> selectSale() {
		Connection conn = OracleDataBaseConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT mt.custno, custname, DECODE(grade, 'A', 'VIP', 'B', '일반', 'C', '직원') AS agrade,"
				+ "asum FROM MEMBER_TBL_02 mt,"
				+ "(SELECT custno, sum(price) AS asum FROM MONEY_TBL_02 mt GROUP BY custno ORDER BY asum) sale "
				+ "WHERE mt.custno = sale.custno ORDER BY asum DESC";
		List<Sale> list = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) 
				list.add(new Sale(rs.getInt(1),
									rs.getString(2),
									rs.getString(3),
									rs.getInt(4)));
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println("오류 발생 : " + e.getMessage());
		}
		return list;
	}
}
