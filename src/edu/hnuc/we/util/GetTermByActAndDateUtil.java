package edu.hnuc.we.util;

import java.util.Arrays;
import java.util.Calendar;

/**
 * @author xxmodd
 * 动态获取学期
 *
 */
public class GetTermByActAndDateUtil {

	public static String[] getTerm(String Act){
		//获取入学年份,只算21世纪
		int entranceYear = Integer.parseInt("20" + Act.substring(0, 2));
		//获取现在年份
		int nowYear = Calendar.getInstance().get(Calendar.YEAR);
		//获取入学年份与现在年份只差
		int differ = nowYear - entranceYear + 1;
		int judge = (differ < 4) ? differ : 4;
		String[] term = new String[judge*2];
		int index = 0;
		for (int i = 0; i < judge; i++) {
			String t = String.valueOf(entranceYear + i) + "-"
					+ String.valueOf(entranceYear + i + 1) + "-";
			term[index++] = t + "1";
			term[index++] = t + "2";
		}
//		System.out.println(Arrays.toString(term));
		return term; 
	}
	public static void main(String[] args) {
		System.out.println(Arrays.toString(getTerm("140920045")));
	}
}
