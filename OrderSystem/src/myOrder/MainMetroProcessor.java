package myOrder;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

/**
 * Servlet implementation class MainMetroProcessor
 */
@WebServlet("/MainMetroProcessor")
public class MainMetroProcessor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainMetroProcessor() {
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
		request.setCharacterEncoding("utf-8");
		String userid=request.getParameter("userid");
		String order_info=request.getParameter("order_info");
		int total = Integer.parseInt(request.getParameter("money"));
		String time = request.getParameter("times");
		String status = "µÈ´ýÅä²Í";
//		System.out.println(userid+"|"+order_info+"|"+total+"|"+time+"|"+status);
		StringBuffer sql = new StringBuffer();
		sql.append("insert into theorder values('");
		sql.append(userid).append("','");
		sql.append(order_info).append("','");
		sql.append(total).append("','");
		sql.append(time).append("','");
		sql.append(status).append("')");
		String ss=sql.toString();
		DataBaseSet dbs = new DataBaseSet();
		dbs.execSql(ss);
		response.setContentType("text/html;charset=UTF-8");   
		Map map = new HashMap();
		map.put("bool",	"1");
		map.put("info", "¶©²Í³É¹¦£¡");  
		String json = JSONObject.fromObject(map).toString();  
		response.getWriter().write(json.toString());  
		response.getWriter().flush();  
		response.getWriter().close(); 
		
	}

}
