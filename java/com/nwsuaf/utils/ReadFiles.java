package com.nwsuaf.utils;

import java.awt.Color;
import java.awt.Dimension;
import java.io.*;
import java.util.*;
import java.util.Map.Entry;
import javax.annotation.Resource;
import com.nwsuaf.service.UserService;

public class ReadFiles {

	static String id1;
	public static String[] s = new String[10];
	public static String[] v = new String[10];
	public static String[] c = new String[40];
	@Resource
    UserService userservice;
	/**
	 * @param args
	 */
	private static ArrayList<String> FileList = new ArrayList<String>(); // the list of file

	// get list of file for the directory, including sub-directory of it
	public static List<String> readDirs(String filepath) throws FileNotFoundException, IOException {
		try {
			File file = new File(filepath);
			if (!file.isDirectory()) {
				// System.out.println("输入的[]");
				// System.out.println("filepath:" + file.getAbsolutePath());
			} else {
				String[] flist = file.list();
				for (int i = 0; i < flist.length; i++) {
					File newfile = new File(filepath + "\\" + flist[i]);
					if (!newfile.isDirectory()) {
						FileList.add(newfile.getAbsolutePath());
					} else if (newfile.isDirectory()) // if file is a directory, call ReadDirs
					{
						readDirs(filepath + "\\" + flist[i]);
					}
				}
			}
		} catch (FileNotFoundException e) {
			System.out.println(e.getMessage());
		}
		return FileList;
	}

	// read file
	public static String readFile(String file) throws FileNotFoundException, IOException {
		StringBuffer strSb = new StringBuffer(); // String is constant， StringBuffer can be changed.
		InputStreamReader inStrR = new InputStreamReader(new FileInputStream(file), "UTF-8"); // byte streams to
																								// character streams
		BufferedReader br = new BufferedReader(inStrR);
		String line = br.readLine();
		while (line != null) {
			strSb.append(line).append("\r\n");
			line = br.readLine();
		}

		return strSb.toString();
	}

	// word segmentation
	public static ArrayList<String> cutWords(String file) throws IOException {

		ArrayList<String> words = new ArrayList<String>();
		String text = ReadFiles.readFile(file);
		String[] ws = text.split(" ");
		for (String s2 : ws) {
			words.add(s2);
		}
		return words;
	}

	// term frequency in a file, times for each word
	public static HashMap<String, Integer> normalTF(ArrayList<String> cutwords) {
		HashMap<String, Integer> resTF = new HashMap<String, Integer>();

		for (String word : cutwords) {
			if (resTF.get(word) == null) {
				resTF.put(word, 1);
				// System.out.println(word);
			} else {
				resTF.put(word, resTF.get(word) + 1);
				// System.out.println(word.toString());
			}
		}
		return resTF;
	}

	// term frequency in a file, frequency of each word
	public static HashMap<String, Float> tf(ArrayList<String> cutwords) {
		HashMap<String, Float> resTF = new HashMap<String, Float>();

		int wordLen = cutwords.size();
		HashMap<String, Integer> intTF = ReadFiles.normalTF(cutwords);

		Iterator iter = intTF.entrySet().iterator(); // iterator for that get from TF
		while (iter.hasNext()) {
			Map.Entry entry = (Map.Entry) iter.next();
			resTF.put(entry.getKey().toString(), Float.parseFloat(entry.getValue().toString()) / wordLen);
			// System.out.println(entry.getKey().toString() + " = "+
			// Float.parseFloat(entry.getValue().toString()) / wordLen);
		}
		return resTF;
	}

	// tf times for file
	public static HashMap<String, HashMap<String, Integer>> normalTFAllFiles(String dirc) throws IOException {
		HashMap<String, HashMap<String, Integer>> allNormalTF = new HashMap<String, HashMap<String, Integer>>();

		List<String> filelist = ReadFiles.readDirs(dirc);
		List<String> list = new ArrayList<String>();
		for(int i=filelist.size()-1;i>filelist.size()-1-2;i--) {
			list.add(filelist.get(i));
		}
		for (String file :list) {
			HashMap<String, Integer> dict = new HashMap<String, Integer>();
			ArrayList<String> cutwords = ReadFiles.cutWords(file); // get cut word for one file

			dict = ReadFiles.normalTF(cutwords);
			allNormalTF.put(file, dict);
		}
		return allNormalTF;
	}

	// tf for all file
	public static HashMap<String, HashMap<String, Float>> tfAllFiles(String dirc) throws IOException {
		HashMap<String, HashMap<String, Float>> allTF = new HashMap<String, HashMap<String, Float>>();
		List<String> filelist = ReadFiles.readDirs(dirc);

		List<String> list = new ArrayList<String>();
		for(int i=filelist.size()-1;i>filelist.size()-1-2;i--) {
			list.add(filelist.get(i));
		}
		for (String file : list) {
			String x = file.split("\\\\")[4].split("[.]")[0];
			//System.out.println(x);
			if (x.equals(id1) || x.equals("a")) {
				HashMap<String, Float> dict = new HashMap<String, Float>();
				ArrayList<String> cutwords = ReadFiles.cutWords(file); // get cut words for one file

				dict = ReadFiles.tf(cutwords);
				allTF.put(file, dict);
			}
		}
		return allTF;
	}

