package com.nwsuaf.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nwsuaf.entity.BiaoQianEntity;
import com.nwsuaf.entity.Reader;
import com.nwsuaf.entity.TuiJianBook;
import com.nwsuaf.entity.TuiJianLw;
import com.nwsuaf.entity.User;
import com.nwsuaf.entity.book_bq;
import com.nwsuaf.entity.LW;
import com.nwsuaf.service.BookService;
import com.nwsuaf.service.LWService;
import com.nwsuaf.service.ReaderService;
import com.nwsuaf.service.UserService;
import com.nwsuaf.utils.App;
import com.nwsuaf.utils.ReadFiles;
import com.nwsuaf.utils.test;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

@Controller
public class ReaderController {
	@Autowired
	ReaderService readerService;
	@Autowired
	UserService userservice;
	@Autowired
	BookService bookservice;
	@Autowired
	LWService lwservice;
	List<TuiJianBook> bookLists1, bookLists2, bookLists3, bookLists4, bookLists5, bookLists6;
	List<TuiJianLw> lwkists1,lwkists2,lwkists3,lwkists4,lwkists5,lwkists6;
	// login后，reader就等于cert_id
	Reader reader = null;
	
	@RequestMapping("goLogin")
	public String goLogin() {
		return "login";
	}

	@RequestMapping("qun")
	public String goProfile(HttpServletRequest request, HttpSession session, Model model)
			throws ClassNotFoundException, InstantiationException, IllegalAccessException {

		Class<?> biaoqianClass = Class.forName("com.nwsuaf.entity.BiaoQianEntity");
		BiaoQianEntity biaoqian = (BiaoQianEntity) biaoqianClass.newInstance();

		String cert_id = (String) session.getAttribute("cert_id");

		System.out.println("cert_id:" + cert_id);

		Method getKey, getValue;
		// 利用反射调用get、set方法
		BiaoQianEntity bq = readerService.getBQ(cert_id);
		System.out.println("bq:" + bq);

		List<BiaoQianEntity> bqList = readerService.getBQByKind(reader.getKind(),reader.getDept());
		System.out.println("bqList:" + bqList);

		String key;
		Double value, oldValue;

//        for(int i=1; i<=10; i++) {
//        	try {
//        		getKey = biaoqianClass.getMethod("getKey"+i);//得到方法对象
//        	
//				getValue = biaoqianClass.getMethod("getValue"+i);
//			
//				key = (String) getKey.invoke(bq);
//				value = (Double) getValue.invoke(bq);
//				//key = key.replaceAll("\r|\n|\t", "");
//				if(key == null || key.equals("")) {
//					
//					break;
//				}
//
//				
//				System.out.println("key:"+key+"value:"+value);
//				
//				
//        	} catch (Exception e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//        }
		System.out.println("群体标签：");
		Map<String, Double> map = new HashMap<String, Double>();
		for (BiaoQianEntity b : bqList) {
			for (int i = 1; i <= 10; i++) {
				try {
					getKey = biaoqianClass.getMethod("getKey" + i);// 得到方法对象

					getValue = biaoqianClass.getMethod("getValue" + i);

					key = (String) getKey.invoke(b);
					value = (Double) getValue.invoke(b);

					key = key.replaceAll("\r|\n|\t", "");

					if (key == null || key.equals("")) {

						break;
					}

					System.out.println("key:" + key + "value:" + value);
					if (map.containsKey(key)) {
						oldValue = map.get(key);
						map.put(key, oldValue + value);
					} else {
						map.put(key, value);
					}

				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		System.out.println("map:" + map);

		List<List<Object>> list = new ArrayList<List<Object>>();
		for (Entry<String, Double> entry : map.entrySet()) {
			// System.out.println("key= "+ key + " and value= " + map.get(key));
			List<Object> l = new ArrayList<>();
			list.add(l);
			l.add("'" + entry.getKey() + "'");
			l.add(entry.getValue());

			System.out.println("l:" + l);
			// l.clear();
		}
		

//		List<Map<String, Integer>> sexList = new ArrayList<Map<String, Integer>>();
//		List<Map<String, Integer>> occupationList = new ArrayList<Map<String, Integer>>();
		List<Map<String, String>> sexList = readerService.getSexInfo(reader.getKind(),reader.getDept());
		List<Map<String, String>> occupationList = readerService.getOccInfo(reader.getKind(),reader.getDept());
		
		System.out.println(sexList);
		System.out.println(occupationList);
		
		if(sexList.size() == 1) {
			Map<String,String> sexInfo = new HashMap<String, String>();
			if(sexList.get(0).get("sex").equals("M")) {
				sexInfo.put("sex", "F");
				sexInfo.put("num", "0");
			}else {
				sexInfo.put("sex", "M");
				sexInfo.put("num", "0");
			}
			sexList.add(sexInfo);
		}else if(sexList.size() == 0) {
			Map<String,String> sexInfo1 = new HashMap<String, String>();
			Map<String,String> sexInfo2 = new HashMap<String, String>();
			sexInfo1.put("sex", "F");
			sexInfo1.put("num", "0");
			sexInfo2.put("sex", "M");
			sexInfo2.put("num", "0");
			sexList.add(sexInfo1);
			sexList.add(sexInfo2);
		}
		
		if(occupationList.size() == 1) {
			Map<String,String> occInfo = new HashMap<String, String>();
			if(occupationList.get(0).get("occupation").equals("教师")) {
				occInfo.put("occupation", "学生");
				occInfo.put("num", "0");
			}else {
				occInfo.put("occupation", "教师");
				occInfo.put("num", "0");
			}
			occupationList.add(occInfo);
		}else if(occupationList.size() == 0) {
			Map<String,String> occInfo1 = new HashMap<String, String>();
			Map<String,String> occInfo2 = new HashMap<String, String>();
			occInfo1.put("occupation", "教师");
			occInfo1.put("num", "0");
			occInfo2.put("occupation", "学生");
			occInfo2.put("num", "0");
			occupationList.add(occInfo1);
			occupationList.add(occInfo2);
		}
		
		System.out.println(sexList);
		System.out.println(occupationList);

		int a =Integer.valueOf(String.valueOf(sexList.get(0).get("num"))).intValue();
		int b =Integer.valueOf(String.valueOf(sexList.get(1).get("num"))).intValue();

		model.addAttribute("allNum",a+b);
		model.addAttribute(""+sexList.get(0).get("sex"), sexList.get(0).get("num"));
		model.addAttribute(""+sexList.get(1).get("sex"), sexList.get(1).get("num"));
		
		model.addAttribute(""+occupationList.get(0).get("occupation"), occupationList.get(0).get("num"));
		model.addAttribute(""+occupationList.get(1).get("occupation"), occupationList.get(1).get("num"));

		System.out.println("list:" + list);
		// System.out.println("list1:"+list.get(1));
		// model.addAttribute("bq", bq);
		model.addAttribute("list", list);
		model.addAttribute("reader", reader);
		if (reader.getOccupation().equals("学生")) {
			return "qun";
		} else if (reader.getOccupation().equals("教师")) {
			return "center-qun";
		}
		return "qun";
	}

	@RequestMapping("/")
	public String index(HttpSession session, Model model) {
		bookLists3 = readerService.getTopTuiJian();
		bookLists4 = readerService.getNewTuiJian();
		model.addAttribute("result3", bookLists3);
		model.addAttribute("result4", bookLists4);
		return "index-nologin";
	}

	@RequestMapping("login")
	public String login(HttpServletRequest request, HttpSession session, Model model, String cert_id, String passwd)
			throws Exception {

		Class<?> biaoqianClass = Class.forName("com.nwsuaf.entity.BiaoQianEntity");
		BiaoQianEntity biaoqian = (BiaoQianEntity) biaoqianClass.newInstance();

		reader = readerService.getReaderById(cert_id);

		if (reader == null || !reader.getPassword().equals(passwd)) {
			model.addAttribute("errMsg", "用户名或者密码错误！");
			return "login";
		}
		if (!reader.getUsr_state().equals("1")) {
			model.addAttribute("errMsg", "用户已冻结，请联系管理员解冻！");
			return "login";
		}
		System.out.println(reader);
		
		if (reader.getOccupation().equals("管理员")) {

			session.setAttribute("reader", reader);
			session.setAttribute("session", reader.getCert_id());
			return "sysAdmi";
		}

		String id = String.valueOf(request.getParameter("cert_id"));


		request.getSession().setAttribute("reader", reader);
		request.getSession().setAttribute("cert_id", id);

		
		Date now = new Date();
		DateFormat t = new SimpleDateFormat("yyyy-MM-dd H:mm:ss");
		String time = new test().time(t.format(now));
		JSONObject ipjson = new JSONObject(new test().getPublicIp(request.getParameter("usr_ip")));
		String ip = ipjson.getString("ip");
		String weizhi = ipjson.getString("pro") + ipjson.getString("city");

		String zd = request.getParameter("zd");
//			System.err.println(id+" "+time+" "+ip+" "+zd+" "+weizhi+" ");
		userservice.insertPH(id, time, ip, zd, weizhi);
		InputStream input = null;
		OutputStream output = null;
		try {

			File f = new File("c:/file/word/" + id);
			if (f.exists()) {
			} else {
				f.mkdir();
			}
			input = new FileInputStream("C:/file/a.txt");
			output = new FileOutputStream("C:/file/word/" + id + "/a.txt");
			byte[] buf = new byte[1024];
			int bytesRead = 0;
			while ((bytesRead = input.read(buf)) != -1) {
				output.write(buf, 0, bytesRead);
			}
		} finally {
			input.close();
			output.close();
		}

		String[] books = ReadFiles.c;
		System.out.println(ReadFiles.c);
		for (int i = 0; i < books.length; i++) {
			System.out.println(ReadFiles.c[i]+" "+i);
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
		ArrayList<User> user = userservice.findUser(String.valueOf(request.getParameter("usr_id")), 0);
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

//			FileInputStream in = new FileInputStream(new File("c:/file/word/" + id + "/" + id + ".txt"));
//			byte b[] = new byte[in.available()];
//			in.read(b);
//			in.close();
//			String bq = new String(b);
//			ArrayList<book_bq> bq1 = new ArrayList<book_bq>();
//			for (int i = 0; i < bq.split(" ").length; i++) {
//				book_bq bqx = new book_bq();
//				bqx.setKey1(bq.split(" ")[i]);
//				bq1.add(bqx);
//			}
//			model.addAttribute("bq", bq1);
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

		

		bookLists1 = readerService.getTuiJianByKind(reader.getKind());
		if (reader.getOccupation().equals("学生")) {
			bookLists2 = readerService.getTuiJianByInfor(reader.getSex(), reader.getDept(),
					reader.getCert_id().substring(0, 4) + "%");
		} else {
			bookLists2 = readerService.getTuiJianByTeacherInfor(reader.getSex(), reader.getDept(),
					reader.getOccupation());
		}

		bookLists3 = readerService.getTopTuiJian();
		bookLists4 = readerService.getNewTuiJian();
		bookLists5 = new ArrayList<TuiJianBook>();
		Method getKey, getValue;
		// 利用反射调用get、set方法
		BiaoQianEntity bq = readerService.getBQ(reader.getCert_id());
		System.out.println("bq:" + bq);
		int num;
		String key;
		Double value;
		int temp=0;
//		List<TuiJianBook> tempLists5 = new ArrayList<TuiJianBook>();
		while (bookLists5.size() < 10) {
//			bookLists5.clear();
			for (int i = 1; i <= 10; i++) {
				try {
					getKey = biaoqianClass.getMethod("getKey" + i);// 得到方法对象

					getValue = biaoqianClass.getMethod("getValue" + i);

					key = (String) getKey.invoke(bq);
					value = (Double) getValue.invoke(bq);

					num = (int) Math.ceil(value * 15 / bq.getSum()) + temp;// 向上取整
					System.out.println("key:" + key + "value:" + value + "num" + num);
					if (key != null) {
						if (!key.equals("")) {
							bookLists5.addAll(readerService.getTuiJianByBq("%" + key + "%", num));
						}

					}

				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			for(int i=0;i<bookLists5.size()-1;i++) {
				for(int j=bookLists5.size()-1;j>i;j--) {
					if(bookLists5.get(j).getBOOK_TITLE().equals(bookLists5.get(i).getBOOK_TITLE())) {
						bookLists5.remove(j);
					}
				}
				
			}
			temp++;
//			tempLists5.clear();
		}

		model.addAttribute("result1", bookLists1);
		model.addAttribute("result2", bookLists2);
		model.addAttribute("result3", bookLists3);
		model.addAttribute("result4", bookLists4);
		model.addAttribute("result5", bookLists5);
		System.out.println("list1" + bookLists1);
		System.out.println("list2" + bookLists2);
		System.out.println("list3" + bookLists3);
		System.out.println("list4" + bookLists4);
		System.out.println("list5" + bookLists5);

		// for(int i=0; i<5; i++) {
		// ret = ret +(i+1);
		// bookList = bookList.get(i);
		// session.setAttribute(ret, );
		// }
		session.setAttribute("reader", reader);
		session.setAttribute("session", reader.getCert_id());

		return "index";

	}

	@RequestMapping("search")
	public String search(HttpSession session, Model model, String search) {
		System.out.println(search);

		bookLists6 = readerService.searchBook("%" + search + "%");
		System.out.println("list6" + bookLists6);

		model.addAttribute("result1", bookLists1);
		model.addAttribute("result2", bookLists2);
		model.addAttribute("result3", bookLists3);
		model.addAttribute("result4", bookLists4);
		model.addAttribute("result5", bookLists5);
		model.addAttribute("result6", bookLists6);
		Object reader = session.getAttribute("reader");
		if(reader != null) {
			return "index";
		}
		return "index-nologin";
	}
	@RequestMapping("search1")
	public String search1(HttpSession session, Model model, String search) {
		System.out.println(search);
		bookLists6 = readerService.searchBook("%" + search + "%");
		System.out.println("list6" + bookLists6);
		model.addAttribute("result7", lwkists1);
		model.addAttribute("result8", lwkists2);
		model.addAttribute("result9", lwkists3);
		model.addAttribute("result6", bookLists6);
		Object reader = session.getAttribute("reader");
		if(reader != null) {
			return "index-lw";
		}
		return "index-nologin";
	}
	@RequestMapping("checkout")
	public String goLogin1() {
		return "checkout";
	}

	@RequestMapping("detail")
	public String godetail(HttpSession session, Model model, String id) {
		TuiJianBook detail = readerService.getBookById(id);
		model.addAttribute("detail", detail);
		System.out.println("detail" + detail);
		return "detail";
	}

	@RequestMapping("admin")
	public String goAdmin() {
		return "sys-usr-find";
	}

	@RequestMapping("index")
	public String goLogin5(HttpSession session, Model model) {
		model.addAttribute("result1", bookLists1);
		model.addAttribute("result2", bookLists2);
		model.addAttribute("result3", bookLists3);
		model.addAttribute("result4", bookLists4);
		model.addAttribute("result5", bookLists5);
		model.addAttribute("result6", bookLists6);
		return "index";
	}
	@RequestMapping("index-lw")
	String Lwtuijian(HttpServletRequest request, Model model) {
		if (reader.getKind_lw()==null) {
			lwkists5=readerService.getTuiJianByKind_Lw("1",reader.getName());
		} else {
			lwkists5=readerService.getTuiJianByKind_Lw(reader.getKind_lw(),reader.getName());
		}	
		lwkists2=readerService.getTuiJianByInfor_Lw(reader.getDept(),reader.getName());
		if(lwkists5.size()>10){
			lwkists1 = lwkists5.subList(0,10);
		 }
		if(lwkists2.size()>10){
			lwkists2 = lwkists2.subList(0,10);
		 }
		lwkists3=lwkists5.subList(7,16);
		model.addAttribute("result7", lwkists1);
		model.addAttribute("result8", lwkists2);
		model.addAttribute("result9", lwkists3);
		model.addAttribute("result6", bookLists6);
		System.out.println("list1" +lwkists1);
		System.out.println("list2" +lwkists2);
		System.out.println("list1" +reader.getDept());
		System.out.println("list2" +reader.getName());	
		return "index-lw";
	}
}
