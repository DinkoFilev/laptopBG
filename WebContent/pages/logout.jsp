<%@page import = "java.util.Date" session="true"%>
<%

  session.setAttribute("user", null);
  session.invalidate();
  response.sendRedirect("Index.jsp");
  
%>
