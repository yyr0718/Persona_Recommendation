package com.nwsuaf.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.nwsuaf.entity.Book;
import com.nwsuaf.entity.Lend;
import com.nwsuaf.entity.Reader;
import com.nwsuaf.entity.User;
import com.nwsuaf.entity.book_bq;
import com.nwsuaf.service.BookService;
import com.nwsuaf.service.LWService;
import com.nwsuaf.service.UserService;
import com.nwsuaf.service.ZLService;
import com.nwsuaf.utils.App;
import com.nwsuaf.utils.MySimHash;
import com.nwsuaf.utils.ReadFiles;

@Controller
public class CiyunController {
	@Resource
	UserService userservice;
	@Resource
	BookService bookservice;
	@Resource
	LWService lwservice;
	@Resource
	ZLService zlservice;
	String[] books = ReadFiles.c;

	@RequestMapping("ciyun")
	public String ciyun(HttpServletRequest request, Model model) throws IOException {
		String id = String.valueOf(request.getSession().getAttribute("session"));
		for (int i = 0; i < books.length; i++) {
			// System.out.println(ReadFiles.c[i]+" "+i);
			ReadFiles.c[i] = "";
		}
		for (int i = 0; i < 10; i++) {
			// System.out.println(ReadFiles.c[i]+" "+i);
			ReadFiles.s[i] = "";
			ReadFiles.v[i] = "";
		}
		ArrayList<String> getbooks = userservice.getbooks(id);
		App.startR(String.valueOf(request.getSession().getAttribute("session")), getbooks);
		ReadFiles.biaoqian(id);
		userservice.insertKey(id, ReadFiles.s[0], ReadFiles.s[1], ReadFiles.s[2], ReadFiles.s[3], ReadFiles.s[4],
				ReadFiles.s[5], ReadFiles.s[6], ReadFiles.s[7], ReadFiles.s[8], ReadFiles.s[9], ReadFiles.v[0],
				ReadFiles.v[1], ReadFiles.v[2], ReadFiles.v[3], ReadFiles.v[4], ReadFiles.v[5], ReadFiles.v[6],
				ReadFiles.v[7], ReadFiles.v[8], ReadFiles.v[9]);
		ArrayList<User> user = userservice.findUser(String.valueOf(request.getSession().getAttribute("session")), 0);
		User user2 = user.get(0);
		model.addAttribute("user", user2);

		model.addAttribute("age", userservice.findAge(String.valueOf(request.getSession().getAttribute("session"))));
		if (user2.getSex().equals("M")) {
			model.addAttribute("sex", "男");
		} else {
			model.addAttribute("sex", "女");
		}
		char s[] = String.valueOf(request.getSession().getAttribute("session")).toCharArray();
		char[] c = new char[4];
		for (int i = 0; i < 4; i++) {
			c[i] = s[i];
		}
		model.addAttribute("nianji", String.valueOf(c));
		book_bq bb = bookservice.getbook_bq(String.valueOf(request.getSession().getAttribute("session")));
		model.addAttribute("map", bb);

//		FileInputStream in = new FileInputStream(new File("c:/file/word/" + id + "/" + id + ".txt"));
//		byte b[] = new byte[in.available()];
//		in.read(b);
//		in.close();
//		String bq = new String(b);
//		ArrayList<book_bq> bq1 = new ArrayList<book_bq>();
//		for (int i = 0; i < bq.split(" ").length; i++) {
//			book_bq bqx = new book_bq();
//			bqx.setKey1(bq.split(" ")[i]);
//			bq1.add(bqx);
//		}
//		model.addAttribute("bq", bq1);
		ArrayList<book_bq> bq1 = new ArrayList<book_bq>();
		for (String s1 : books) {
			book_bq bqx = new book_bq();
			bqx.setKey1(s1);
			bq1.add(bqx);
		}
		model.addAttribute("bq", bq1);
		model.addAttribute("time", userservice.findtime(id).getTime());
		model.addAttribute("ip", userservice.findip(id).getIp());
		model.addAttribute("zd", userservice.findzd(id).getZd());
		model.addAttribute("weizhi", userservice.findweizhi(id).getWeizhi());

		// new
		// Demo().ciyun(String.valueOf(request.getSession().getAttribute("session")));
		return "ciyun";
	}

