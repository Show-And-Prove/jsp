package com.example;

import java.io.IOException;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.Dispatch;

import sun.rmi.server.Dispatcher;

/**
 * Servlet implementation class GetJavaDataCtrl
 */
@WebServlet("/GetJavaDataCtrl.do")
public class GetJavaDataCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	public GetJavaDataCtrl(){
		super();
	}
   

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ArrayList<String> arrList = new ArrayList<String>();
		arrList.add("arraylist1");
		arrList.add("arraylist2");
		arrList.add("arraylist3");
		arrList.add("arraylist4");
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("키1", "값1");
		map.put("키2", "값2");
		map.put("키3", "값3");
		map.put("키4", "값4");
		
		Human h1 = new Human();
		h1.setName("이름");
		h1.setCountry("국적");
		h1.setAge(99);
		h1.setHobby("취미");
		
		request.setAttribute("arrList", arrList);
		request.setAttribute("hashMap", map);
		request.setAttribute("h1", h1);
		
		RequestDispatcher view = request.getRequestDispatcher("06GetJavaData.jsp");
		view.forward(request, response);
		
		
		
		
		
		
	}


}
