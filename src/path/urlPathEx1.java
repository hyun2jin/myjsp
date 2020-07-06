package path;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class urlPathEx1
 */

/*
 * '/' 시작 '/*'로 정료 : 경료 맵핑
 * '*. 로 시작 : 확장자 맵핑
 * '/'만 있음 : 기본 서블릿
 * 그외 정확한 매핑
 * 
 */
/*
 * 매핑 우선순위
 * 1. 정확한 핑
 * 2. 경로 매핑
 * 	  2.1 가장 긴 경로
 * 3. 확장자 매핑
 * 4. 기본 서블릿 
 */


public class urlPathEx1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public urlPathEx1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Servlet 1").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
