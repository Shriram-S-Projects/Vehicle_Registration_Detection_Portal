<%
HttpSession mySession = request.getSession();
String email = request.getParameter("email");
String password = request.getParameter("password");
mySession.setAttribute("email", email);
mySession.setAttribute("password", password);

if((session.getAttribute("email").equals("admin@project.com")) && (session.getAttribute("password").equals("admin"))){
	response.sendRedirect("optionspage.jsp");  
}
%>