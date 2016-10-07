package edu.hnuc.we.jwgl;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;

public class LoginCheck {

	/**
	 * @author xxmodd
	 * 教务系统登入验证
	 *
	 */

	private static String url = "http://218.76.42.73/JwXs/LoginCheck.asp";
	private static String jwglindexurl = "http://218.76.42.73/jwxs/Xsxk/default.asp";


	public static void main(String[] args) {
		System.out.println(check(GetStuCookie.getCookie("0000000", "00")));
	}

	public static boolean check(String cookie){
		//String param = "logindate=&LoginLb=xs&Account="+act+"&PassWord="+psw+"&x=29&y=10&AccessID=&DiskNumber=";
		PrintWriter out = null;
		BufferedReader in = null;
		String result="";
		try {
			URL realUrl = new URL(jwglindexurl);
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
//			out.print(param);
			out.flush();
			in = new BufferedReader(
					new InputStreamReader(conn.getInputStream(),"GBK"));
			String line;
			while ((line = in.readLine()) != null) {
				result += line;
			}
			if(result.indexOf("<title>教务管理信息系统[学生版]</title>")!=-1){
				return true;
			}
//			System.out.println(result);
		} catch (Exception e) {
			System.out.println("发送 POST 请求出现异常！" + e);
			e.printStackTrace();
			return false;
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
				return false;
			}
		}
		return false;
	}

}
