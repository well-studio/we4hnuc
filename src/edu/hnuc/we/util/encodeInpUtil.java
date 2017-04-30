package edu.hnuc.we.util;

/**
 * 类名: encodeInp 描述: 教务系统加密方法(前端加密的。。)
 * 
 * @author xxmodd
 * @data 2017-3-18 t下午2:27:27
 */
public class encodeInpUtil {

	private static String keyStr = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";

	public static void main(String[] args) {
//		System.out.println("a".codePointAt(0));
		System.out.println(encodeInp("140920045"));
		

	}

	public static String encodeInp(String input) {
		int inputLen = input.length();
		String output = "";
		Integer chr1, chr2, chr3;
		Integer enc1, enc2, enc3, enc4;
		chr1 = chr2 = chr3 = 0;
		enc1 = enc2 = enc3 = enc4 = 0;
		for (int i = 0; i < inputLen;) {
			chr1 = i < inputLen ? input.codePointAt(i++) : 0;
			chr2 = i < inputLen ? input.codePointAt(i++) : 0;
			chr3 = i < inputLen ? input.codePointAt(i++) : 0;
			enc1 = chr1 >> 2;
			enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
			enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
			enc4 = chr3 & 63;
			if (chr2==0) {
				enc3 = enc4 = 64;
			} else if (chr3==0) {
				enc4 = 64;
			}
			output = output + keyStr.charAt(enc1) + keyStr.charAt(enc2)
					+ keyStr.charAt(enc3) + keyStr.charAt(enc4);
			chr1 = chr2 = chr3 = 0;
			enc1 = enc2 = enc3 = enc4 = 0;
		}
		return output;
	}
}
