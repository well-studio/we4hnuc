package edu.hnuc.we.util;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 类名: getCourse 描述: 获取学生各类信息
 * 
 * @author xxmodd
 * @data 2017-3-18 t下午3:13:26
 */
public class getStuUtil {
	// 获取课表Url
	private static String courseUrl = "http://jwgl.hnuc.edu.cn/jsxsd/xskb/xskb_list.do";
	// 获取成绩Url
	private static String gradeUrl = "http://jwgl.hnuc.edu.cn/jsxsd/kscj/cjcx_list";
	// 获取名字Url
	private static String nameUrl = "http://jwgl.hnuc.edu.cn/jsxsd/framework/main.jsp";
	//登入请求Url
	private static String loginUrlAction = "http://jwgl.hnuc.edu.cn/jsxsd/xk/LoginToXk";// 

	
	
	public static void main(String[] args) {
		/*
		 * //获取课表测试
		 */
		// System.out.println(getCourse("2016-2017-2",getCookie("140920046" , "140920046"))); 
		
		/*
		 * 获取成绩测试 
		 */
		//System.out.println(getGrade("2016-2017-1" , getCookie("140920046", "140920046")));
		/*
		 * 获取名字
		 */
		System.out.println(getName(getCookie("140920045", "")));
		

	}