	@RequestMapping("center-ciyun")
	public String center_ciyun(HttpServletRequest request, Model model) throws IOException {
		String id = String.valueOf(request.getSession().getAttribute("session"));
		for (int i = 0; i < books.length; i++) {
			// System.out.println(ReadFiles.c[i]+" "+i);
			ReadFiles.c[i] = "";
		}
		for (int i = 0; i < 10; i++) {
			// System.out.println(ReadFiles.c[i]+" "+i);
			ReadFiles.s[i] = "";
			ReadFiles.v[i] = "";
		}
		ArrayList<String> getbooks = userservice.getbooks(id);
		App.startR(String.valueOf(request.getSession().getAttribute("session")), getbooks);
		ReadFiles.biaoqian(id);
		userservice.insertKey(id, ReadFiles.s[0], ReadFiles.s[1], ReadFiles.s[2], ReadFiles.s[3], ReadFiles.s[4],
				ReadFiles.s[5], ReadFiles.s[6], ReadFiles.s[7], ReadFiles.s[8], ReadFiles.s[9], ReadFiles.v[0],
				ReadFiles.v[1], ReadFiles.v[2], ReadFiles.v[3], ReadFiles.v[4], ReadFiles.v[5], ReadFiles.v[6],
				ReadFiles.v[7], ReadFiles.v[8], ReadFiles.v[9]);
		ArrayList<User> user = userservice.findUser(String.valueOf(request.getSession().getAttribute("session")), 0);
		User user2 = user.get(0);
		model.addAttribute("user", user2);

		model.addAttribute("age", userservice.findAge(String.valueOf(request.getSession().getAttribute("session"))));
		if (user2.getSex().equals("M")) {
			model.addAttribute("sex", "男");
		} else {
			model.addAttribute("sex", "女");
		}
		char s[] = String.valueOf(request.getSession().getAttribute("session")).toCharArray();
		char[] c = new char[4];
		for (int i = 0; i < 4; i++) {
			c[i] = s[i];
		}
		model.addAttribute("nianji", String.valueOf(c));
		book_bq bb = bookservice.getbook_bq(String.valueOf(request.getSession().getAttribute("session")));

		model.addAttribute("map", bb);

//		FileInputStream in = new FileInputStream(new File("c:/file/word/" + id + "/" + id + ".txt"));
//		byte b[] = new byte[in.available()];
//		in.read(b);
//		in.close();
//		String bq = new String(b);
//		ArrayList<book_bq> bq1 = new ArrayList<book_bq>();
//		for (int i = 0; i < bq.split(" ").length; i++) {
//			book_bq bqx = new book_bq();
//			bqx.setKey1(bq.split(" ")[i]);
//			bq1.add(bqx);
//		}
//		model.addAttribute("bq", bq1);
		ArrayList<book_bq> bq1 = new ArrayList<book_bq>();
		for (String s1 : books) {
			book_bq bqx = new book_bq();
			bqx.setKey1(s1);
			bq1.add(bqx);
		}
		model.addAttribute("bq", bq1);
		model.addAttribute("time", userservice.findtime(id).getTime());
		model.addAttribute("ip", userservice.findip(id).getIp());
		model.addAttribute("zd", userservice.findzd(id).getZd());
		model.addAttribute("weizhi", userservice.findweizhi(id).getWeizhi());

		// new
		// Demo().ciyun(String.valueOf(request.getSession().getAttribute("session")));
		return "center-ciyun";
	}

