package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dto.OrderRequestDto;
import util.DbcpBean;

public class OrderRequestDao {
			//자신의 참조값을 담을 static 필드
			private static OrderRequestDao dao;
			
			//외부에서 객체 생성하지 못하도록 생성자의 접근 지정자를 private 로
			private OrderRequestDao() {}
			
			//자신의 참조값을 리턴해주는 static public(공개) 메소드
			public static OrderRequestDao getInstance() {
				//만일 최초의 호출이라면
				if(dao==null) {
					dao=new OrderRequestDao();
				}
				return dao;
			}
			public boolean update(OrderRequestDto dto) {
				Connection conn = null;
				PreparedStatement pstmt = null;
				int rowCount = 0;
				try {
					conn = new DbcpBean().getConn();
					//실행할 sql 문
					String sql = "UPDATE ORDER_REQUEST"
							+ " SET postal_address=?,state=?,address=?,detailed_address=?,delivery_message=?,payment_method=?,message=?,ordered_date=SYSDATE"
							+ " WHERE order_id=?";
					pstmt = conn.prepareStatement(sql);
					//? 에 바인딩 할 내용이 있으면 바인딩
					pstmt.setInt(1,dto.getPostalAddress());
					pstmt.setString(2, dto.getState());
					pstmt.setString(3, dto.getAddress());
					pstmt.setString(4,dto.getDetailedAddress());
					pstmt.setString(5, dto.getDeliveryMessage());
					pstmt.setInt(6,dto.getPaymentMethod());
					pstmt.setString(7, dto.getMessage());
					pstmt.setInt(8, dto.getOrderId());
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
	
	public boolean delete(int orderId) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int rowCount = 0;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문
			String sql = "DELETE FROM ORDER_REQUEST"
					+ " WHERE order_id=?";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 내용이 있으면 바인딩
			pstmt.setInt(1, orderId);
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
	
	
	public boolean insert(OrderRequestDto dto) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		int rowCount=0;
		try {
			conn=new DbcpBean().getConn();
			String sql="INSERT INTO ORDER_REQUEST"
					+ " (postal_address,state,address,detailed_address,delivery_message,payment_method,message,ordered_date)"
					+ " VALUES(?,?,?,?,?,?,?,SYSDATE)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getPostalAddress());
			pstmt.setString(2, dto.getState());
			pstmt.setString(3, dto.getAddress());
			pstmt.setString(4, dto.getDetailedAddress());
			pstmt.setString(5, dto.getDeliveryMessage());
			pstmt.setInt(6, dto.getPaymentMethod());
			pstmt.setString(7, dto.getMessage());
			rowCount=pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e) {}
		}
		if(rowCount>0) {
			return true;
		}else {
			return false;
		}
	}
	
public List<OrderRequestDto> getList(){
		
		List<OrderRequestDto> list=new ArrayList<>();

		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		try{
			//DbcpBean() 객체를 이용해서 Connection 객체 하나 얻어내기 (Connection Pool 에서 하나 꺼내오기)
			conn=new DbcpBean().getConn();
			//실행할 sql 문
			String sql="SELECT order_id,postal_address,state,address,detailed_address,delivery_message,payment_method,message,ordered_date"+
			 	" FROM ORDER_REQUEST"+
				" ORDER BY ordered_date DESC";
			pstmt=conn.prepareStatement(sql);
			//query 문 수행하고 결과(ResultSet) 얻어내기
			rs=pstmt.executeQuery();
			//반복문 돌면서 
			while(rs.next()){
				
				OrderRequestDto dto=new OrderRequestDto();
				dto.setOrderId(rs.getInt("order_id"));
				dto.setPostalAddress(rs.getInt("postal_address"));
				dto.setState(rs.getString("state"));
				dto.setDetailedAddress(rs.getString("detailed_address"));
				dto.setDeliveryMessage(rs.getString("delivery_message"));
				dto.setPaymentMethod(rs.getInt("payment_method"));
				dto.setMessage(rs.getString("message"));
				dto.setOrderedDate(rs.getString("ordered_date"));
				//ArrayList 객체에 누적 시킨다.
				list.add(dto);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close(); //Connection 객체의 close() 메소드를 호출하면 Pool 에 반납된다.
			}catch(Exception e){}
		}
		return list;
	}
}