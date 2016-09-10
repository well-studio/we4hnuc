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

public class LoginFilter implements Filter {

	public void destroy() {
	}
	/**
	 * 登录且管理员才能访问的接口
	 * letInfoBeTrue
	 * letInfoBeFalse
	 * letInfoBeTimeOut
	 * goToManage
	 * delInfoById
	 * getAllTimeOutInfoAdmin
	 * getAllToCheckInfoAdmin
	 * searchTimeOutInfo
	 * searchToCheckInfo
	 * 
	 * 登录才能访问的接口
	 * releaseInfo
	 * letInfoBeSuc
	 * 
	 */

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpReq = (HttpServletRequest) request;
		HttpServletResponse httpResp = (HttpServletResponse) response;
		httpResp.setContentType("text/html");
		httpResp.setCharacterEncoding("utf-8");
		
		HttpSession session = httpReq.getSession();
		
		String request_uri = httpReq.getRequestURI();
		
		String ctxPath = httpReq.getContextPath();
//		System.out.println("ctxPath:" + ctxPath);
		
		String uri = request_uri.substring(ctxPath.length());
		
		User stuMsg = (User) session.getAttribute("user");
		User admMsg = (User) session.getAttribute("admin");
		System.out.println("请求路径:"+uri);
		if( !uri.contains(".jsp") && (uri.contains("/ValidateImg") || uri.contains(".css") || uri.contains(".jpg") || uri.contains(".png") || uri.contains(".js") || uri.contains(".ico") )) {
			chain.doFilter(request, response);
			return ;
		}
		
		if (uri.equals("/index.jsp") || uri.equals("/goindex.jsp") || uri.equals("/StuLogin")) {
			chain.doFilter(request, response);
			return;
		} else {
			if( admMsg != null) {
				System.out.println("这货是老司机!");
				chain.doFilter(request, response);
				return;
			} else if( stuMsg == null) {
				httpResp.sendRedirect("/studentManager/index.jsp");
				return;
			} else {
				
				if( !uri.equals("/register.jsp") && !uri.equals("/DelStu") && !uri.equals("/UpdateStuRe") 
						&& !uri.equals("/UpdateStu") && !uri.equals("/StuReg")) {
					chain.doFilter(request, response);
					return;
				} else {
					System.out.println("没有权限!");
					httpResp.sendRedirect("/studentManager/noPrim.jsp");
					return;
				}
			}
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	} 
}