	public static HashMap<String, Float> idf(HashMap<String, HashMap<String, Float>> all_tf) {
		HashMap<String, Float> resIdf = new HashMap<String, Float>();
		HashMap<String, Integer> dict = new HashMap<String, Integer>();
		int docNum = FileList.size();

		for (int i=FileList.size()-1;i>FileList.size()-1-2;i--) {
			HashMap<String, Float> temp = all_tf.get(FileList.get(i));
			Iterator iter = temp.entrySet().iterator();
			while (iter.hasNext()) {
				Map.Entry entry = (Map.Entry) iter.next();
				String word = entry.getKey().toString();
				if (dict.get(word) == null) {
					dict.put(word, 1);
				} else {
					dict.put(word, dict.get(word) + 1);
				}
			}
		}
		// System.out.println("IDF for every word is:");
		Iterator iter_dict = dict.entrySet().iterator();
		while (iter_dict.hasNext()) {
			Map.Entry entry = (Map.Entry) iter_dict.next();
			float value = (float) Math.log(docNum / Float.parseFloat(entry.getValue().toString()));
			resIdf.put(entry.getKey().toString(), value);
			// System.out.println(entry.getKey().toString() + " = " + value);
		}
		return resIdf;
	}

	public static void tf_idf(HashMap<String, HashMap<String, Float>> all_tf, HashMap<String, Float> idfs)
			throws IOException {
		HashMap<String, HashMap<String, Float>> resTfIdf = new HashMap<String, HashMap<String, Float>>();

		int docNum = FileList.size();
		for (int i = 1; i <= 2; i++) {
			String filepath = FileList.get(FileList.size()-i);
			HashMap<String, Float> tfidf = new HashMap<String, Float>();
			HashMap<String, Float> temp = all_tf.get(filepath);
			Iterator iter = temp.entrySet().iterator();
			while (iter.hasNext()) {
				Map.Entry entry = (Map.Entry) iter.next();
				String word = entry.getKey().toString();
				Float value = (float) Float.parseFloat(entry.getValue().toString()) * idfs.get(word);
				tfidf.put(word, value);
			}
			resTfIdf.put(filepath, tfidf);
		}
		// System.out.println("TF-IDF for Every file is :");
		DisTfIdf(resTfIdf);
	}

	public static void DisTfIdf(HashMap<String, HashMap<String, Float>> tfidf) throws IOException {
		Iterator iter1 = tfidf.entrySet().iterator();
		byte[] b = new byte[1024];
		String filename;
		while (iter1.hasNext()) {
			Map.Entry entrys = (Map.Entry) iter1.next();
			filename = entrys.getKey().toString();
			b = ("FileName: " + entrys.getKey().toString()).getBytes();
			HashMap<String, Float> temp = (HashMap<String, Float>) entrys.getValue();
			Set<String> keySet = temp.keySet();
//			Iterator it = keySet.iterator();
//			while(it.hasNext()) {
//				if(it.next().toString().length()>1) {
//					System.out.println(it.next());
//				}
//				
//			}
			Iterator iter2 = temp.entrySet().iterator();
			String x;
			while (iter2.hasNext()) {
				x = iter2.next().toString().split("=")[0];
				if (x.length() <= 1) {
					iter2.remove();
				}
			}
			List<Entry<String, Float>> list = new ArrayList<>(temp.entrySet());
			Collections.sort(list, new Comparator<Map.Entry<String, Float>>() {
				public int compare(Map.Entry<String, Float> o1, Map.Entry<String, Float> o2) {
					// 按照value值，用compareTo()方法默认是从小到大排序
					return o1.getValue().compareTo(o2.getValue());
				}
			});
			
			int s1 = 0;
			for (int j = list.size(); j > (list.size() - 10) && j > 0; j--) {
				if (filename.split("\\\\")[4].split("[.]")[0].equals(id1)) {
					if(j-2>=0) {
						s[s1] = list.get(j - 1).toString().split("=")[0];
						v[s1] = list.get(j - 1).toString().split("=")[1];
						s1++;
					}
				}
			}
			
			s1 = 0;
			for (int j = list.size(); j > (list.size() - 40) && j > 0; j--) {
				if (filename.split("\\\\")[4].split("[.]")[0].equals(id1)) {
					c[s1] = list.get(j - 1).toString().split("=")[0];
					//System.out.println(c[s1]);
					s1++;
					// System.out.println(list.get(j - 1));
				}
			}
			while (iter2.hasNext()) {
				Map.Entry entry = (Map.Entry) iter2.next();

				if (entry.getKey().toString().length() > 1) {
					b = (entry.getKey().toString() + " = " + entry.getValue().toString() + ", " + " ").getBytes();
					// System.out.println(entry.getKey().toString() + " = " +
					// entry.getValue().toString() + ", ");
				}
			}
			// System.out.println("}");
		}

	}

	public static  void biaoqian(String id) throws IOException {
		String file = "c:/file//word/"+id;
		id1 = id;
//        String file = "src/main/resources/word";
		HashMap<String, HashMap<String, Float>> all_tf = tfAllFiles(file);
		System.out.println();
		HashMap<String, Float> idfs = idf(all_tf);
		System.out.println();
		tf_idf(all_tf, idfs);
	}
	public static  void biaoqian_lw(String id) throws IOException {
		String file = "c:/file//word_lw/"+id;
		id1 = id;
//        String file = "src/main/resources/word";
		HashMap<String, HashMap<String, Float>> all_tf = tfAllFiles(file);
		System.out.println();
		HashMap<String, Float> idfs = idf(all_tf);
		System.out.println();
		tf_idf(all_tf, idfs);
	}
	public static  void biaoqian_zl(String id) throws IOException {
		String file = "c:/file//word_zl/"+id;
		id1 = id;
//        String file = "src/main/resources/word";
		HashMap<String, HashMap<String, Float>> all_tf = tfAllFiles(file);
		System.out.println();
		HashMap<String, Float> idfs = idf(all_tf);
		System.out.println();
		tf_idf(all_tf, idfs);
	}
}