package com.nwsuaf.utils;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.math.BigDecimal;
import java.util.Base64;
import java.util.Base64.Decoder;
import java.util.Base64.Encoder;
import java.util.Date;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

public class similar {
	public static void main(String[] args) throws IOException {
//		Encoder encoder = Base64.getEncoder();
//		File file = new File("C:/hu1.jpg");
//		FileInputStream fis = null;
//		try {
//			fis = new FileInputStream(file);
//		} catch (FileNotFoundException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		ByteArrayOutputStream baos = new ByteArrayOutputStream();
//		byte[] buffer = new byte[fis.available()];
//		int count = 0;
//		while ((count = fis.read(buffer)) >= 0) {
//			baos.write(buffer, 0, count);
//		}
//		fis.close();
//		baos.flush();
//		
//		new similar().writetouxiang(uploadBuffer1,"2016012923");

	}
	public void writetouxiang(String base64,String id) throws IOException {
		Decoder decoder = Base64.getDecoder();
		byte[] b = decoder.decode(base64);

		for (int i = 0; i < b.length; ++i) {
			if (b[i] < 0) {
				b[i] += 256;
			}
		}
		OutputStream out = new FileOutputStream("C:/file/touxiang/"+id+".jpg"); // 转换后的图片存放路径及对图片重命名
		out.write(b);
		out.flush();
		out.close();
	}

}
