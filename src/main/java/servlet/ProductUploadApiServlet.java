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

@WebServlet("/api/product/upload")
public class ProductUploadApiServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberDto member = SessionManager.getMember(req);
		
		String thumbnail = req.getParameter("thumbnail");
		String title = req.getParameter("title"); 
		String category = req.getParameter("category");
		int orgPrice = Integer.parseInt(req.getParameter("org_price"));
		int salePrice = IntegerUtil.parseIntWithDefaultValue(req.getParameter("sale_price"), 0); 
		String salesState = req.getParameter("sales_state");
		String description = req.getParameter("description");
		
		 		
		ProductDto dto = new ProductDto();
		dto.setSellerId(member.getMemberId());
		dto.setThumbnail(thumbnail);
		dto.setTitle(title);
		dto.setCategory(category);
		dto.setOrgPrice(orgPrice);
		dto.setSalePrice(salePrice);
		dto.setSalesState(salesState);
		dto.setDescription(description);
		
		boolean result = ProductDao.getInstance().insert(dto);
			
		ApiResponse api = new ApiResponse(req, resp);
		if (result) {
			api.sendMessage(result, "상품등록에 성공하였습니다");
		} else {
			api.sendMessage(result, "상품등록에 실패하였습니다");
		}
	}
}
