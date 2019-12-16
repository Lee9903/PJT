package TT;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Boardupdate")
public class BoardupdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDTO board = new BoardDTO();
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		int bno = Integer.parseInt(request.getParameter("bno"));
		board.setBno(bno);
		board.setTitle(request.getParameter("title"));
		String content = request.getParameter("content");
		board.setContent(content);
		BoardDAO.updateDB(board);
		response.sendRedirect("Boardlist");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
