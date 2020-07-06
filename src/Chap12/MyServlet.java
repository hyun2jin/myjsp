					package Chap12;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Chap11.Member;

/**
 * Servlet implementation class MyServlet
 */

public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("first Served at: ").append(request.getContextPath());
		/*
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<h1>Hello<h1>");
		out.print("<h1>첫번째 서블릿</h1>");
		*/
		
		List<String> list = new ArrayList<>();
		
		list.add("java");
		list.add("html");
		list.add("css");
		list.add("jquery");
		list.add("servlet");
		
		Member m = new Member();
		m.setName("hong");
		m.setAddress("seoul");
		
		request.setAttribute("member",  m);
		
		request.setAttribute("list",  list);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/Chapt12/forward.jsp");
		dispatcher.forward(request,  response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
