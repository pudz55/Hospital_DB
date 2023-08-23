<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EMR data</title>
</head>
<body>

		<h1>EMR data of the hospital</h1>
		
<%
	try {
			Connection connection = null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection  = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
		"jxj4536", "Magsafeapple1");
		Statement statement = connection.createStatement();
		String sql = "select m.M_name,m.MFG_DATE,sum(m.QUANTITY),mn.PRICE_USD from F21_S003_9_MEDICINE m,F21_S003_9_MED_NAME mn where m.M_NAME=mn.M_NAME GROUP BY CUBE (m.M_NAME,m.MFG_DATE,mn.PRICE_USD)";
		ResultSet rs = statement.executeQuery(sql);
		while(rs.next()) {
	%>
	<table align='center' border='1' width="100" style="width: 100%"
		class="table table-dark">
		<tbody>
		<tr>

				<th width="25%">M_NAME</th>
				<th width="25%">MFG_DATE</th>
				<th width="25%">SUM(M.QUANTITY)</th>
				<th width="25%">PRICE_USD</th>

			</tr>
		
		<tr>
		<td><%=rs.getString("M_NAME") %></td>
		<td><%=rs.getString("MFG_DATE") %></td>
		<td><%=rs.getString("SUM(M.QUANTITY)") %></td>
		<td><%=rs.getString("PRICE_USD") %></td>
		</tr>
		</tbody>

</table>
	<%
	}

	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
			
</body>
</html>