package Chapt17.sample;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListServlet
 */
@WebServlet("/sample/list")
public class ListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/Chap17/sample/list.jsp");
		view.forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		
		//
		ServletContext app = getServletContext();
		Object o = app.getAttribute("list");
		if(o == null) {
			o = new ArrayList<Item>();
			app.setAttribute("list", o);
		}
		
		List<Item> list = (List<Item>) o;
		Item i = new Item();
		i.setName(name);
		i.setAge(age);
		
		list.add(i);
		
		request.setAttribute("list", list);
		RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/Chap17/sample/list.jsp");
		view.forward(request, response);
		
	}

}

