package user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.dao.UserDAO;
import user.dto.UserDTO;


@WebServlet("/user_servlet/*")
public class UserController extends HttpServlet{
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
		UserDAO dao = new UserDAO();
		
		String url=request.getRequestURL().toString();
		System.out.println(url);
		
		if(url.indexOf("join.do") != -1){
		System.out.println("join.do 호출...");
		String userid=request.getParameter("userid");		
		String passwd=request.getParameter("passwd");
		String name=request.getParameter("name");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		System.out.println("phone 호출..."+phone);
		UserDTO dto=new UserDTO();
		dto.setUserid(userid);
		dto.setPasswd(passwd);
		dto.setName(name);
		dto.setEmail(gender);
		dto.setGender(email);
		dto.setPhone(phone);		
		dao.insert(dto);
		System.out.println(dto);
		String page="/travel/index.jsp";
		RequestDispatcher rd=request.getRequestDispatcher(page);
		rd.forward(request, response);	
		}
		else if(url.indexOf("login.do") != -1) {
		System.out.println("login.do 호출...");
		String userid=request.getParameter("userid");		
		String passwd=request.getParameter("passwd");
		System.out.println("아이디:"+userid);
		System.out.println("패스워드:"+passwd);		
		UserDTO dto=new UserDTO();
		dto.setUserid(userid);
		dto.setPasswd(passwd);
		String result=dao.loginCheck(dto);			
		String page="/travel/index.jsp";
		HttpSession session=request.getSession();
		if(result!=null){			
			System.out.println("로그인성공");
			session.setAttribute("result", result);
			session.setAttribute("userid", userid);
			page="/travel/index.jsp";
			response.sendRedirect(request.getContextPath()+page+"?message=login");
		}else{
			System.out.println("로그인실패");
			session.invalidate();
			page="/travel/index.jsp";
			response.sendRedirect(request.getContextPath()+page+"?message=error");			
		}
		}else if(url.indexOf("joinview.do") != -1){
			System.out.println("joinview.do 호출...");
			String userid=request.getParameter("userid");
			System.out.println(userid);
			UserDTO dto = dao.joinview(userid);
			request.setAttribute("dto", dto);
			String page="/travel/view.jsp";
			RequestDispatcher rd=request.getRequestDispatcher(page);
			rd.forward(request, response);
		}		
		else if(url.indexOf("update.do") != -1) {
		System.out.println("update.do 호출...");
		String userid=request.getParameter("userid");	
		String passwd=request.getParameter("passwd");
		String name=request.getParameter("name");
		String gender=request.getParameter("gender");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		UserDTO dto = new UserDTO();	
		dto.setUserid(userid);
		dto.setPasswd(passwd);
		dto.setName(name);
		dto.setGender(gender);
		dto.setEmail(email);
		dto.setPhone(phone);
		dao.update(dto);		
		String uri="/travel/index.jsp";
		response.sendRedirect(request.getContextPath()+uri);		
		}
		else if(url.indexOf("list.do") != -1){
		System.out.println("list.do 호출...");			
			
		List<UserDTO> items=dao.list();
		request.setAttribute("list", items);
					
		String page="/admin/list.jsp";
		RequestDispatcher rd=request.getRequestDispatcher(page);
		rd.forward(request, response);
			
		}
		else if(url.indexOf("delete.do") != -1){
		System.out.println("delete.do 호출..");
		String userid=request.getParameter("userid");	
		System.out.println(userid);
		dao.delete(userid);		
		String uri="/user_servlet/list.do";	
		response.sendRedirect(request.getContextPath()+uri);
		}		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}
}

