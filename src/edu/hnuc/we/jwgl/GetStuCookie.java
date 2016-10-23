package edu.hnuc.we.jwgl;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;

import edu.hnuc.we.entity.User;

public class GetStuCookie {

	public static void main(String[] args) {
		System.out.println(getCookie("140940027","140940027"));
	}
	/**
	 * @author xxmodd
	 * 获取教务系统登入cookie
	 * 
	 */
	private static String url = "http://218.76.42.73/JwXs/LoginCheck.asp";
	
	public static String getCookie(String act,String psw){
		String param = "logindate=&LoginLb=xs&Account="+act+"&PassWord="+psw+"&x=29&y=10&AccessID=&DiskNumber=";
		String resCookie;
		PrintWriter out = null;
		BufferedReader in = null;
		try {
			URL realUrl = new URL(url);
			URLConnection conn = realUrl.openConnection();
			conn.setRequestProperty("accept", "*/*");
			conn.setRequestProperty("connection", "Keep-Alive");
			conn.setRequestProperty("user-agent",
					"Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
			conn.setDoOutput(true);
			conn.setDoInput(true);
			out = new PrintWriter(conn.getOutputStream());
			out.print(param);
			out.flush();
			in = new BufferedReader(new InputStreamReader(conn.getInputStream(),"GBK"));
			resCookie = conn.getHeaderField("Set-Cookie");
			return resCookie.split("; ")[0];
		} catch (Exception e) {
			System.out.println("发送 POST 请求出现异常！" + e);
			e.printStackTrace();
			return null;
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
				return null;
			}
		}
	}
	
}
