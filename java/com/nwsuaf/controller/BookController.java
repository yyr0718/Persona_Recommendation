package com.nwsuaf.controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nwsuaf.entity.Book;
import com.nwsuaf.entity.Lend;
import com.nwsuaf.service.BookService;
import com.nwsuaf.service.UserService;
import com.nwsuaf.utils.App;
import com.nwsuaf.utils.Word2VEC;

@Controller
public class BookController {
	int pagenum = 0;
	@Resource
	BookService bookservice;
	@Resource
	UserService userservice;

	String inputname;
	String guanjianci;
	ArrayList<Book> tuijians = new ArrayList<Book>();
	@ExceptionHandler({java.lang.IndexOutOfBoundsException.class})
	public String Myexception(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=gb2312");
		PrintWriter out = response.getWriter();
		PrintWriter writer = response.getWriter();
		String msg = null;
		msg = "alert( '操作错误！' );location.href='booktuijian'";
		writer.print("<script type='text/javascript'>" + msg + "</script>");
		writer.flush();
		writer.close();
		return "booktuijian";
	}
	@RequestMapping("user-lendinquiry")
	public String LendInquiry(HttpServletRequest request, Model model) {

		ArrayList<Lend> lendinquiry = bookservice
				.lendInquiry(String.valueOf(request.getSession().getAttribute("session")));
		model.addAttribute("lendinquiry", lendinquiry);

		return "user-lendinquiry";
	}

	@RequestMapping("user-bookinquiry")
	public String BookInquiry(HttpServletRequest request, Model model) {
		pagenum = 0;
		ArrayList<Book> bookinquiry = bookservice.bookInquiry(pagenum);
		model.addAttribute("bookinquiry", bookinquiry);
		model.addAttribute("pagenum", pagenum / 15 + 1);
		model.addAttribute("pagetotal", bookservice.bookcount() / 15);
		model.addAttribute("jian", 1);
		return "user-bookinquiry";
	}

	@RequestMapping("user-bookinquirydn")
	public String BookInquirydn(HttpServletRequest request, Model model) {
		pagenum += 15;
		ArrayList<Book> bookinquiry = bookservice.bookInquiry(pagenum);
		model.addAttribute("bookinquiry", bookinquiry);
		model.addAttribute("pagenum", pagenum / 15 + 1);
		model.addAttribute("pagetotal", bookservice.bookcount() / 15);
		model.addAttribute("jian", 1);
		return "user-bookinquiry";
	}

	@RequestMapping("user-bookinquiryup")
	public String BookInquiryup(HttpServletRequest request, Model model) {
		pagenum -= 15;
		ArrayList<Book> bookinquiry = bookservice.bookInquiry(pagenum);
		model.addAttribute("bookinquiry", bookinquiry);
		model.addAttribute("pagenum", pagenum / 15 + 1);
		model.addAttribute("pagetotal", bookservice.bookcount() / 15);
		model.addAttribute("jian", 1);
		return "user-bookinquiry";
	}

	@RequestMapping("user-bookinquirynum")
	public String BookInquirynum(HttpServletRequest request, Model model) {
		String num;
		num = request.getParameter("pagenum");
		if (num != null) {
			pagenum = (Integer.valueOf(num) - 1) * 15;
		} else if (request.getParameter("jiansuo") != null) {
//			System.out.println(String.valueOf(request.getParameter("bookname")));

			this.Bookjiansuo(request, model);
		} else {
			num = request.getParameter("pn");
			pagenum = (Integer.valueOf(num) - 1) * 15;
		}
		ArrayList<Book> bookinquiry = bookservice.bookInquiry(pagenum);
		model.addAttribute("bookinquiry", bookinquiry);
		model.addAttribute("pagenum", pagenum / 15 + 1);
		model.addAttribute("pagetotal", bookservice.bookcount() / 15);
		model.addAttribute("jian", 1);
		return "user-bookinquiry";
	}

	@RequestMapping("user-bookjiansuo")
	public String Bookjiansuo(HttpServletRequest request, Model model) {
		pagenum = 0;
		inputname = String.valueOf(request.getParameter("bookname"));
		ArrayList<Book> bookinquiry = bookservice.bookjiansuo(inputname, pagenum);
		model.addAttribute("bookinquiry", bookinquiry);
		model.addAttribute("pagenum", pagenum / 15 + 1);
		model.addAttribute("pagetotal", bookservice.bookjiancount(inputname) / 15);
		model.addAttribute("jian", 1);
		return "user-bookjiansuo";
	}

