package example.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import example.dao.UserDao;
import example.model.User;

/**
 * Servlet implementation class RegUser
 */
public class RegUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		Long mobileno=Long.parseLong(request.getParameter("mobileno"));
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		User u= new User();
		u.setFirstname(firstname);
		u.setLastname(lastname);
		u.setMobileno(mobileno);
		u.setEmail(email);
		u.setPassword(password);
		
		UserDao dao= new UserDao();
		int i=dao.saveUser(u);
		
		if(i>0) {
			request.setAttribute("msg","User register successfully..!");
			RequestDispatcher rd= request.getRequestDispatcher("Loginpage.jsp");
			rd.forward(request, response);
		}
		else {
			request.setAttribute("msg","User not register..!");
			RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
			rd.include(request, response);
		}
	}

}
