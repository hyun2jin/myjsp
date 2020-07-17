package Chapt17.sample;

import Chap11.Member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class test1ser
 */
@WebServlet({"/test1user", "/test2user"})
public class test1ser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public test1ser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.getSession().invalidate();		
		response.sendRedirect(
				request.getContextPath() + "/Chapt17/sample/index1.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		System.out.println("In");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		
		HttpSession session = request.getSession();
		
		if(id != null && pw != null)
		{
			if(id.equals(pw))
			{
				session.setAttribute("user", id);				
			}
			
		
			response.sendRedirect( request.getContextPath() + "/Chapt17/sample/index1.jsp");
			
			System.out.println("In4");
		}
		
	}

}
