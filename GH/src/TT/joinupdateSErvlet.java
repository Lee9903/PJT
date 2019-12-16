package TT;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/joinupdate")
public class joinupdateSErvlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		JoinDto user = new JoinDto();
		
		//String userid = request.getParameter("id");
		//String userid = request.getParameter("name");
		
		//JoinDto user = joinDao.readDB(userid);
		//JoinDto user = new JoinDto();
		//user.setId(userid);
		//joinDao.updateDB(user);
		//System.out.println(result);
		//System.out.println(userid);
		
		user.setId(request.getParameter("id"));
		user.setName(request.getParameter("name"));
		user.setPassword(request.getParameter("password"));
		user.setTel(request.getParameter("tel"));
		user.setJob(request.getParameter("job"));
		user.setHobby(request.getParameter("hobby"));
		
		joinDao.updateDB(user);
		RequestDispatcher dispatcher = request.getRequestDispatcher("joinlist");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
