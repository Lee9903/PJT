package My;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Boardread")
public class BoardreadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String SeqNo = request.getParameter("SEQ_NO");
		int bno = Integer.parseInt(SeqNo);
		BoardDTO board = BoardDAO.readDB(bno);
		
		request.setAttribute("board", board);
		request.setAttribute("bno", bno);
		request.setAttribute("target", "boardupdateform");
		RequestDispatcher dispatcher = request.getRequestDispatcher("mainindex.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
