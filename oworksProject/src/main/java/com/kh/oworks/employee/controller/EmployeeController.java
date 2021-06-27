package com.kh.oworks.employee.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.oworks.board.model.service.NoticeService;
import com.kh.oworks.board.model.vo.Notice;
import com.kh.oworks.common.model.vo.PageInfo;
import com.kh.oworks.common.template.Pagination;
import com.kh.oworks.employee.model.service.EmployeeService;
import com.kh.oworks.employee.model.vo.Employee;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService eService;
	
	@Autowired
	private NoticeService nService;
	
	@RequestMapping("login.emp")
	public String loginEmployee(Employee e, HttpSession session, @RequestParam(value="currentPage", defaultValue="1") int currentPage, Model model) {
		
		Employee loginEmp = eService.loginEmployee(e);
		
		// 메인화면에서 공지사항 확인
		int listCount = nService.selectListCount();
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 10, 5);
		ArrayList<Notice> list = nService.selectList(pi);
		
		if(loginEmp == null) {
			System.out.println("로그인 실패");
			session.setAttribute("alertMsg", "로그인을 실패하였습니다. 아이디와 비밀번호를 확인해주세요.");
			return "redirect:/";
		}else {
			System.out.println("로그인 성공");
			// System.out.println(loginEmp.getJobCode()); 'join 확인'
			// 공지사항 확인
			model.addAttribute("pi", pi);
			model.addAttribute("list", list);
			
			return "main";
			
		}
		
	}
	
	
	
	@RequestMapping("findPwd.emp")
	public String findPassword() {
		
		return "common/findPwd";
	}
	
	
	

}
