package controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public interface Controller {
	// 후에 완성해야하는 인터페이스

	void execute(HttpServletRequest req, HttpServletResponse resp);
	
}
