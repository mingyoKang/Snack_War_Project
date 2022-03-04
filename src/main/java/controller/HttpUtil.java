package controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class HttpUtil {
	// 공통 기능을 하는 메소드는 따로 만들어 공공재로 쓸 수 있도록 하는 클래스
	
	public static void forward(HttpServletRequest req, HttpServletResponse resp, String url) {
		
		try {
			
			req.getRequestDispatcher(url).forward(req, resp);
			
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