	@RequestMapping("center-plw")
	public String plw(HttpSession session,HttpServletRequest request, Model model) throws IOException {
		String id = String.valueOf(request.getSession().getAttribute("session"));
		for (int i = 0; i < books.length; i++) {
			// System.out.println(ReadFiles.c[i]+" "+i);
			ReadFiles.c[i] = "";
		}
		for (int i = 0; i < 10; i++) {
			// System.out.println(ReadFiles.c[i]+" "+i);
			ReadFiles.s[i] = "";
			ReadFiles.v[i] = "";
		}
		ArrayList<String> getlws = lwservice.getlws(userservice.findnamebyid(id));

		App.startR_lw(String.valueOf(request.getSession().getAttribute("session")), getlws);
		ReadFiles.biaoqian_lw(id);
		lwservice.insertKey_lw(id, ReadFiles.s[0], ReadFiles.s[1], ReadFiles.s[2], ReadFiles.s[3], ReadFiles.s[4],
				ReadFiles.s[5], ReadFiles.s[6], ReadFiles.s[7], ReadFiles.s[8], ReadFiles.s[9], ReadFiles.v[0],
				ReadFiles.v[1], ReadFiles.v[2], ReadFiles.v[3], ReadFiles.v[4], ReadFiles.v[5], ReadFiles.v[6],
				ReadFiles.v[7], ReadFiles.v[8], ReadFiles.v[9]);

		InputStream input = null;
		OutputStream output = null;
		try {

			File f = new File("c:/file/word_lw/" + id);
			if (f.exists()) {
			} else {
				f.mkdir();
			}
			input = new FileInputStream("C:/file/a.txt");
			output = new FileOutputStream("C:/file/word_lw/" + id + "/a.txt");
			byte[] buf = new byte[1024];
			int bytesRead = 0;
			while ((bytesRead = input.read(buf)) != -1) {
				output.write(buf, 0, bytesRead);
			}
		} finally {
			input.close();
			output.close();
		}

//		FileInputStream in = new FileInputStream(new File("c:/file/word_lw/" + id + "/" + id + ".txt"));
//		byte b[] = new byte[in.available()];
//		in.read(b);
//		in.close();
//		String bq = new String(b);

//		for (int i = 0; i < bq.split(" ").length; i++) {
//			book_bq bqx = new book_bq();
//			bqx.setKey1(bq.split(" ")[i]);
//			bq1.add(bqx);
//		}
		ArrayList<book_bq> bq1 = new ArrayList<book_bq>();
		for (String s : books) {
			book_bq bqx = new book_bq();
			bqx.setKey1(s);
			bq1.add(bqx);
		}
		model.addAttribute("bq", bq1);
		Reader reader = (Reader) session.getAttribute("reader");
		book_bq bb = lwservice.getlw_bq(reader.getCert_id());
		model.addAttribute("map", bb);

		return "center-plw";
	}

	@RequestMapping("center-pzl")
	public String pzl(HttpServletRequest request, Model model) throws IOException {
		for (int i = 0; i < books.length; i++) {
			// System.out.println(ReadFiles.c[i]+" "+i);
			ReadFiles.c[i] = "";
		}
		for (int i = 0; i < 10; i++) {
			// System.out.println(ReadFiles.c[i]+" "+i);
			ReadFiles.s[i] = "";
			ReadFiles.v[i] = "";
		}
		return "center-pzl";
	}

	@RequestMapping("center-data")
	public String centerdata(HttpServletRequest request, Model model) {

		return "center-data";
	}

	@RequestMapping("familar_lw")
	@ResponseBody
	public String familar_lw(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
		String id = String.valueOf(request.getSession().getAttribute("session"));
		book_bq bookbq = userservice.findwx_bq(id).get(0);
		String[] bq1 = null;
		if(bookbq!=null) {
			bq1= bookbq.toString().split(",");
		}
		 

		HashMap<String, Integer> h = new HashMap<String, Integer>();

		if (bq1.length > 0) {

			for (int i = 0; i < 10; i++) {

				ArrayList<String> s = new ArrayList<String>();
				s = userservice.findSimilar_wx(bq1[i]);
				if (s != null) {

					for (String author1 : s) {

						String[] author = author1.split(",");
						for (int j = 0; j < author.length; j++) {
							if (!author[j].equals(userservice.findnamebyid(id))) {
								if (h.containsKey(author[j])) {
									Integer num = h.get(author[j]);
									num += 1;
									h.put(author[j], num);

								} else {
									if (userservice.finduserbyname(author[j]) != null) {
										h.put(author[j], 1);
									}
								}
							}
						}

					}
				}
				ArrayList<String> s1 = new ArrayList<String>();
				s1 = userservice.findSimilar_lw(bq1[i]);
				if (s1 != null) {

					for (String author1 : s1) {

						String[] author = author1.split(";");
						for (int j = 0; j < author.length; j++) {
							if (!author[j].equals(userservice.findnamebyid(id))) {
								if (h.containsKey(author[j])) {

									Integer num = h.get(author[j]);
									num += 1;
									h.put(author[j], num);

								} else {
									if (userservice.finduserbyname(author[j]) != null) {
										h.put(author[j], 1);
									}
								}
							}
						}

					}
				}
				if (h.size() >= 7) {
					break;
				}

			}
		} 
		else {
			h.put("无", 0);
		}
		List<Map.Entry<String, Integer>> list = new ArrayList<>(h.entrySet());
		Collections.sort(list, new Comparator<Map.Entry<String, Integer>>() {
			@Override
			public int compare(Map.Entry<String, Integer> o1, Map.Entry<String, Integer> o2) {
				// 按照value值，重小到大排序
//                return o1.getValue() - o2.getValue();

				// 按照value值，从大到小排序
				return o2.getValue() - o1.getValue();

				// 按照value值，用compareTo()方法默认是从小到大排序
				// return o1.getValue().compareTo(o2.getValue());
			}
		});

		// 注意这里遍历的是list，也就是我们将map.Entry放进了list，排序后的集合
		ArrayList<HashMap<String, String>> f = new ArrayList<HashMap<String, String>>();

		int bb=0;
		lwservice.delete(id);
		for (Map.Entry s : list) {
			HashMap<String, String> h1 = new HashMap<String, String>();
			h1.put("name", String.valueOf(s.getKey()));
			h1.put("count", String.valueOf(s.getValue()));
			String id1 = userservice.finduserbyname(s.getKey().toString()).getCert_id();
			int number = Integer.valueOf(s.getValue().toString());
			int flag = 0;
			if(bb<7) {
				lwservice.addfamilar(id,id1,number,flag);
				bb++;
			}
			f.add(h1);
		}
		System.out.println(f);
		JSONArray json1 = new JSONArray(f);
		return json1.toString();

	}

