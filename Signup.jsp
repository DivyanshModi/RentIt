<%@page import="java.sql.DriverManager,java.sql.Connection,java.sql.PreparedStatement" %>
<%
String name=request.getParameter("nm");
String Contact=request.getParameter("con");
String EmailId=request.getParameter("Id");
String Password=request.getParameter("pass");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","modi","modi");
PreparedStatement st=con.prepareStatement("insert into admin values(?,?,?,?)");
st.setString(1,name);
st.setString(2,Contact);
st.setString(3,EmailId);
st.setString(4,Password);
response.sendRedirect("index.jsp");
%>