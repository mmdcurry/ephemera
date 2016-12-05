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
 * Servlet implementation class RegisterProcessor
 */
@WebServlet("/RegisterProcessor")
public class RegisterProcessor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterProcessor() {
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
		String pwd=request.getParameter("pwd");
		String phone = request.getParameter("phone");
		String question = request.getParameter("question");
		String answer = request.getParameter("answer");
		StringBuffer sql = new StringBuffer();
		sql.append("insert into user values('");
		sql.append(userid).append("','");
		sql.append(pwd).append("','");
		sql.append(phone).append("','");
		sql.append(question).append("','");
		sql.append(answer).append("')");
		String ss=sql.toString();
		DataBaseSet dbs = new DataBaseSet();
		dbs.execSql(ss);
		response.setContentType("text/html;charset=UTF-8");   
		Map map = new HashMap();
		map.put("bool",	"2");
		map.put("info", "×¢²á³É¹¦£¡");  
		String json = JSONObject.fromObject(map).toString();  
		response.getWriter().write(json.toString());  
		response.getWriter().flush();  
		response.getWriter().close(); 
	}

}
