package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDao;
import dto.MemberDto;
import dto.ProductDto;
import util.ApiResponse;
import util.IntegerUtil;
import util.SessionManager;

@WebServlet("/api/product/update")
public class ProductUpdateApiServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		MemberDto member = SessionManager.getMember(req);
		int productId = Integer.parseInt(req.getParameter("product_id"));
		String thumbnail = req.getParameter("thumbnail");
		String title = req.getParameter("title");
		String category = req.getParameter("category");
		int orgPrice = Integer.parseInt(req.getParameter("org_price"));
		int salePrice = IntegerUtil.parseIntWithDefaultValue(req.getParameter("sale_price"), -1); 
		String salesState = req.getParameter("sales_state");
		String description = req.getParameter("description");
		 		
		ProductDto dto = ProductDao.getInstance().getData(productId); 
		
		if (!dto.getSellerId().equals(member.getMemberId())) {
			ApiResponse api = new ApiResponse(req, resp);
			api.sendMessage(false, "잘못된 접근입니다");
			return; 
		}

		if (thumbnail != null) {
			dto.setThumbnail(thumbnail);
		}
		if (title != null) {
			dto.setTitle(title);	
		}
		if (category != null) {
			dto.setCategory(category);	
		}
		dto.setOrgPrice(orgPrice);	
		if (salePrice != -1) {
			dto.setSalePrice(salePrice);	
		}
		if (salesState != null) {
			dto.setSalesState(salesState);	
		}
		if (description != null) {
			dto.setDescription(description);	
		}		
		boolean result = ProductDao.getInstance().update(dto);
			
		ApiResponse api = new ApiResponse(req, resp);
		if (result) {
			api.sendMessage(result, "상품수정에 성공하였습니다");
		} else {
			api.sendMessage(result, "상품수정에 실패하였습니다");
		}
	}
}
