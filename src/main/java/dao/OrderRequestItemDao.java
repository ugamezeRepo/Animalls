package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dto.OrderRequestDto;
import dto.OrderRequestItemDto;
import util.DbcpBean;

public class OrderRequestItemDao {
	//자신의 참조값을 담을 static 필드
	private static OrderRequestItemDao dao;
	
	//외부에서 객체 생성하지 못하도록 생성자의 접근 지정자를 private 로
	private OrderRequestItemDao() {}
	
	//자신의 참조값을 리턴해주는 static public(공개) 메소드
	public static OrderRequestItemDao getInstance() {
		//만일 최초의 호출이라면
		if(dao==null) {
			dao=new OrderRequestItemDao();
		}
		return dao;
	}
	public boolean update(OrderRequestItemDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int rowCount = 0;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문
			String sql = "UPDATE ORDER_REQUEST_ITEM"
					+ " SET order_id=?,product_id=?,option_id=?,amount=?"
					+ " WHERE order_item_id=?";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 내용이 있으면 바인딩
			pstmt.setInt(1,dto.getOrderId());
			pstmt.setInt(2, dto.getProductId());
			pstmt.setInt(3, dto.getOptionId());
			pstmt.setInt(4,dto.getAmount());
			
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
	
	
public OrderRequestItemDto getData(int orderItemId) {


OrderRequestItemDto dto = new OrderRequestItemDto();
Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;
try {
	conn = new DbcpBean().getConn();
	//실행할 sql 문
	String sql = "SELECT order_id,product_id,option_id,amount"
			+ "FROM ORDER_REQUEST_ITEM"
			+ "WHERE order_item_id=?";
	pstmt = conn.prepareStatement(sql);
	//? 에 바인딩할 내용이 있으면 여기서 한다.
	pstmt.setInt(1, orderItemId);
	//query 문 수행하고 결과(ResultSet) 얻어내기
	rs = pstmt.executeQuery();
	//반복문 돌면서 
	while (rs.next()) {
		dto.setOrderItemId(orderItemId);
		dto.setOrderId(rs.getInt("order_id"));
		dto.setProductId(rs.getInt("product_id"));
		dto.setOptionId(rs.getInt("option_id"));
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

public boolean delete(int orderItemId) {
Connection conn = null;
PreparedStatement pstmt = null;
int rowCount = 0;
try {
	conn = new DbcpBean().getConn();
	//실행할 sql 문
	String sql = "DELETE FROM ORDER_REQUEST_ITEM"
			+ " WHERE order_item_id=?";
	pstmt = conn.prepareStatement(sql);
	//? 에 바인딩 할 내용이 있으면 바인딩
	pstmt.setInt(1, orderItemId);
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


public boolean insert(OrderRequestItemDto dto) {
Connection conn=null;
PreparedStatement pstmt=null;
int rowCount=0;
try {
	conn=new DbcpBean().getConn();
	String sql="INSERT INTO ORDER_REQUEST_ITEM"
			+ " (order_id,product_id,option_id,amount)"
			+ " VALUES(?,?,?,?)";
	pstmt=conn.prepareStatement(sql);
	pstmt.setInt(1, dto.getOrderId());
	pstmt.setInt(2, dto.getProductId());
	pstmt.setInt(3, dto.getOptionId());
	pstmt.setInt(4, dto.getAmount());
	
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

public List<OrderRequestItemDto> getList(){

List<OrderRequestItemDto> list=new ArrayList<>();

Connection conn=null;
PreparedStatement pstmt=null;
ResultSet rs=null;
try{
	//DbcpBean() 객체를 이용해서 Connection 객체 하나 얻어내기 (Connection Pool 에서 하나 꺼내오기)
	conn=new DbcpBean().getConn();
	//실행할 sql 문
	String sql="SELECT order_item_id,order_id,product_id,option_id,amount"+
	 	" FROM ORDER_REQUEST_ITEM"+
		" ORDER BY order_id DESC";
	pstmt=conn.prepareStatement(sql);
	//query 문 수행하고 결과(ResultSet) 얻어내기
	rs=pstmt.executeQuery();
	//반복문 돌면서 
	while(rs.next()){
		
		OrderRequestItemDto dto=new OrderRequestItemDto();
		dto.setOrderItemId(rs.getInt("order_item_id"));
		dto.setOrderId(rs.getInt("order_id"));
		dto.setProductId(rs.getInt("state"));
		dto.setOptionId(rs.getInt("option_id"));
		dto.setAmount(rs.getInt("amount"));
		
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