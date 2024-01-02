package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import dao.ReviewDao;
import dto.ReviewDto;
import util.IntegerUtil;

@SuppressWarnings("serial")
@WebServlet("/api/review")
public class ReviewApiServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String rawPage = req.getParameter("page");
		String rawPagination = req.getParameter("pagination");
		String rawProductId = req.getParameter("productId"); 
		
		int page = IntegerUtil.parseIntWithDefaultValue(rawPage, 1);
		int pagination = IntegerUtil.parseIntWithDefaultValue(rawPagination, 5);
		int productId = IntegerUtil.parseIntWithDefaultValue(rawProductId, -1);
		
		int startPage = (page - 1) * pagination +  1; 
		int endPage = page * pagination;
		List<ReviewDto> reviews = null; 
		if (productId != -1) {
			reviews =  ReviewDao.getInstance().getReviewListWithProductId(startPage, endPage, productId);
		} else {
			reviews = ReviewDao.getInstance().getList(startPage, endPage);
		}
		
		resp.setContentType("application/json; charset=UTF-8");
		String json = new Gson().toJson(reviews);
		try (PrintWriter pw  = resp.getWriter()) {
			pw.write(json);
		}
	}
}
