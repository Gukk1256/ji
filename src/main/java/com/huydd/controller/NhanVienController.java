package com.huydd.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.huydd.dao.*;
import com.huydd.entity.*;

@Controller
public class NhanVienController {
	@Autowired
	NhanVienDao dao;
	
	@RequestMapping("/student/index")
	public String index(Model model) {
		NhanVien item = new NhanVien();
		model.addAttribute("item", item);
		List<NhanVien> items = dao.findAll();
		model.addAttribute("items", items);
		return "student/index";
	}

	
	@RequestMapping("/student/edit/{manv}")
	public String edit(Model model, @PathVariable("manv") String manv) {
		NhanVien item = dao.findById(manv).get();
		model.addAttribute("item", item);
		List<NhanVien> items = dao.findAll();
		model.addAttribute("items", items);
		return "student/index";
	}
	
	@RequestMapping("/student/create")
	public String create(Model model, NhanVien item) {
		dao.save(item);
	
		return "redirect:/student/index";
	}
	
	@RequestMapping("/student/delete/{manv}")
	public String delete(@PathVariable("manv") String manv) {
		dao.deleteById(manv);
		return "redirect:/student/index";
	}
	
	@RequestMapping("/student/update")
	public String update(Model model, NhanVien item) {
		dao.save(item);
		model.addAttribute("message", "Update successfully");
		return "redirect:/student/edit/" + item.getManv();
	}
}
