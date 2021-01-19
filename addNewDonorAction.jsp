<%@page import="Project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id= request.getParameter("id");
String name= request.getParameter("name");
String father= request.getParameter("father");
String mother= request.getParameter("mother");
String mobilenumber= request.getParameter("mobilenumber");
String gender= request.getParameter("gender");
String email= request.getParameter("email");
String bloodgroup= request.getParameter("bloodgroup");
String address = request.getParameter("address");
try
{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement pst = con.prepareStatement("insert into donor values(?,?,?,?,?,?,?,?,?)");
	pst.setString(1, id);
	pst.setString(2, name);
	pst.setString(3, father);
	pst.setString(4, mother);
	pst.setString(5, mobilenumber);
	pst.setString(6, gender);
	pst.setString(7, email);
	pst.setString(8, bloodgroup);
	pst.setString(9, address);
	pst.executeUpdate();
	response.sendRedirect("addNewDonor.jsp?msg=valid");


}
catch(Exception e)
{
	response.sendRedirect("addNewDonor.jsp?msg=invalid");

}
%>