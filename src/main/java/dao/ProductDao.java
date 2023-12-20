package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dto.ProductDto;
import util.DbcpBean;

public class ProductDao {
	
	public ProductDto getData(int product_id) {
		ProductDto dto = new ProductDto();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문
			String sql = "SELECT product_id, seller_id, category, title, description, org_price, sale_price, sales_state, thumbnail"
					+ " FROM PRODUCT"
					+ " WHERE product_id = ?";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩할 내용이 있으면 여기서 한다.
			pstmt.setInt(1, product_id);
			//query 문 수행하고 결과(ResultSet) 얻어내기
			rs = pstmt.executeQuery();
			//반복문 돌면서 
			while (rs.next()) {
			
			dto.setProductId(product_id);
			dto.setSellerId(rs.getString("seller_id"));
			dto.setCategory(rs.getString("category"));
			dto.setTitle(rs.getString("title"));
			dto.setDescription(rs.getString("description"));
			dto.setOrgPrice(rs.getInt("org_price"));
			dto.setSalePrice(rs.getInt("sale_price"));
			dto.setSalesState(rs.getString("sales_state"));
			dto.setThumbnail(rs.getString("thumbnail"));
			
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
