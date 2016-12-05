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
 * Servlet implementation class LoginProcessor
 */
@WebServlet("/LoginProcessor")
public class LoginProcessor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginProcessor() {
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
		DataBaseSet dbs = new DataBaseSet();
		String userid = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		String sql0="select * from administrator where admin_name='"+userid+"' and admin_password='"+pwd+"'";
		ResultSet result0 = dbs.execQuery(sql0);
		String sql1 = "select password from user where userid='"+userid+"'";
		ResultSet result1 = dbs.execQuery(sql1);
		try {
			if(result0.next()){
				response.setContentType("text/html;charset=UTF-8");   
				Map map = new HashMap();
				map.put("bool",	"5");
				map.put("info", "ok");  
				String json = JSONObject.fromObject(map).toString();  
				response.getWriter().write(json.toString());  
				response.getWriter().flush();  
				response.getWriter().close(); 
			}
			else{
				if(!result1.next()){
					response.setContentType("text/html;charset=UTF-8");   
					Map map = new HashMap();
					map.put("bool",	"0");
					map.put("info", "用户名不存在，请注册！");  
					String json = JSONObject.fromObject(map).toString();  
					response.getWriter().write(json.toString());  
					response.getWriter().flush();  
					response.getWriter().close(); 
				}
				else{
					String sql2 = "select password from user where userid='"+userid+"'and password='"+pwd+"'";
					ResultSet result2 = dbs.execQuery(sql2);
					if(!result2.next()){
						response.setContentType("text/html;charset=UTF-8");   
						Map map = new HashMap();
						map.put("bool",	"2");
						map.put("info", "密码错误！");  
						String json = JSONObject.fromObject(map).toString();  
						response.getWriter().write(json.toString());  
						response.getWriter().flush();  
						response.getWriter().close(); 
					}
					else{
						response.setContentType("text/html;charset=UTF-8");   
						Map map = new HashMap();
						map.put("bool",	"1");
						map.put("info", "登陆成功！");
						String json = JSONObject.fromObject(map).toString();  
						response.getWriter().write(json.toString());
						response.getWriter().flush();
						response.getWriter().close();
						request.setAttribute("userid",userid);
						request.getRequestDispatcher("../WebContent/mainMetro.jsp").forward(request,response);
						
					}
				}

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