	@RequestMapping("user-bookjiansuodn")
	public String Bookjiansuodn(HttpServletRequest request, Model model) {
		pagenum += 15;
		ArrayList<Book> bookinquiry = bookservice.bookjiansuo(inputname, pagenum);
		model.addAttribute("bookinquiry", bookinquiry);
		model.addAttribute("pagenum", pagenum / 15 + 1);
		model.addAttribute("pagetotal", bookservice.bookjiancount(inputname) / 15);
		model.addAttribute("jian", 1);
		return "user-bookjiansuo";
	}

	@RequestMapping("user-bookjiansuoup")
	public String Bookjiansuoup(HttpServletRequest request, Model model) {
		pagenum -= 15;
		ArrayList<Book> bookinquiry = bookservice.bookjiansuo(inputname, pagenum);
		model.addAttribute("bookinquiry", bookinquiry);
		model.addAttribute("pagenum", pagenum / 15 + 1);
		model.addAttribute("pagetotal", bookservice.bookjiancount(inputname) / 15);
		model.addAttribute("jian", 1);
		return "user-bookjiansuo";
	}

	@RequestMapping("user-bookjiansuonum")
	public String Bookjiansuonum(HttpServletRequest request, Model model) {
		String num;
		num = request.getParameter("pagenum");
		if (num != null) {
			pagenum = (Integer.valueOf(num) - 1) * 15;
		} else {
			num = request.getParameter("pn");
			pagenum = (Integer.valueOf(num) - 1) * 15;
		}
		ArrayList<Book> bookinquiry = bookservice.bookjiansuo(inputname, pagenum);
		model.addAttribute("bookinquiry", bookinquiry);
		model.addAttribute("pagenum", pagenum / 15 + 1);
		model.addAttribute("pagetotal", bookservice.bookjiancount(inputname) / 15);
		model.addAttribute("jian", 1);
		return "user-bookjiansuo";
	}

	@RequestMapping("user-booklend")
	public String Booklend(HttpServletRequest request, Model model) throws IOException {

		String LEND_DATE;
		String PROP_NO_F;
		String CERT_ID;
		String RET_DATE;
		String MARC_REC_NO_F;
		String name;
		String BOOK_TITLE;
		CERT_ID = String.valueOf(request.getSession().getAttribute("session"));

		int random = (int) (Math.random() * 1000000) + 999999;
		PROP_NO_F = String.valueOf(random);
		Date now = new Date();
		DateFormat t = new SimpleDateFormat("yyyy-MM-dd H:mm:ss");
		LEND_DATE = t.format(now);

		String bookname = String.valueOf(request.getParameter("bookname"));
		MARC_REC_NO_F = bookservice.findbooknobyname(bookname);
		name = userservice.findnamebyid(CERT_ID);
		bookservice.booklend(CERT_ID, PROP_NO_F, LEND_DATE, "", MARC_REC_NO_F);
		bookservice.updateflag("0", MARC_REC_NO_F);
		ArrayList<Book> bookinquiry = bookservice.bookjiansuo(inputname, pagenum);
		model.addAttribute("bookinquiry", bookinquiry);
		model.addAttribute("jian", 0);
//		File f = new File("c:/file/library/" + CERT_ID + ".txt");
//		if (f.exists()) {
//		} else {
//			f.createNewFile();
//		}
//
//		BufferedWriter output = new BufferedWriter(new FileWriter(f, true));// true,则追加写入text文本
//		output.write(bookname + "\r\n");
//		output.flush();
//		output.close();
		return "user-bookinquiry";
	}

