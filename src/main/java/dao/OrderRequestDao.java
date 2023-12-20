package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dto.OrderRequestDto;
import util.DbcpBean;

public class OrderRequestDao {
	private static OrderRequestDao dao;
	private OrderRequestDao() {}
	public static OrderRequestDao getInstance() {
		if(dao==null) {
			dao=new OrderRequestDao();
		}
		return dao;
	}
	
	
	public OrderRequestDto getData(int orderId) {
		OrderRequestDto dto = new OrderRequestDto();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문
			String sql = "SELECT order_id,postal_address,state,address,detailed_address,delivery_message,payment_method,message,ordered_date"
					+ "FROM ORDER_REQUEST"
					+ "WHERE order_id = ?";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩할 내용이 있으면 여기서 한다.
			pstmt.setInt(1, orderId);
			//query 문 수행하고 결과(ResultSet) 얻어내기
			rs = pstmt.executeQuery();
			//반복문 돌면서 
			while (rs.next()) {
				dto.setOrderId(orderId);
				dto.setPostalAddress(rs.getInt("postal_address"));
				dto.setState(rs.getString("state"));
				dto.setAddress(rs.getString("address"));
				dto.setDetailedAddress(rs.getString("detailed_address"));
				dto.setDeliveryMessage(rs.getString("delivery_message"));
				dto.setPaymentMethod(rs.getInt("payment_method"));
				dto.setMessage(rs.getString("message"));
				dto.setOrderedDate(rs.getString("ordered_date"));
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