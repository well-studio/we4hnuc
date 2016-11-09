package edu.hnuc.we.util;

/**
 * @author xxmodd 检查是否为移动端
 * 
 */

public class CheckUserAgent {
	private final static String[] agent = { "Android", "iPhone", "iPod",
			"iPad", "Windows Phone", "MQQBrowser" };

	public static boolean checkAgentIsMobile(String ua) {
		boolean flag = false;
		if (!ua.contains("Windows NT") || (ua.contains("Windows NT") && ua.contains("compatible; MSIE 9.0;"))) {
			// 排除 苹果桌面系统
			if (!ua.contains("Windows NT") && !ua.contains("Macintosh")) {
				for (String item : agent) {
					if (ua.contains(item)) {
						flag = true;
						break;
					}
				}
			}
		}
		return flag;
	}
	/*
	public static void main(String[] args) {
		System.out.println(checkAgentIsMobile("Android"));
	}
	*/
}