	@RequestMapping("user-data")
	@ResponseBody
	public String userdata(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
		String id = String.valueOf(request.getSession().getAttribute("session"));
		book_bq bookbq = userservice.findbook_bq(id).get(0);
		String[] bq1 = bookbq.toString().split(",");
		ArrayList<HashMap<String, String>> f = new ArrayList<HashMap<String, String>>();
		if (bq1.length > 0) {
			for (int i = 0; i < 10; i++) {
				if ((userservice.findSimilar(bq1[i], id).toString()) != null) {
					f = userservice.findSimilar(bq1[i], id);
					if (f.size() >= 7)
						System.err.println(bq1[i]);
						break;
				}

			}
		}
		if (f.size() == 0) {
			f = userservice.findSimilar("", id);
		}
		int bb=0;
		lwservice.delete_bookfamilar(id);
		for (int i = 0; i < f.size(); i++) {
			f.get(i).put("name", userservice.findnamebyid(f.get(i).get("CERT_ID_F")));
			String id1 = f.get(i).get("CERT_ID_F");
			int number = Integer.valueOf(String.valueOf(f.get(i).get("count")));
			int flag = 2;
			if(bb<7) {
				lwservice.addfamilar(id,id1,number,flag);
				bb++;
			}
			
		}
		JSONArray json = new JSONArray();
		json.put(f);
		String f1 = json.toString();
		return f1;

	}

	@RequestMapping("user-friend")
	@ResponseBody
	public String userfriend(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
		String id = String.valueOf(request.getSession().getAttribute("session"));
		ArrayList<String> friends_lw = lwservice.getfriend_lw(userservice.findnamebyid(id));
		ArrayList<String> friends_zl = zlservice.getfriend_zl(userservice.findnamebyid(id));
		HashMap<String, Integer> h = new HashMap<String, Integer>();
		for (String author1 : friends_lw) {
			String[] author = author1.split(",");
			for (int j = 0; j < author.length; j++) {
				if (!author[j].equals(userservice.findnamebyid(id))) {
					if (h.containsKey(author[j])) {

						Integer num = h.get(author[j]);
						num += 1;
						h.put(author[j], num);

					} else {
						if (userservice.finduserbyname(author[j]) != null) {
							h.put(author[j], 1);
						}
					}
				}
			}

		}
		for (String author1 : friends_zl) {

			String[] author = author1.split(";");
			for (int j = 0; j < author.length; j++) {
				if (!author[j].equals(userservice.findnamebyid(id))) {
					if (h.containsKey(author[j])) {

						Integer num = h.get(author[j]);
						num += 1;
						h.put(author[j], num);

					} else {
						if (userservice.finduserbyname(author[j]) != null) {
							h.put(author[j], 1);
						}
					}
				}
			}

		}
		List<Map.Entry<String, Integer>> list = new ArrayList<>(h.entrySet());
		Collections.sort(list, new Comparator<Map.Entry<String, Integer>>() {
			@Override
			public int compare(Map.Entry<String, Integer> o1, Map.Entry<String, Integer> o2) {
				// 按照value值，重小到大排序
//                return o1.getValue() - o2.getValue();

				// 按照value值，从大到小排序
				return o2.getValue() - o1.getValue();

				// 按照value值，用compareTo()方法默认是从小到大排序
				// return o1.getValue().compareTo(o2.getValue());
			}
		});

		// 注意这里遍历的是list，也就是我们将map.Entry放进了list，排序后的集合
		ArrayList<HashMap<String, String>> f = new ArrayList<HashMap<String, String>>();
		int bb=0;
		lwservice.deletefriend(id);
		if (list.size() > 0) {
			for (Map.Entry s : list) {
				HashMap<String, String> h1 = new HashMap<String, String>();
				h1.put("name", String.valueOf(s.getKey()));
				h1.put("count", String.valueOf(s.getValue()));
				String id1 = userservice.finduserbyname(s.getKey().toString()).getCert_id();
				int number = Integer.valueOf(s.getValue().toString());
				int flag = 1;
				if(bb<10) {
					lwservice.addfriend(id,id1,number,flag);
					bb++;
				}
				f.add(h1);
			}
		} else {
			HashMap<String, String> h1 = new HashMap<String, String>();
			h1.put("name", "");
			h1.put("count", "0");
			f.add(h1);
		}

		JSONArray json = new JSONArray(f);
		return json.toString();

	}

