package edu.hnuc.we.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.ServletActionContext;

public class AdminImgs {

	/**
	 * @author xxmodd
	 * 获取管理员上传的图片名字
	 * 
	 */
	public static List<String> getImgsName(String path){
		List<String> lists = new ArrayList<String>();
		File adminImgs = new File(path);
		File[] images = adminImgs.listFiles();
		for(File f : images){
			lists.add(f.getName());
		}
		return lists;
	}
	/**
	 * 删除指定图片 
	 * @param path
	 * @return
	 */
	public static boolean deleteImg(String path) {
		File img = new File(path);
		return img.delete();
	}
	
	/**
	 * 保存单张图片
	 * @return
	 */
	public static boolean saveImg(File img , String path){
		InputStream is = null;
		OutputStream os = null;
		try {
			is = new FileInputStream(img);
			os = new FileOutputStream(path);
			byte[] buf = new byte[1024];
			int length = 0;
			while(-1 != (length = is.read(buf))) {
				os.write(buf, 0, length);
			}
//			System.out.println("上传成功");
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		} finally {
			if(is != null) {
				try {
					is.close();
				} catch (IOException e) {
					e.printStackTrace();
					return false;
				}
			}
			if(os != null) {
				try {
					os.close();
				} catch (IOException e) {
					e.printStackTrace();
					return false;
				}
			}
		}
		
	}
}
