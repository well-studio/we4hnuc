package edu.hnuc.we.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.hnuc.we.entity.User;

/**
 * 安全权限检测
 * @author Hallbow
 *
 */
public class PowerFilter implements Filter {

	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpServletResponse httpResp = (HttpServletResponse) response;
		httpResp.setContentType("text/html");
		httpResp.setCharacterEncoding("utf-8");
		HttpSession session = httpReq.getSession();
		String request_uri = httpReq.getRequestURI();
		String ctxPath = httpReq.getContextPath();
		String uri = request_uri.substring(ctxPath.length());
		
		User stuMsg = (User) session.getAttribute("user");
		User admMsg = (User) session.getAttribute("admin");
		
		if(admMsg != null) {
			chain.doFilter(request, response);
		} else {
			if(uri.contains("goToManage") || uri.contains("letInfoBeTrue")
				|| uri.contains("letInfoBeFalse") || uri.contains("letInfoBeTimeOut")
				|| uri.contains("editInfo") || uri.contains("gotoGetInfo")
				|| uri.contains("getAllSucInfoAdmin") || uri.contains("getAllValidInfoAdmin")
				|| uri.contains("getAllDoingInfoAdmin") || uri.contains("getAllImgNames")
				|| uri.contains("delInfoById") || uri.contains("getAllTimeOutInfoAdmin")
				|| uri.contains("getAllToCheckInfoAdmin") || uri.contains("searchInfo")
				|| uri.contains("searchTimeOutInfo") || uri.contains("searchToCheckInfo")
				|| uri.contains("letInfoRelive") || uri.contains("updateInfo")
				|| uri.contains("changePsw")) {
				
				return ;
			} else {
				if(stuMsg != null) {
					chain.doFilter(request, response);
				} else {
					if(uri.contains("releaseInfo") || uri.contains("letInfoBeSuc")) {
						return ;
					} else {
						chain.doFilter(request, response);
					}
				}
				
			}
		}
		
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	} 
}
