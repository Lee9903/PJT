package My;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/loginchk")
public class loginchkServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		//HttpSession session = request.getSession();
		String userid = request.getParameter("id");
		String password = request.getParameter("password");
		JoinDto user = joinDao.readDB(userid);
		
		
		
		if(password.equals(user.getPassword())) {
			request.setAttribute("user", user);
			request.setAttribute("result", "true");
			
		}else
			request.setAttribute("result", "false");
		request.setAttribute("target", "loginresult");
		RequestDispatcher dispatcher = request.getRequestDispatcher("mainindex.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