	@RequestMapping("booktuijian")
	public String Booktuijian(HttpServletRequest request, Model model) throws IOException {
		String id = String.valueOf(request.getSession().getAttribute("session"));
		guanjianci = request.getParameter("guanjianci");
		tuijians.clear();
		if (guanjianci!= null) {
			Word2VEC vec = new Word2VEC();
			vec.loadJavaModel("c:/file/javaSkip1");
			Iterator it = vec.distance(guanjianci).iterator();
			String x = "";
			String q = "";
			
			while (it.hasNext()) {
				x = it.next().toString();
				String x1 = x.split("	")[0];
				ArrayList<Book> tuijian= bookservice.booktuijian(x1);
				//System.err.println(tuijian);
				tuijians.addAll(tuijian);
				q = (x.split("	"))[0];
				if (q.length() > 1)
					//System.out.println(x);
				if(tuijians.size()>50) {
					break;
				}
			}
			
			pagenum = 0;
			ArrayList<Book> tuijian = new ArrayList<Book>();
			for(int i=pagenum;i<pagenum+15&&i<tuijians.size();i++) {
				tuijian.add(tuijians.get(i));
			}
			model.addAttribute("tuijians",tuijian);
			model.addAttribute("pagenum", pagenum / 15 + 1);
			model.addAttribute("pagetotal", tuijians.size()/15);
			model.addAttribute("jian", 1);
			
		}
		else {
			model.addAttribute("jian", 0);
		}
		if (userservice.findxyByID(id).equals("学生")) {
			return "user-booktuijian";
		} else if (userservice.findxyByID(id).equals("教师")) {
			return "center-booktuijian";
		}
		return "error";
	}

	@RequestMapping("booktuijiandn")
	public String booktuijiandn(HttpServletRequest request, Model model) throws IOException {
		String id = String.valueOf(request.getSession().getAttribute("session"));
		if (guanjianci!= null) {
			
			pagenum += 15;
			ArrayList<Book> tuijian = new ArrayList<Book>();
			for(int i=pagenum;i<pagenum+15&&i<tuijians.size();i++) {
				tuijian.add(tuijians.get(i));
			}
			model.addAttribute("tuijians",tuijian);
			model.addAttribute("pagenum", pagenum / 15 + 1);
			model.addAttribute("pagetotal", tuijians.size()/15);
			model.addAttribute("jian", 1);
			
		}
		else {
			model.addAttribute("jian", 0);
		}
		if (userservice.findxyByID(id).equals("学生")) {
			return "user-booktuijian";
		} else if (userservice.findxyByID(id).equals("教师")) {
			return "center-booktuijian";
		}
		return "error";
	}

	@RequestMapping("booktuijianup")
	public String booktuijianup(HttpServletRequest request, Model model) throws IOException {
		String id = String.valueOf(request.getSession().getAttribute("session"));
		if (guanjianci!= null) {
			
			pagenum -= 15;
			ArrayList<Book> tuijian = new ArrayList<Book>();
			for(int i=pagenum;i<pagenum+15&&i<tuijians.size();i++) {
				tuijian.add(tuijians.get(i));
			}
			model.addAttribute("tuijians",tuijian);
			model.addAttribute("pagenum", pagenum / 15 + 1);
			model.addAttribute("pagetotal", tuijians.size()/15);
			model.addAttribute("jian", 1);
			
		}
		else {
			model.addAttribute("jian", 0);
		}
		if (userservice.findxyByID(id).equals("学生")) {
			return "user-booktuijian";
		} else if (userservice.findxyByID(id).equals("教师")) {
			return "center-booktuijian";
		}
		return "error";
	}

	@RequestMapping("booktuijiannum")
	public String booktuijiannum(HttpServletRequest request, Model model) throws IOException {
		String id = String.valueOf(request.getSession().getAttribute("session"));
		String num;
		num = request.getParameter("pagenum");
		if (num != null) {
			pagenum = (Integer.valueOf(num) - 1) * 15;
		} else if (request.getParameter("jiansuo") != null) {
//			System.out.println(String.valueOf(request.getParameter("bookname")));

			this.Bookjiansuo(request, model);
		} else {
			num = request.getParameter("pn");
			pagenum = (Integer.valueOf(num) - 1) * 15;
		}
		if (guanjianci!= null) {
			
			ArrayList<Book> tuijian = new ArrayList<Book>();
			for(int i=pagenum;i<pagenum+15&&i<tuijians.size();i++) {
				tuijian.add(tuijians.get(i));
			}
			model.addAttribute("tuijians",tuijian);
			model.addAttribute("pagenum", pagenum / 15 + 1);
			model.addAttribute("pagetotal", tuijians.size()/15);
			model.addAttribute("jian", 1);
			
		}
		else {
			model.addAttribute("jian", 0);
		}
		if (userservice.findxyByID(id).equals("学生")) {
			return "user-booktuijian";
		} else if (userservice.findxyByID(id).equals("教师")) {
			return "center-booktuijian";
		}
		return "error";
	}
}
