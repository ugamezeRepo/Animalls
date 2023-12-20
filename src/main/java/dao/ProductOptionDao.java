package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dto.ProductOptionDto;
import util.DbcpBean;

public class ProductOptionDao {

		public List<ProductOptionDto> getList(int product_id){
			List<ProductOptionDto> list = new ArrayList<ProductOptionDto>();
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			try {
				conn = new DbcpBean().getConn();
				//실행할 sql 문
				String sql = "SELECT option_id, product_id, description, additional_price"
						+ " FROM PRODUCT_OPTION"
						+ " WHERE product_id = ?";
				pstmt = conn.prepareStatement(sql);
				//? 에 바인딩할 내용이 있으면 여기서 한다.
				pstmt.setInt(1, product_id);
				//query 문 수행하고 결과(ResultSet) 얻어내기
				rs = pstmt.executeQuery();
				//반복문 돌면서 
				while (rs.next()) {
					ProductOptionDto dto = new ProductOptionDto();
					dto.setProduct_id(product_id);
					dto.setOption_id(rs.getInt("option_id"));
					dto.setDescription(rs.getString("description"));
					dto.setAdditional_price(rs.getInt("additional_price"));
					list.add(dto);
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
			return list;
		}
}
