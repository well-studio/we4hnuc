package edu.hnuc.we.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import edu.hnuc.we.entity.User;
import edu.hnuc.we.service.IUserService;
import edu.hnuc.we.util.GetTermByActAndDateUtil;
import edu.hnuc.we.util.getStuUtil;

import java.util.HashMap;
import java.util.Map;

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
	
	private String term;
	public String getTerm() {
		return term;
	}
	public void setTerm(String term) {
		this.term = term;
	}
	/**
	 * 登录
	 * @return
	 */
	public String login() {
		
/*		if(!GetJwglStat.getStat()) {
			valueMap.put("info", "教务系统暂未开放!~<br>请稍后再试ヾ|≧_≦|〃");
			return "valueMap";
		}*/
		
		User user2 = userService.login(user);
		Map<String, Object> session = ActionContext.getContext().getSession();
		if(user2 == null) {
			valueMap.put("info", "登入失败! 注意：失败超过10次将封锁你的账号");
			return "valueMap";
		}
		valueMap.put("info", "登入成功!");
		//获取cookie
//		session.put("cookie", GetStuCookie.getCookie(user.getUsr_stuId(), user.getUsr_pwd()));
		session.put("cookie", getStuUtil.getCookie(user.getUsr_stuId(), user.getUsr_pwd()));
		//获取名字
		String cookie = (String) session.get("cookie");
//		user2.setUsr_name(GetCourse.getStuName(user2.getUsr_stuId(), term, cookie));
		user2.setUsr_name(getStuUtil.getName(cookie));
		session.put("user", user2);
		session.remove("admin");
		//获取term数组
		session.put("term", GetTermByActAndDateUtil.getTerm(user2.getUsr_stuId()));
		return "valueMap";
	}
	/**
	 * 管理员登录
	 * @return
	 */
	public String adminLogin() {
		
		String adminAct = user.getUsr_stuId();
		
		if(adminAct == null || !adminAct.equals("000000000")) {
			valueMap.put("info", "只有管理员才能登录哦!");
			return "valueMap";
		}
		user = userService.adminLogin(user);
		Map<String, Object> session = ActionContext.getContext().getSession();
		if(user == null) {
			valueMap.put("info", "登入失败，请检查帐号密码的正确性!");
			return "valueMap";
		}
		valueMap.put("info", "欢迎您管理员!");
		session.put("admin", user);
		session.remove("user");
		return "valueMap";
	}
	
	/**
	 * 管理员修改密码
	 * @return
	 */
	public String changeAdmPsw() {
		
		Map<String, Object> session = ActionContext.getContext().getSession();
		User adm = (User)session.get("admin");
		boolean res = false;
		if(adm != null) {
			adm.setUsr_pwd(user.getUsr_pwd());
			res = userService.changeAdmPse(adm);
			if(res) {
				valueMap.put("info", "恭喜~修改密码成功ヽ(=^･ω･^=)丿");
			} else {
				valueMap.put("info", "抱歉！修改失败");
			}
		} else {
			valueMap.put("info", "抱歉！修改失败");
		}
		
		return "valueMap";
	}
	
	/**
	 * 注销  设置session的时间
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
		return "adminLogin";
	}
	
	
	/**
	 * 获取成绩
	 * @return
	 */
	public String getMyGrade() {
		if("".equals(term)||term==null) return "error";
		Map<String, Object> session = ActionContext.getContext().getSession();
		User nowuser = (User)session.get("user");
//		Admin admin = (Admin)session.get("admin");
		if(nowuser!= null) {
			String cookie = (String) session.get("cookie");
//			session.put("grade", GetGrade.getGrade(nowuser.getUsr_stuId(), term, cookie));
			session.put("grade", getStuUtil.getGrade(term, cookie));
			return "gradeTable";
		}
		return "error";
	}
	
	
	/**
	 * 获取课表
	 * @return
	 */
	public String getMyTimeTable() {
		//System.out.println(term);
		if("".equals(term)||term==null) return "error";
		Map<String, Object> session = ActionContext.getContext().getSession();
		User nowuser = (User)session.get("user");
//		Admin admin = (Admin)session.get("admin");
		if(nowuser!= null) {
			//System.out.println(user.toString());
			String cookie = (String) session.get("cookie");
//			session.put("course", GetCourse.getcourse(nowuser.getUsr_stuId(), term, cookie));
			session.put("course", getStuUtil.getCourse(term, cookie));
			return "courseTable";
		}
		return "error";
	}
	
}
