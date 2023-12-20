package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import dto.ReviewDto;
import util.DbcpBean;

public class ReviewDao {

	public boolean insert(ReviewDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int rowCount = 0;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문
			String sql = "INSERT INTO UPLOAD"
					+ "	(review_id, product_id , reviewer_id, title, content, thumbnail, rating, like_count, created_at, updated_at	 )"
					+ " VALUES(SEQUENCE PRODUCT_REVIEW_SEQ,?,?,?,?,?,?,?,SYSDATE,SYSDATE)";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 내용이 있으면 바인딩
			pstmt.setInt(1,dto.getProduct_id());
			pstmt.setString(2, dto.getReviewer_id());
			pstmt.setString(3,dto.getTitle());
			pstmt.setString(4,dto.getContent());
			pstmt.setString(5,dto.getThumbnail());
			pstmt.setInt(6, dto.getRating());
			pstmt.setInt(7, dto.getLike_count());	
			rowCount = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		if (rowCount > 0) {
			return true;
		} else {
			return false;
		}
	}
}
