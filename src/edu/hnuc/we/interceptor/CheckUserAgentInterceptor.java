package edu.hnuc.we.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import edu.hnuc.we.util.CheckUserAgent;

/**
 * @author xxmodd
 * 手机用户认证拦截器(管理员免检)
 * 
 */
public class CheckUserAgentInterceptor extends AbstractInterceptor {
	private static final long serialVersionUID = 1L;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext context = ActionContext.getContext();
		Map<String,Object> session = context.getSession();
		if(session.get("admin")!=null) return invocation.invoke();
		
		HttpServletRequest req = ServletActionContext.getRequest();
		String ua = req.getHeader("user-agent");
		//System.out.println("user-agent = " + ua);
		if(!CheckUserAgent.checkAgentIsMobile(ua)){
			return "mobile";
		}
		return invocation.invoke();
	}

	
}
