package com.example.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.TestVo;
import com.example.domain.BoardVo;
import com.example.service.TestService;
import com.google.gson.Gson;

import lombok.extern.java.Log;
@Log
@Controller
@RequestMapping("/Test/*")
public class TestController {
	
	@Autowired
	TestService testService;
	
	@GetMapping("/login")
	public void login() {
		log.info("Login() 호출됨");
	}
	
	@GetMapping("/join")
	public void join() {
		log.info("Join() 호출됨");
	}
	
	@GetMapping("/write")
	public void write() {
		log.info("write() 호출됨");
	}
	
	@PostMapping("/login")
	public ResponseEntity<String> login(String id, String passwd,
			@RequestParam(defaultValue = "false") boolean keepLogin,
			HttpSession session, HttpServletResponse response){

		log.info("login() post 호출됨");
		
		int check = testService.userCheck(id, passwd);
		
		if(check != 1) {
			HttpHeaders headers = new HttpHeaders();
			headers.add("Content-Type", "text/html; charset=UTF-8");
			StringBuilder sb = new StringBuilder();
			
			sb.append("<script>"); // append를 사용하면 하나의객체에 계속 붙이는 형태라서 결국 하나의 객체임
			sb.append("alert('아이디 또는 패스워드가 일치하지 않습니다.');");
			sb.append("history.back();");
			sb.append("</script>");

			
			return new ResponseEntity<String>(sb.toString(), headers, HttpStatus.OK); // 빌더가 가지고 있는 데이터를 꺼낼때는 그냥 .toString해주면 됨

		}
		
		session.setAttribute("id", id);
		
//		if(keepLogin) {
			Cookie cookie = new Cookie("id", id);
			cookie.setMaxAge(60 * 10);
			cookie.setPath("/");
			
			response.addCookie(cookie);
//		}
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Location", "/");
		
		return new ResponseEntity<String>(headers, HttpStatus.FOUND);
		
	} // login
	
	@GetMapping("/logout")
	public String logout(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		
		log.info("Get Logout() 호출");
		
		//세션 초기화
		session.invalidate();
		
		// 로그인 상태유지용 쿠키 삭제
		Cookie[] cookies = request.getCookies();
			if(cookies != null) {
				for(Cookie cookie : cookies) {
					if(cookie.getName().equals("id")) {
						cookie.setMaxAge(0); // 유효시간 0
						cookie.setPath("/"); // 경로는 생성할때와 동일하게 설정해야 삭제됨
						
						response.addCookie(cookie); // 삭제할 쿠키정보를 추가
					}
				}
			}
		
		
		return "redirect:/";
	}//logout
	
	
	@PostMapping(value = "/join", produces = {MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_XML_VALUE})
	@ResponseBody
	public void join(HttpServletRequest request) throws IOException{
		
		log.info("Post Join() 호출");
		
		Gson gson = new Gson();
		
		BufferedReader reader = request.getReader();
		TestVo testVo = gson.fromJson(reader, TestVo.class);
		
		reader.close();
		
		testService.addMember(testVo);
		
		
	} //join
	
	@GetMapping( value = "/idDupchk", produces = { MediaType.APPLICATION_JSON_VALUE, MediaType.APPLICATION_ATOM_XML_VALUE})
	@ResponseBody
	public Map<String, Boolean> ajaxJoinDupChk(String id){
		
		log.info("중복확인 호출");
		
		int count = testService.getCountById(id);
		
		log.info("count == " + count);
		
		Map<String, Boolean> map = new HashMap<>();
		
		if(count == 0) {
			map.put("isIdDup", false);
		} else {
			map.put("isIdDup", true);
		}
		
		return map;
		
	}
	
	// 공지사항
	@GetMapping("/board")
	public String getBoard(Model model){
		
		log.info("getBoard() 호출됨");
		
		List<BoardVo> boardList = null;
		
		boardList = testService.getBoard();
		
		log.info("boardList == " + boardList);
		
		model.addAttribute("boardList", boardList);
		

		return "Test/board";
	}
	
	@PostMapping("/boardWrite")
	public String boardWrite(BoardVo boardVo,HttpSession session) {
		log.info("boardWrite() 호출됨");
		
		boardVo.setDate(new Timestamp(System.currentTimeMillis()));
		boardVo.setHit(0);
		String id = (String) session.getAttribute("id");
		
		log.info("id == " + id);
		
		boardVo.setWriter(id);
		
		log.info("boardVo = " + boardVo);
		
		testService.boardWrite(boardVo);
		
	 //  testtesttest
		 //  testtesttest
		 //  testtesttest
	//  testtesttest

		return "redirect:/Test/board";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	@PostMapping("/login")
//	public ResponseEntity<String> login(String id, String passwd,
//			@RequestParam(defaultValue = "false") boolean keepLogin,
//			HttpSession session,
//			HttpServletResponse response) { // 매개변수 이름으로 request.getParameter를 해줌
//		// 아이디나 비밀번호는 입력을 안해도 빈 문자열이 넘어오지만 체크박스인 keepLogin은 체크를 하지 않으면 null이 넘어옴
//		// 그러면 실행중에 null이 넘어오면 문제가 발생 예외발생!
//		// 그러면 에노테이션으로 여러가지 옵션을 달수가있는데 그중에 방법을 찾자!
//		// @RequestParam(defaultValue = "false") 값이 없으면 false로 해달라는말
//		log.info("login() post 호출됨");
//		
//		int check = memberService.userCheck(id, passwd);
//		
//		// 로그인 실패시
//		if (check != 1) { // response객체에 직접 데이터를 주는걸 권장하지 않는다
//						// 왜냐 이작업은 스프링이 해주겠다 이말임 -> ResponseEntity
//			
//			// ResponseEntity안의 구성요소중 하나인 HttpHeaders 준비
//			HttpHeaders headers = new HttpHeaders();
//			headers.add("Content-Type", "text/html; charset=UTF-8");
//			
//			StringBuilder sb = new StringBuilder();
//			sb.append("<script>"); // append를 사용하면 하나의객체에 계속 붙이는 형태라서 결국 하나의 객체임
//			sb.append("alert('아이디 또는 패스워드가 일치하지 않습니다.');");
//			sb.append("history.back();");
//			sb.append("</script>");
//			
//			
//			return new ResponseEntity<String>(sb.toString(), headers, HttpStatus.OK); // 빌더가 가지고 있는 데이터를 꺼낼때는 그냥 .toString해주면 됨
//																						// HttpStatus.OK라는 상수는 내부적으로 200이라는 코드를 가지고있음
//		}
//		// 로그인 성공시
//		// 세션에 아이디 저장(로그인 인증)
//		session.setAttribute("id", id);

}
