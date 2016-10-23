package edu.hnuc.we.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;


/**
 * 编码过滤器
 * @author Hallbow
 *
 */
public class EncodingFilter implements Filter{
    protected String encoding=null; 
    public void destroy() { //销毁
        this.encoding=null;
    }
   //对编码问题进行转换
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException {
    	HttpServletRequest req = (HttpServletRequest) request;
    	req.setCharacterEncoding(encoding);
        response.setContentType("text/html;charset="+encoding);
//        System.out.println(req.getParameter("keyWord"));
//        String queryString = req.getQueryString();
        
        chain.doFilter(request, response); 
    }

    public void init(FilterConfig filterConfig) throws ServletException {
        this.encoding=filterConfig.getInitParameter("encoding");//encoding在web.xml中指定
    }

}