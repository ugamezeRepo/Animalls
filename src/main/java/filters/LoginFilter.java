package filters;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter({"/protected/*/*"})
public class LoginFilter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		HttpSession session = req.getSession();		
		String memberId = (String)session.getAttribute("memberId");
		if (memberId != null) { 
			chain.doFilter(request, response);
		} else {
			String url = req.getRequestURI();
			String query = req.getQueryString();
			String encodedUrl = null;
			if(query == null) {
				encodedUrl=URLEncoder.encode(url);
			}else {
				encodedUrl=URLEncoder.encode(url + "?" + query);
			}
			String cPath = req.getContextPath();
			HttpServletResponse res = (HttpServletResponse)response;
			res.sendRedirect(cPath + "/member/login_form.jsp?url=" + encodedUrl);
		}	
	}
}

