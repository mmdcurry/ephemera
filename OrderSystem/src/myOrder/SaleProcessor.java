package myOrder;

import java.io.IOException;
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
 * Servlet implementation class SaleProcessor
 */
@WebServlet("/SaleProcessor")
public class SaleProcessor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaleProcessor() {
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
			String userid=request.getParameter("userid");
			String ordertime=request.getParameter("ordertime");
			String ss="update theorder set status='“—≈‰≤Õ' where (userid='"+userid+"') and (time='"+ordertime+"')";
			System.out.println(ss+"/"+userid+ordertime);
			DataBaseSet dbs = new DataBaseSet();
			dbs.execSql(ss);
			response.setContentType("text/html;charset=UTF-8");   
			Map map = new HashMap();
			map.put("bool",	"2");
			map.put("info", "≈‰≤Õ≥…π¶");  
			String json = JSONObject.fromObject(map).toString();  
			response.getWriter().write(json.toString());  
			response.getWriter().flush();  
			response.getWriter().close(); 
	}
}
