package TT;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/showread")
public class showreadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String seqno = request.getParameter("seq_no");
		int img = Integer.parseInt(seqno);
		showDTO show = showDAO.readDB(img);
		
		request.setAttribute("show", show);
		request.setAttribute("img", img);
		request.setAttribute("target", "showupdateform");
		RequestDispatcher dispatcher = request.getRequestDispatcher("mainindex.jsp");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
