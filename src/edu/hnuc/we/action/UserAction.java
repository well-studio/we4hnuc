package edu.hnuc.we.action;

import java.util.HashMap;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import edu.hnuc.we.entity.User;
import edu.hnuc.we.service.IUserService;

/**
 * 
 * @author Hallbow
 *
 */
@SuppressWarnings("serial")
public class UserAction extends ActionSupport implements ModelDriven<User>{
	
	private IUserService userService;
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
	
	private Map<String, Object> valueMap = new HashMap<String, Object>();
	public Map<String, Object> getValueMap() {
		return valueMap;
	}
	public void setValueMap(Map<String, Object> valueMap) {
		this.valueMap = valueMap;
	}
	private User user = new User();
	@Override
	public User getModel() {
		return user;
	}
	
	/**
	 * 登录
	 * @return
	 */
	public String login() {
		
		User user2 = userService.login(user);
		Map<String, Object> session = ActionContext.getContext().getSession();
		if(user2 == null) {
			return "";
		}
		if(user2.getUsr_stuId().equals("000000000")) {
			session.put("admin", "user2");
		} else {
			session.put("user", "user2");
		}
		return "";
	}
	
	
	/**
	 * 注销
	 * @return
	 */
	public String loginOut() {
		Map<String, Object> session = ActionContext.getContext().getSession();
		User user2 = (User)session.get("user");
		if(user2 == null) {
			user2 = (User)session.get("admin");
			session.remove("admin");
		} else {
			session.remove("user");
		}
		
		return "";
	}
	
}