	@RequestMapping("user-data1")
	public String centerdata1(HttpServletRequest request, Model model) {

		return "user-data";
	}

	@RequestMapping("user-qushi")
	@ResponseBody
	public String userqushi(HttpServletRequest request, HttpServletResponse response, Model model) throws IOException {
		String id = String.valueOf(request.getSession().getAttribute("session"));
		Date date = new Date();
		ArrayList<HashMap<String, Integer>> f = new ArrayList<HashMap<String, Integer>>();
		int year = date.getYear() + 1900;
		for (int i = 0; i < 5; i++) {
			for (int j = 1; j <= 12; j++) {
				if (j < 10) {
					if (j == 9) {
						Integer x = userservice.findqushi(String.valueOf((year - 4 + i)) + "-0" + String.valueOf(j), id,
								String.valueOf((year - 4 + i)) + "-" + String.valueOf(j + 1));
						HashMap<String, Integer> m = new HashMap<String, Integer>();
						m.put("count", x);
						m.put("shijian", j);
						f.add(m);
					} else {
						Integer x = userservice.findqushi(String.valueOf((year - 4 + i)) + "-0" + String.valueOf(j), id,
								String.valueOf((year - 4 + i)) + "-0" + String.valueOf(j + 1));
						HashMap<String, Integer> m = new HashMap<String, Integer>();
						m.put("count", x);
						m.put("shijian", j);
						f.add(m);
					}
				} else {
					Integer x = userservice.findqushi(String.valueOf((year - 4 + i)) + "-" + String.valueOf(j), id,
							String.valueOf((year - 4 + i)) + "-" + String.valueOf(j + 1));
					HashMap<String, Integer> m = new HashMap<String, Integer>();
					m.put("count", x);
					m.put("shijian", j);
					f.add(m);
				}

			}
		}
		JSONArray json = new JSONArray(f);
		return json.toString();
	}

	@RequestMapping("user-leixing")
	@ResponseBody
	public String userleixing(HttpServletRequest request, HttpServletResponse response, Model model)
			throws IOException {
		String id = String.valueOf(request.getSession().getAttribute("session"));
		ArrayList<Lend> lends = bookservice.lendInquiry(id);
		for (Lend l : lends) {
			String leixing = "";
			String[] suoshu = bookservice.findsuo(l.getMARC_REC_NO_F()).split("\\\\");
			mark: for (int i = 0; i < suoshu.length; i++) {
				char[] s = suoshu[i].toCharArray();
				String s1 = "";
				if (s[0] < 0 || s[0] > 9) {
					for (int j = 0; j < s.length; j++) {
						s1 = s1 + s[j];
						if (bookservice.findlei(s1) != null) {
							leixing = bookservice.findlei(s1);
							break mark;
						}
					}
				}

			}
			bookservice.setleixing(l.getId(), leixing);
		}
		ArrayList<HashMap<String, String>> lends1 = bookservice.findleixing(id);
		if (lends1.size() == 0) {
			HashMap<String, String> hash = new HashMap<String, String>();
			hash.put("leixing", "无");
			hash.put("count", "0");
			lends1.add(hash);
		}
		JSONArray json = new JSONArray(lends1);
		return json.toString();
	}

}
