package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dto.CartItemDto;
import util.DbcpBean;

public class CartItemDao {
	
	public CartItemDto getData(int cart_item_id) {
		CartItemDto dto = new CartItemDto();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문
			String sql = "SELECT cart_item_id, buyer_id, product_id, option_id, amount"
					+ " FROM CART_ITEM"
					+ " WHERE cart_item_id = ?";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩할 내용이 있으면 여기서 한다.

			//query 문 수행하고 결과(ResultSet) 얻어내기
			rs = pstmt.executeQuery();
			//반복문 돌면서 
			while (rs.next()) {
				dto.setCart_item_id(cart_item_id);
				dto.setBuyer_id(rs.getString("buyer_id"));
				dto.setProduct_id(rs.getInt("product_id"));
				dto.setOption_id(rs.getInt("option_id"));
				dto.setAmount(rs.getInt("amount"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close(); //Connection 객체의 close() 메소드를 호출하면 Pool 에 반납된다.
			} catch (Exception e) {
			}
		
		}
		return dto;
	}
}
