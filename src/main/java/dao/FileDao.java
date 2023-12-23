package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dto.FileDto;
import util.DbcpBean;

public class FileDao {
	private static FileDao dao;
	private  FileDao() {}
	public static FileDao getInstance() {
		if(dao==null) {
			dao=new FileDao();
		}
		return dao;
	}
	public boolean insert(FileDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int rowCount = 0;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문
			String sql = "INSERT INTO UPLOAD"
					+ "	(upload_id, uploader_id , org_filename, save_filename, fileSize, uploaded_at)"
					+ " VALUES(UPLOAD_SEQ.NEXTVAL,?,?,?,?,SYSDATE)";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩 할 내용이 있으면 바인딩
			pstmt.setString(1, dto.getUploaderId());
			pstmt.setString(2, dto.getOrgFilename());
			pstmt.setString(3, dto.getSaveFilename());
			pstmt.setLong(4, dto.getFilesize());
					
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
	public int getCount() {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int count =0;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문
			String sql = "SELECT MAX(ROWNUM) AS count"
					+ "	FROM UPLOAD";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩할 내용이 있으면 여기서 한다.

			//query 문 수행하고 결과(ResultSet) 얻어내기
			rs = pstmt.executeQuery();
			//반복문 돌면서 
			if (rs.next()) {
				count = rs.getInt("count");
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
		return count;
	}
	public List<FileDto> getList(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<FileDto> list = new ArrayList<FileDto>();
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문
			String sql = "SELECT upload_id, uploader_id , org_filename, save_filename, filesize, uploaded_at"
					+ " FROM UPLOAD"
					+ " ORDER BY upload_id DESC";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩할 내용이 있으면 여기서 한다.

			//query 문 수행하고 결과(ResultSet) 얻어내기
			rs = pstmt.executeQuery();
			//반복문 돌면서 
			while (rs.next()) {
				FileDto dto =new FileDto();
				dto.setUploadId(rs.getInt("upload_id"));
				dto.setOrgFilename("org_filename");
				dto.setUploaderId(rs.getString("uploader_id"));
				dto.setSaveFilename(rs.getString("save_filename"));
				dto.setFilesize(rs.getLong("filesize"));
				dto.setUploadedAt(rs.getString("uploaded_at"));
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
	
	public List<FileDto> getList(int start, int end){
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<FileDto> list = new ArrayList<FileDto>();
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문
			String sql = "SELECT *"
					+ " FROM"
					+ "	(SELECT result1.*, ROWNUM AS rnum"
					+ "	FROM"
					+ "		(SELECT upload_id, uploader_id , org_filename, save_filename, filesize, uploaded_at"
					+ "		FROM UPLOAD"
					+ "		ORDER BY upload_id DESC) result1)"
					+ " WHERE rnum BETWEEN ? AND ?";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩할 내용이 있으면 여기서 한다.
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			//query 문 수행하고 결과(ResultSet) 얻어내기
			rs = pstmt.executeQuery();
			//반복문 돌면서 
			while (rs.next()) {
				FileDto dto =new FileDto();
				dto.setUploadId(rs.getInt("upload_id"));
				dto.setOrgFilename("org_filename");
				dto.setUploaderId(rs.getString("uploader_id"));
				dto.setSaveFilename(rs.getString("save_filename"));
				dto.setFilesize(rs.getLong("filesize"));
				dto.setUploadedAt(rs.getString("uploaded_at"));
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
	public FileDto getData(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		FileDto dto =null;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문
			String sql = "SELECT upload_id, uploader_id , org_filename, save_filename, filesize, uploaded_at"
					+ " FROM UPLOAD"
					+ " WHERE upload_id=?";
			pstmt = conn.prepareStatement(sql);
			//? 에 바인딩할 내용이 있으면 여기서 한다.
			pstmt.setInt(1, num);
			//query 문 수행하고 결과(ResultSet) 얻어내기
			rs = pstmt.executeQuery();
			//반복문 돌면서 
			while (rs.next()) {
				dto=new FileDto();
				dto.setUploadId(rs.getInt("upload_id"));
				dto.setOrgFilename("org_filename");
				dto.setUploaderId(rs.getString("uploader_id"));
				dto.setSaveFilename(rs.getString("save_filename"));
				dto.setFilesize(rs.getLong("filesize"));
				dto.setUploadedAt(rs.getString("uploaded_at"));

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
	public boolean delete(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int rowCount = 0;
		try {
			conn = new DbcpBean().getConn();
			//실행할 sql 문
			String sql = "DELETE from UPLOAD"
					+ " WHERE upload_id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
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
