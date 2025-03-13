package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.newUser.newUser;
import com.newUser.newUserUtil;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String task = request.getParameter("task");
		
		if("changePW".equals(task)) {
			String id = request.getParameter("userId");
			user u1 = userDbUtil.getUserFromId(id);
			String currentPassword = request.getParameter("currentPassword");
			String newPw = request.getParameter("newPassword");	
			String confirmPW = request.getParameter("confirmPassword");
			
			
			response.getWriter().println(currentPassword);
			
			if(u1.getPassword().equals(currentPassword)) {
				if(newPw.equals(confirmPW)) {
					response.getWriter().println(confirmPW);
					boolean result = userDbUtil.updatePW(newPw,id);
					//response.getWriter().println(result);
					if(result) {
						response.getWriter().println("updated");
						request.setAttribute("resDone", "Password changed successfully");
						RequestDispatcher dis = request.getRequestDispatcher("userChangePw.jsp?id="+id);
						dis.forward(request, response);
					}else {
						request.setAttribute("res", "Something went wrong");
						RequestDispatcher dis = request.getRequestDispatcher("userChangePw.jsp?id="+id);
						dis.forward(request, response);
					}
					
					
				}else {
					request.setAttribute("res", "new passward did not confirmed correctly");
					RequestDispatcher dis = request.getRequestDispatcher("userChangePw.jsp?id="+id);
					dis.forward(request, response);
				}
			}else {
				request.setAttribute("res", "Password wrong");
				RequestDispatcher dis = request.getRequestDispatcher("userChangePw.jsp?res=password is wrong&id="+id);
				dis.forward(request, response);
			}
			
		}
		
		
		if("logout".equals(task)) {
			  // Get the session associated with this request
            HttpSession session = request.getSession(false);
            
            if (session != null) {
                // Invalidate the session
                session.invalidate();
                
                // Redirect the user to a logout page or any other appropriate page
                response.sendRedirect("login.jsp");
            } else {
                response.getWriter().println("No active session to log out from.");
            }
			
		}
		
		
		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	     // Retrieve form data
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String gmail = request.getParameter("gmail");
        String phoneNumber = request.getParameter("phoneNumber");
        String role = request.getParameter("role");
        
        // Create a new user object
        newUser newUser1 = new newUser(id, name, password, gmail, phoneNumber, role, "unverified");
		boolean verification = newUser1.isVerified();
		if (!verification) {
			response.getWriter().println("a new guys");
			boolean res = newUserUtil.addUser(newUser1);
			if(res) {
				response.getWriter().println("a new guy added");
				request.setAttribute("regresult", "Registration is sent to the administration to validate");
				RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
				dis.forward(request, response);
			}
		}

}
}
