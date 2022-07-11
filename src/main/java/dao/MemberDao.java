package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import util.OracleDataBaseConnection;
import vo.Member;

public class MemberDao {
	public MemberDao() {	}
	private static MemberDao dao = new MemberDao();
	public static MemberDao getInstance() {
		return dao;
	}
	
	public void insert(Member vo) {
		Connection conn = OracleDataBaseConnection.getConnection();
		PreparedStatement pstmt = null;
		String sql = "insert into member_tbl_02 (custno, custname, phone, address, joindate, grade, city)"
				+ "values (?, ?, ?, ?, sysdate, ?, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getCustno());
			pstmt.setString(2, vo.getCustname());
			pstmt.setString(3, vo.getPhone());
			pstmt.setString(4, vo.getAddress());
			pstmt.setString(5, vo.getGrade());
			pstmt.setString(6, vo.getCity());
			pstmt.execute();
			pstmt.close();
		} catch (Exception e) {
			System.out.println("오류 발생 : " + e.getMessage());
		}
	}
	
	public int nextSeq() {
		Connection conn = OracleDataBaseConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select seq_member.nextval from dual";
		int nextSeq = 0;
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if (rs.next()) 
				nextSeq = rs.getInt(1);
			
			pstmt.close();

		} catch (Exception e) {
			System.out.println("오류 발생 : " + e.getMessage());
		}
		return nextSeq;
	}
	
	public List<Member> selectAll() {
		Connection conn = OracleDataBaseConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from member_tbl_02";
		List<Member> list = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) 
				list.add(new Member(rs.getInt(1),
									rs.getString(2),
									rs.getString(3),
									rs.getString(4),
									rs.getString(5),
									rs.getString(6),
									rs.getString(7)));
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println("오류 발생 : " + e.getMessage());
		}
		return list;
	}
	
	public Member selectOne(int custno) {
		Connection conn = OracleDataBaseConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from member_tbl_02 where custno=?";
		Member vo = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, custno);
			rs = pstmt.executeQuery();
			
			if (rs.next()) 
				vo = new Member(rs.getInt(1), 
								rs.getString(2),
								rs.getString(3),
								rs.getString(4),
								rs.getString(5),
								rs.getString(6),
								rs.getString(7));
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println("오류 발생 : " + e.getMessage());
		}
		return vo;
	}
	
	public void update(Member vo) {
		Connection conn = OracleDataBaseConnection.getConnection();
		PreparedStatement pstmt = null;
		String sql = "update member_tbl_02 set phone=?, address=?, city=? where custno=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(4, vo.getCustno());
			pstmt.setString(1, vo.getPhone());
			pstmt.setString(2, vo.getAddress());
			pstmt.setString(3, vo.getCity());
			pstmt.execute();
			pstmt.close();
		} catch (Exception e) {
			System.out.println("오류 발생 : " + e.getMessage());
		}
	}
}
