package TT;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Showlist")
public class showlistServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	int rowcnt;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String seqno = request.getParameter("seq_no");
		int pageline = 5;
		int pageno;
		
		if(seqno!=null)
			pageno = Integer.parseInt(seqno);
		else
			pageno = 1;
		List<showDTO> list = showDAO.readDBList(pageno);
		int totalcnt = showDAO.totalcnt();
		if(totalcnt > 0)
			rowcnt = (int) Math.ceil((double)totalcnt/pageline);
		else
			rowcnt = 0;
		request.setAttribute("list", list);
		request.setAttribute("rowcnt", rowcnt);
		request.setAttribute("target", "showlistV");
		RequestDispatcher dispatcher = request.getRequestDispatcher("mainindex.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
