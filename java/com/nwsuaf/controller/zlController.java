package com.nwsuaf.controller;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nwsuaf.entity.ZL;
import com.nwsuaf.service.UserService;
import com.nwsuaf.service.ZLService;

@Controller
public class zlController {
	@Resource
	ZLService zlservice;
	@Resource
	UserService userservice;
	int pagenum = 0;
	String inputname;
	@RequestMapping("center-zlinquiry")
	public String center_zlinquiry(HttpServletRequest request, Model model) {
		pagenum =0;
		ArrayList<ZL> ZLinquiry = zlservice.ZLInquiry(pagenum);
		model.addAttribute("lwinquiry", ZLinquiry);
		model.addAttribute("pagenum", pagenum / 15 + 1);
		model.addAttribute("pagetotal", zlservice.zlcount1() / 15);
		model.addAttribute("jian", 1);
		return "center-zlinquiry";
	}

	@RequestMapping("center-zlinquirydn")
	public String center_zlinquirydn(HttpServletRequest request, Model model) {
		pagenum += 15;
		ArrayList<ZL> ZLinquiry = zlservice.ZLInquiry(pagenum);
		model.addAttribute("lwinquiry", ZLinquiry);
		model.addAttribute("pagenum", pagenum / 15 + 1);
		model.addAttribute("pagetotal", zlservice.zlcount1() / 15);
		model.addAttribute("jian", 1);
		return "center-zlinquiry";
	}

	@RequestMapping("center-zlinquiryup")
	public String center_zlinquiryup(HttpServletRequest request, Model model) {
		pagenum -= 15;
		ArrayList<ZL> ZLinquiry = zlservice.ZLInquiry(pagenum);
		model.addAttribute("lwinquiry", ZLinquiry);
		model.addAttribute("pagenum", pagenum / 15 + 1);
		model.addAttribute("pagetotal", zlservice.zlcount1() / 15);
		model.addAttribute("jian", 1);
		return "center-zlinquiry";
	}

	@RequestMapping("center-zlinquirynum")
	public String center_zlinquirynum(HttpServletRequest request, Model model) {
		String num;
		num = request.getParameter("pagenum");
		if (num != null) {
			pagenum = (Integer.valueOf(num) - 1) * 15;
		} else {
			num = request.getParameter("pn");
			pagenum = (Integer.valueOf(num) - 1) * 15;
		}
		ArrayList<ZL> ZLinquiry = zlservice.ZLInquiry(pagenum);
		model.addAttribute("lwinquiry", ZLinquiry);
		model.addAttribute("pagenum", pagenum / 15 + 1);
		model.addAttribute("pagetotal", zlservice.zlcount1() / 15);
		model.addAttribute("jian", 1);
		return "center-zlinquiry";
	}
	
	@RequestMapping("center-zljiansuo")
	public String zljiansuo(HttpServletRequest request, Model model) {
		pagenum = 0;
		inputname = String.valueOf(request.getParameter("bookname"));
		ArrayList<ZL> ZLinquiry = zlservice.ZLjiansuo(inputname,pagenum);
		model.addAttribute("lwinquiry", ZLinquiry);
		model.addAttribute("pagenum", pagenum / 15 + 1);
		model.addAttribute("pagetotal", zlservice.bookjiancount(inputname) / 15);
		model.addAttribute("jian", 1);
		return "center-zljiansuo";
	}

	@RequestMapping("center-zljiansuodn")
	public String zljiansuodn(HttpServletRequest request, Model model) {
		pagenum += 15;
		ArrayList<ZL> ZLinquiry = zlservice.ZLjiansuo(inputname,pagenum);
		model.addAttribute("lwinquiry", ZLinquiry);
		model.addAttribute("pagenum", pagenum / 15 + 1);
		model.addAttribute("pagetotal", zlservice.bookjiancount(inputname) / 15);
		model.addAttribute("jian", 1);
		return "center-zljiansuo";
	}

	@RequestMapping("center-zljiansuoup")
	public String zljiansuoup(HttpServletRequest request, Model model) {
		pagenum -= 15;
		ArrayList<ZL> ZLinquiry = zlservice.ZLjiansuo(inputname,pagenum);
		model.addAttribute("lwinquiry", ZLinquiry);
		model.addAttribute("pagenum", pagenum / 15 + 1);
		model.addAttribute("pagetotal", zlservice.bookjiancount(inputname) / 15);
		model.addAttribute("jian", 1);
		return "center-zljiansuo";
	}

	@RequestMapping("center-zljiansuonum")
	public String zljiansuonum(HttpServletRequest request, Model model) {
		String num;
		num = request.getParameter("pagenum");
		if (num != null) {
			pagenum = (Integer.valueOf(num) - 1) * 15;
		}else {
			num = request.getParameter("pn");
			pagenum = (Integer.valueOf(num) - 1) * 15;
		}
		ArrayList<ZL> ZLinquiry = zlservice.ZLjiansuo(inputname,pagenum);
		model.addAttribute("lwinquiry", ZLinquiry);
		model.addAttribute("pagenum", pagenum / 15 + 1);
		model.addAttribute("pagetotal", zlservice.bookjiancount(inputname) / 15);
		model.addAttribute("jian", 1);
		return "center-zljiansuo";
	}
	
	@RequestMapping("center-mzlinquiry")
	public String mzlinquiry(HttpServletRequest request, Model model) {
		ArrayList<ZL> ZLinquiry = zlservice.ZLjiansuo(userservice.findnamebyid(
				String.valueOf(request.getSession().getAttribute("session"))),0);
		model.addAttribute("lwinquiry", ZLinquiry);
		return "center-mzlinquiry";
	}
}
