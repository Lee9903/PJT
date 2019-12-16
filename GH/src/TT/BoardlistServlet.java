package TT;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Boardlist")
public class BoardlistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	int rowcnt;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String SeqNo = request.getParameter("SEQ_NO");
		int pageLine=5;
		int pageNo;
		
		if(SeqNo!=null)
			pageNo = Integer.parseInt(SeqNo);
		else
			pageNo = 1;
		List<BoardDTO> list = BoardDAO.readDBList(pageNo);
		int totalcnt = BoardDAO.totalCnt();
		if(totalcnt > 0)
			rowcnt = (int) Math.ceil((double)totalcnt/pageLine);
		else
			rowcnt = 0;
		request.setAttribute("list", list);
		request.setAttribute("rowcnt", rowcnt);
		request.setAttribute("target", "boardlistV");
		RequestDispatcher dispatcher = request.getRequestDispatcher("mainindex.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
