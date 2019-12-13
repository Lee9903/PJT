package My;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/joinpro")
public class joinprocessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		JoinDto user = new JoinDto();
		//HttpSession session = request.getSession();
		user.setId(request.getParameter("id"));
		user.setName(request.getParameter("name"));
		user.setPassword(request.getParameter("password"));
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		user.setTel(tel1+"-"+tel2+"-"+tel3);
		user.setJob(request.getParameter("job"));
		user.setGender(request.getParameter("gender"));
		user.setHobby(request.getParameter("hobby"));
		user.setIntro(request.getParameter("intro"));
		
		int cnt = joinDao.insertDB(user);
		if(cnt>0) {
			request.setAttribute("result", "true");
			request.setAttribute("user", user);
			//request.setAttribute("target", "home");
		}else
			request.setAttribute("result", "false");
		  	request.setAttribute("target", "home");
		  	RequestDispatcher dispatcher = request.getRequestDispatcher("mainindex.jsp");
		  	dispatcher.forward(request, response);
		  	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
