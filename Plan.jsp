<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% Connection con=null;
Statement stmt=null;
ResultSet rs=null;
try {
	Class.forName("oracle.jdbc.driver.OracleDriver"); 
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
	 stmt=con.createStatement();
	
} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
int row=Integer.parseInt(request.getParameter("rows1"));
int colm=Integer.parseInt(request.getParameter("columns1"));
try{ for(int i=1;i<=row;i++)
	  for(int j=1;j<=colm;j++)
	  {
		stmt.execute("insert into hall values("+i+","+j+","+"1)");  
	  }	  
	  rs.close();
	  stmt.close();
	  con.close();
	
}
catch(Exception e)
{ }
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Table Created
</body>
</html>