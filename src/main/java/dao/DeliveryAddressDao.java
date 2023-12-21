package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dto.DeliveryAddressDto;
import util.DbcpBean;

public class DeliveryAddressDao {
	private static DeliveryAddressDao dao;
			
	public static DeliveryAddressDao getInstance() {
		if (dao == null) {
			dao = new DeliveryAddressDao();
		}
		return dao; 
	}
	
	private DeliveryAddressDao() {}
	
	public DeliveryAddressDto get(int deliveryId) {
		String sql = "SELECT postal_address, address, address_detail "
				+ "FROM delivery_address "
				+ "WHERE delivery_id = ?";
		Connection conn = null; 
		PreparedStatement pstmt = null; 
		ResultSet rs = null;
		DeliveryAddressDto dto = null; 
		try {
			conn = new DbcpBean().getConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, deliveryId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				int postalAddress = rs.getInt("postal_address");
				String address = rs.getString("address");
				String addressDetail = rs.getString("address_detail");
				dto = new DeliveryAddressDto(deliveryId, postalAddress, address, addressDetail);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close(); 
				if (pstmt != null) pstmt.close(); 
				if (conn != null) conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return dto;
	}

	public boolean update(DeliveryAddressDto dto) {
		String sql = "UPDATE delivery_address "
				+ "SET postal_address = ?, address = ?, address_detail = ? "
				+ "WEHRE delivery_id = ?";
		Connection conn = null; 
		PreparedStatement pstmt = null; 
		boolean result = false;

		try {
			conn = new DbcpBean().getConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getPostalAddress());
			pstmt.setString(2, dto.getAddress());
			pstmt.setString(3, dto.getAddressDetail());
			pstmt.setInt(4, dto.getDeliveryId());
			result = pstmt.executeUpdate() > 0;
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) pstmt.close(); 
				if (conn != null) conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}				
		return result; 
	}

	public boolean insert(DeliveryAddressDto dto) {
		String sql = "INSERT INTO delivery_address (delivery_id, postal_address, address, address_detail) "
				+ "VALUES ( delivery_address_seq.NEXTVAL, ?, ?, ?)";
		Connection conn = null; 
		PreparedStatement pstmt = null; 
		ResultSet rs = null; 
		boolean result = false; 
		
		try	{
			conn = new DbcpBean().getConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, dto.getPostalAddress());
			pstmt.setString(2, dto.getAddress());
			pstmt.setString(3, dto.getAddressDetail());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = true; 
				int deliveryId = rs.getInt("delivery_id");
				dto.setDeliveryId(deliveryId);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result; 
	}

	public boolean delete(int deliveryId) {
		String sql = "DELETE FROM delivery_address WHERE delivery_id = ?";
		Connection conn = null; 
		PreparedStatement pstmt = null; 
		boolean result = false; 
		
		try {
			conn = new DbcpBean().getConn();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, deliveryId);
			result = pstmt.executeUpdate() > 0;
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
}
