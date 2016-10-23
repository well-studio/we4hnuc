package edu.hnuc.we.jwgl;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLConnection;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class GetCourse {

	/**
	 * @author xxmodd
	 * 获取课表
	 */
	private static String url = "http://jwgl.hnuc.edu.cn/jwxs/Xsxk/Xk_XsxkRight_Kb.asp";
	//
	//main方法测试
	public static void main(String[] args) {
		System.out.println(getcourse("140940027","2016-2017-1'",GetStuCookie.getCookie("140940027", "140940027")));
	}
	
	/*
	 * param act,psw,Xnxqh,cookie
	 * return course
	 */
	public static String getcourse(String act,String Xnxqh,String cookie){
//		System.out.println("act = "+act+"Xnxqh="+Xnxqh+"Cookie="+cookie);
		String param = "Xnxqh="+Xnxqh+"&Xh="+act+"&noshowtool=&showKbmx=ON";
		PrintWriter out = null;
		BufferedReader in = null;
		String result = "";
		try {
			URL realUrl = new URL(url);
			URLConnection conn = realUrl.openConnection();
			conn.setRequestProperty("accept", "*/*");
			conn.setRequestProperty("connection", "Keep-Alive");
			conn.setRequestProperty("user-agent",
					"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			conn.setRequestProperty("Cookie", cookie);
			conn.setDoOutput(true);
			conn.setDoInput(true);
			out = new PrintWriter(conn.getOutputStream());
			out.print(param);
			out.flush();
			in = new BufferedReader(
					new InputStreamReader(conn.getInputStream(),"GBK"));
			String line;
			while ((line = in.readLine()) != null) {
				result += line;
			}
		} catch (Exception e) {
			System.out.println("发送 POST 请求出现异常！" + e);
			e.printStackTrace();
		}
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
		//System.out.println(result);
	    return getCourseInfo(result,Xnxqh);
	}
	
	
	public static String getCourseInfo(String result,String Xnxqh){
		//System.out.println(result);
		//获取姓名
		Pattern p = Pattern.compile("湖南商学院([\\S\\s]*?)学生课表");
		Matcher m = p.matcher(result);
		m.find();
		String sname = m.group(1);
		//System.out.println(sname);
		//获取课表
		p = Pattern.compile("(<table[\\s\\S]*?>[\\s\\S]*?</table>)");
		m = p.matcher(result);
		StringBuffer sb = new StringBuffer();
		int len = 1;
		m.find();m.find();
		sb.append(m.group());
		String infos = sb.toString();
		//infos = infos.replaceAll("<table([\\S\\s]*?)>", "<table border=\"1\" class=\"am-table am-table-bordered .am-table-hover\">");
		//infos = infos.replaceAll("<tr([\\S\\s]*?)>", "<tr>");
		//infos = infos.replaceAll("<td([\\S\\s]*?)>", "<td>");
		//infos = infos.replaceAll("&nbsp;", "");
		infos = infos.replaceAll("<DIV[\\S\\s]*</DIV>", "");
		infos = infos.replace("<td>[\\S\\s]*</td>", "");
		infos = infos.replace("href='#'", "");
		//
		return "<h2>学期："+Xnxqh+"|学生："+sname+"</h2>"+infos;
	}
	
	public static String getStuName(String act,String Xnxqh,String cookie) {
		String param = "Xnxqh="+Xnxqh+"&Xh="+act+"&noshowtool=&showKbmx=ON";
		PrintWriter out = null;
		BufferedReader in = null;
		String result = "";
		try {
			URL realUrl = new URL(url);
			URLConnection conn = realUrl.openConnection();
			conn.setRequestProperty("accept", "*/*");
			conn.setRequestProperty("connection", "Keep-Alive");
			conn.setRequestProperty("user-agent",
					"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			conn.setRequestProperty("Cookie", cookie);
			conn.setDoOutput(true);
			conn.setDoInput(true);
			out = new PrintWriter(conn.getOutputStream());
			out.print(param);
			out.flush();
			in = new BufferedReader(
					new InputStreamReader(conn.getInputStream(),"GBK"));
			String line;
			while ((line = in.readLine()) != null) {
				result += line;
			}
		} catch (Exception e) {
			System.out.println("发送 POST 请求出现异常！" + e);
			e.printStackTrace();
		}
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
		Pattern p = Pattern.compile("湖南商学院([\\S\\s]*?)学生课表");
		Matcher m = p.matcher(result);
		m.find();
		String sname = m.group(1);
		return sname;
	}
}
