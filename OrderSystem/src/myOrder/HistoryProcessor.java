package myOrder;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class HistoryProcessor
 */
@WebServlet("/HistoryProcessor")
public class HistoryProcessor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HistoryProcessor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
//		request.setCharacterEncoding("utf-8");
//		String userid=request.getParameter("userid");
//		DataBaseSet dbs = new DataBaseSet();
//		String sql = "select * from theorder where userid='"+userid+"'";
//		ResultSet result = dbs.execQuery(sql);
//		try {
//				String a = result.getString(2);
//				System.out.println(a);
//				response.setContentType("text/html;charset=UTF-8");   
//				Map map = new HashMap();
//				map.put("dataresult",result);  
//				String json = JSONObject.fromObject(map).toString();  
//				response.getWriter().write(json.toString());  
//				response.getWriter().flush();  
//				response.getWriter().close(); 
//		}catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	}

}
