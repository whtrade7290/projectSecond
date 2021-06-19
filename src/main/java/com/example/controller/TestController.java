package com.example.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.service.TestService;

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
		
		if(keepLogin) {
			Cookie cookie = new Cookie("id", id);
			cookie.setMaxAge(60 * 10);
			cookie.setPath("/");
			
			response.addCookie(cookie);
		}
		
		HttpHeaders headers = new HttpHeaders();
		headers.add("Location", "/");
		
		return new ResponseEntity<String>(headers, HttpStatus.FOUND);
		
	} // login
	
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
