package My;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Boardsave")
public class BoardsaverServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDTO board = new BoardDTO();
		int lastbno = BoardDAO.maxCnt() + 1;
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		board.setBno(lastbno);
		board.setTitle(request.getParameter("title"));
		String content = request.getParameter("content");
		board.setContent(content);
		board.setWriter(request.getParameter("writer"));
		
		
	  	
		
		request.setAttribute("target", "boardinsert");
		RequestDispatcher dispatcher = request.getRequestDispatcher("mainindex.jsp");
		dispatcher.forward(request, response);
	  	BoardDAO.insertDB(board);
	  	response.sendRedirect("Boardlist");
	  	
	  	
	  	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
