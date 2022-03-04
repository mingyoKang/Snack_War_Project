package controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import controller.board.haitaiBoardListController;
import controller.board.lotteBoardListController;
import controller.board.nongshimBoardListController;
import controller.board.orionBoardListController;
import controller.home.HomeForwardingController;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class FrontController extends HttpServlet{
	// 모든 URL 주소를 받을 클래스
	
	// URL 저장소
	Map<String,Controller> list = null;
	
	@Override
	public void init() throws ServletException {
		// 초기에 시행되는 메소드
		// 먼저 url 저장소에 주소들을 담는다.
		list = new HashMap();
		
		// Home관련 URL
		list.put("/Home.go", new HomeForwardingController());
		
		// Board관련 URL
		 // Lotte
		list.put("/Board/lotteList.go", new lotteBoardListController());
		
		 // Haitai
		list.put("/Board/haitaiList.go", new haitaiBoardListController());
		
		 // Orion
		list.put("/Board/orionList.go", new orionBoardListController());
		
		 // Nongshim
		list.put("/Board/nongshimList.go", new nongshimBoardListController());
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 새로고침 할 때 마다 시행되는 메소드
		
		// URL 주소를 얻기
		String url = req.getRequestURI();
		System.out.println("URI: " + url);
		
		// Controller 꺼내기
		Controller subController = list.get(url);
		
		// subController에서 execute 함수 실행시키기
		subController.execute(req, resp);
		
	}
	
}
