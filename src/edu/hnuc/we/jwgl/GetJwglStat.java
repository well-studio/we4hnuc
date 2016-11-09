package edu.hnuc.we.jwgl;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;

import org.junit.Test;

/**
 * 获取jwgl开闭状态
 * @author Hallbow
 *
 */
public class GetJwglStat {
	
//	private static String url = "http://jwgl.hnuc.edu.cn/jwxs/";
//	private static String url = "http://jwgl.hnuc.edu.cn";
	private static String url = "http://218.76.42.73/";
	
	public static boolean getStat(){
		PrintWriter out = null;
		BufferedReader in = null;
		String result = "";
		boolean stat = false;
		try {
			URL realUrl = new URL(url);
			URLConnection conn = realUrl.openConnection();
//			conn.setRequestProperty("accept", "*/*");
//			conn.setRequestProperty("connection", "Keep-Alive");
//			conn.setRequestProperty("user-agent", "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)"); 
			conn.setConnectTimeout(10000);
			conn.setReadTimeout(10000);
			conn.setDoOutput(true);
			conn.setDoInput(true);
			out = new PrintWriter(conn.getOutputStream());
			out.flush();
			in = new BufferedReader(
					new InputStreamReader(conn.getInputStream(),"GBK"));
			String line;
			while ((line = in.readLine()) != null) {
				result += line;
			}
//			System.out.println(result);
			if(result.contains("湖南商学院教务管理系统")) {
				stat = true;
			}
		} catch (Exception e) {
			System.out.println("教务系统暂未开放！" + e);
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
	    return stat;
	}
	
	public static void main(String[] args) {
		System.out.println(getStat());
	}
	
}
