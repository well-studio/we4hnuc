package edu.hnuc.we.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 校验工具类
 * 
 * @author Hallbow
 *
 */
public class ValidateUtil {
	
	/**
	 * 学号验证
	 * @param str
	 * @return
	 */
	public static boolean isValidStuId(String str) {
		boolean flag = false;
		Pattern p = Pattern.compile("^\\d{9}$");
		if (str != null) {
			Matcher match = p.matcher(str);
			flag = match.matches();
		}
		return flag;
	}
	
	/**
	 * 密码验证
	 * @param str
	 * @return
	 */
	public static boolean isValidPass(String str) {
		boolean flag = false;
		// 只要是非空白字符就行
		Pattern p = Pattern.compile("[^\\s]{1,}");
		if (str != null) {
			Matcher match = p.matcher(str);
			flag = match.matches();
		}
		return flag;
	}
	
	/**
	 * 姓名验证
	 * @param str
	 * @return
	 */
	public static boolean isValidName(String str) {
		boolean flag = false;
		Pattern p = Pattern.compile("^[\u4E00-\u9FA5]{2,5}$");
		if (str != null) {
			Matcher match = p.matcher(str);
			flag = match.matches();
		}
		return flag;
	}
	
	/**
	 * 手机验证
	 * @param str
	 * @return
	 */
	public static boolean isValidPhone(String str) {
		boolean flag = false;
		Pattern p = Pattern.compile("^1[35478]\\d{9}$");
		if (str != null) {
			Matcher match = p.matcher(str);
			flag = match.matches();
		}
		return flag;
	}
	
	/**
	 * QQ验证
	 * @param str
	 * @return
	 */
	public static boolean isValidQQ(String str) {
		boolean flag = false;
		Pattern p = Pattern.compile("^[1-9][0-9]{4,14}$");
		if (str != null) {
			Matcher match = p.matcher(str);
			flag = match.matches();
		}
		return flag;
	}
	
	/**
	 * 微信号验证
	 * @param str
	 * @return
	 */
	public static boolean isValidWeChat(String str) {
		boolean flag = false;
		Pattern p = Pattern.compile("^[\\w\\W]{1,20}$");
		if (str != null) {
			Matcher match = p.matcher(str);
			flag = match.matches();
		}
		return flag;
	}
	
	/**
	 * 内容验证
	 * @param str
	 * @return
	 */
	public static boolean isValidDetail(String str) {
		boolean flag = false;
		// 匹配任意字符和换行
//		Pattern p = Pattern.compile("^[.\\n]{5,300}$");
		Pattern p = Pattern.compile("^[\\d\\D]{15,500}$");
		if (str != null) {
			Matcher match = p.matcher(str);
			flag = match.matches();
		}
		return flag;
	}

	/***************************************************************************
	 * 验证手机号码
	 * 
	 * @param telNo
	 *            电话号码字符串 130到139 和 150，152 ，157，158，159 ，186，189，187
	 * @return
	 */
	public static boolean isValidMobileNo(String mobileNo) {
		// 1、(13[0-9])|(15[02789])|(18[679]) 13段 或者15段 18段的匹配
		// 2、\\d{8} 整数出现8次
		boolean flag = false;
		// Pattern p = Pattern.compile("^(1[358][13567890])(\\d{8})$");
		Pattern p = Pattern.compile("^1[35478]\\d{9}$");
		Matcher match = p.matcher(mobileNo);
		if (mobileNo != null) {
			flag = match.matches();
		}
		return flag;
	}

	/***************************************************************************
	 * 验证是否是正确的邮箱格式
	 * 
	 * @param email
	 * @return true表示是正确的邮箱格式,false表示不是正确邮箱格式
	 */
	public static boolean isValidEmail(String email) {
		// 1、\\w+表示@之前至少要输入一个匹配字母或数字或下划线 \\w 单词字符：[a-zA-Z_0-9]
		// 2、(\\w+\\.)表示域名. 如新浪邮箱域名是sina.com.cn
		// {1,3}表示可以出现一次或两次或者三次.
		String reg = "\\w+@(\\w+\\.){1,3}\\w+";
		Pattern pattern = Pattern.compile(reg);
		boolean flag = false;
		if (email != null) {
			Matcher matcher = pattern.matcher(email);
			flag = matcher.matches();
		}
		return flag;
	}

}