	//获取登入后的cookie
	public static String getCookie(String username , String password) {
		String param = "encoded="+ encodeInpUtil.encodeInp(username) +"%25%25%25" + encodeInpUtil.encodeInp(password);
		String cookie = null;
		PrintWriter out = null;
		BufferedReader in = null;
		String state = null;
		try {
			URL realUrl = new URL(loginUrlAction);
			// 打开和URL之间的连接
			HttpURLConnection conn = (HttpURLConnection) realUrl
					.openConnection();
			// 设置post请求
			conn.setRequestMethod("POST");
			// 禁止重定向
			conn.setInstanceFollowRedirects(false);
			// 设置通用的请求属性
			conn.setRequestProperty("accept", "*/*");
			conn.setRequestProperty("connection", "Keep-Alive");
			conn.setRequestProperty("user-agent",
					"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			// 发送POST请求必须设置如下两行
			conn.setDoOutput(true);
			conn.setDoInput(true);
			// 获取URLConnection对象对应的输出流
			out = new PrintWriter(new OutputStreamWriter(conn.getOutputStream(),"gbk"));
			// 发送请求参数
			out.print(param);
			// flush输出流的缓冲
			out.flush();
			//获取响应状态
			state = conn.getHeaderField(null);
			//获取Cookie
			cookie = state.contains("302") ? conn.getHeaderField("Set-Cookie").split(";")[0] : null;
		} catch (Exception e) {
			System.out.println("发送 POST 请求出现异常！" + e);
			e.printStackTrace();
		}
		// 使用finally块来关闭输出流、输入流
		finally {
			try {
				if (out != null) {
					out.close();
				}
				if (in != null) {
					in.close();
				}
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}

		return cookie;
	}

	// 根据用户登入后的Cookie获取成绩
	public static String getGrade(String term, String cookie) {
		if (cookie == null)
			return null;
		// zc=3&xnxq01id=2016-2017-2
		String param = "kksj=" + term + "&xsfs=all";
		PrintWriter out = null;
		BufferedReader in = null;
		String result = "";
		String gradeString = null;
		try {
			URL realUrl = new URL(gradeUrl);
			// 打开和URL之间的连接
			URLConnection conn = realUrl.openConnection();
			// 设置通用的请求属性
			conn.setRequestProperty("accept", "*/*");
			conn.setRequestProperty("connection", "Keep-Alive");
			conn.setRequestProperty("user-agent",
					"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			conn.setRequestProperty("Cookie", cookie);
			// 发送POST请求必须设置如下两行
			conn.setDoOutput(true);
			conn.setDoInput(true);
			// 获取URLConnection对象对应的输出流
			out = new PrintWriter(conn.getOutputStream());
			// 发送请求参数
			out.print(param);
			// flush输出流的缓冲
			out.flush();
			// 定义BufferedReader输入流来读取URL的响应
			in = new BufferedReader(
					new InputStreamReader(conn.getInputStream(), "UTF-8"));
			String line;
			while ((line = in.readLine()) != null) {
				result += line;
			}
			Pattern p = Pattern.compile("<table id[^>]*>[\\s\\S]*?</table>");
			Matcher m = p.matcher(result);
			if (m.find()) {
				gradeString = m.group();
			}
		} catch (Exception e) {
			System.out.println("发送 POST 请求出现异常！" + e);
			e.printStackTrace();
		}
		// 使用finally块来关闭输出流、输入流
		finally {
			try {
				if (out != null) {
					out.close();
				}
				if (in != null) {
					in.close();
				}
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}
//		String res = null;
//		try {
//			res =  new String(gradeString.getBytes("GBK"),"UTF-8");
//		} catch (UnsupportedEncodingException e) {
//			e.printStackTrace();
//		}
		return gradeString;
	}

	// 根据用户登入后的Cookie获取课表
	public static String getCourse(String term, String cookie) {
		if (cookie == null)
			return null;
		// zc=3&xnxq01id=2016-2017-2
		String param = "xnxq01id=" + term;
		PrintWriter out = null;
		BufferedReader in = null;
		String result = "";
		String courseString = null;
		try {
			URL realUrl = new URL(courseUrl);
			// 打开和URL之间的连接
			URLConnection conn = realUrl.openConnection();
			// 设置通用的请求属性
			conn.setRequestProperty("accept", "*/*");
			conn.setRequestProperty("connection", "Keep-Alive");
			conn.setRequestProperty("user-agent",
					"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			conn.setRequestProperty("Cookie", cookie);
			// 发送POST请求必须设置如下两行
			conn.setDoOutput(true);
			conn.setDoInput(true);
			// 获取URLConnection对象对应的输出流
			out = new PrintWriter(conn.getOutputStream());
			// 发送请求参数
			out.print(param);
			// flush输出流的缓冲
			out.flush();
			// 定义BufferedReader输入流来读取URL的响应
			in = new BufferedReader(
					new InputStreamReader(conn.getInputStream(),"UTF-8"));
			String line;
			while ((line = in.readLine()) != null) {
				result += line;
			}
			Pattern p = Pattern.compile("<table id[^>]*>[\\s\\S]*?</table>");
			Matcher m = p.matcher(result);
			if (m.find()) {
				courseString = m.group();
			}

		} catch (Exception e) {
			System.out.println("发送 POST 请求出现异常！" + e);
			e.printStackTrace();
		}
		// 使用finally块来关闭输出流、输入流
		finally {
			try {
				if (out != null) {
					out.close();
				}
				if (in != null) {
					in.close();
				}
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}
//		String res = null;
//		try {
//			res =  new String(courseString.getBytes("GBK"),"UTF-8");
//		} catch (UnsupportedEncodingException e) {
//			e.printStackTrace();
//		}
		return courseString;
	}
	
	// 根据用户登入后的Cookie获取名字
	public static String getName(String cookie) {
		if (cookie == null)
			return null;
		BufferedReader in = null;
		String result = "";
		String nameString = null;
		try {
			URL realUrl = new URL(nameUrl);
			// 打开和URL之间的连接
			URLConnection conn = realUrl.openConnection();
			// 设置通用的请求属性
			conn.setRequestProperty("accept", "*/*");
			conn.setRequestProperty("connection", "Keep-Alive");
			conn.setRequestProperty("user-agent",
					"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			conn.setRequestProperty("Cookie", cookie);
			// 发送POST请求必须设置如下两行
			conn.setDoOutput(true);
			conn.setDoInput(true);
			// 定义BufferedReader输入流来读取URL的响应
			in = new BufferedReader(
					new InputStreamReader(conn.getInputStream(), "UTF-8"));
			String line;
			while ((line = in.readLine()) != null) {
				result += line;
			}
			// System.out.println(result);
			Pattern p = Pattern
					.compile(" <div id=\"Top1_divLoginName\"[^>]*>([^(]*)");
			Matcher m = p.matcher(result);
			if (m.find()) {
				nameString = m.group(1);
			}
		} catch (Exception e) {
			System.out.println("发送 POST 请求出现异常！" + e);
			e.printStackTrace();
		}
		// 使用finally块来关闭输出流、输入流
		finally {
			try {
				if (in != null) {
					in.close();
				}
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}
//		String res = null;
//		try {
//			res =  new String(nameString.getBytes("ISO-8859-1"),"UTF-8");
//		} catch (UnsupportedEncodingException e) {
//			e.printStackTrace();
//		}
		return nameString;
	}

}
