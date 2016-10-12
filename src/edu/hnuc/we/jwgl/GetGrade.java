package edu.hnuc.we.jwgl;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


public class GetGrade {

	/**
	 * @author xxmodd
	 * 类说明
	 * 
	 */
	public static void main(String[] args) {
		String result = getGrade("140920045", "2015-2016-1",GetStuCookie.getCookie("140920045", "3.14159java"));
		System.out.println(result);
	}
	
	private static String url = "http://jwgl.hnuc.edu.cn/jwxs/Xsxk/Xk_CjZblist.asp";
	public static String getGrade(String act,String Xnxqh,String cookie){
		String param = "Xh="+ act+ "&Xnxqh="+Xnxqh;
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
			conn.setConnectTimeout(10000);
			conn.setReadTimeout(10000);
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
	    return getGrideInfo(result);
	}
	
	/**
	 * 处理爬过来的课程字符串
	 * @param result
	 * @return
	 */
	public static String getGrideInfo(String result){
		Pattern p = Pattern.compile("(<table[\\s\\S]*?>[\\s\\S]*?</table>)");
		Matcher m = p.matcher(result);
		StringBuffer sb = new StringBuffer();
		int len = 0;
		while(m.find()){
			if(len++>0){
				sb.append(m.group());
			}
		}
		String infos = sb.toString().replaceAll("<INPUT[\\S\\s]*?>", "");
		infos = infos.replaceAll("<table([\\S\\s]*?)>", "<table border=\"1\" class=\"am-table am-table-striped am-table-hover\">");
		infos = infos.replaceAll("<tr([\\S\\s]*?)>", "<tr>");
		infos = infos.replaceAll("<td([\\S\\s]*?)>", "<td>");
		infos = infos.replaceAll("<a name=[\\S\\s]*?></a>", "");
		return infos;
	}
	
}
