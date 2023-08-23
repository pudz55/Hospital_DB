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

		<h1>medicine used by patient and total expenses </h1>
		
<%
	try {
		String user=request.getParameter("pnum");
			Connection connection = null;
		Class.forName("oracle.jdbc.driver.OracleDriver");
		connection  = DriverManager.getConnection("jdbc:oracle:thin:@acaddbprod-2.uta.edu:1523/pcse1p.data.uta.edu",
		"jxj4536", "Magsafeapple1");
		Statement statement = connection.createStatement();
		String sql = "Select mn.M_NAME,sum(price_usd) over(order by price_usd rows between unbounded preceding and current row)Cost_USD from F21_S003_9_MED_NAME1 mn where mn.M_NAME in (Select m.M_NAME from F21_S003_9_MEDICINE1 m where m.medicine_ID in(Select emr.medicine_id from F21_S003_9_EMR1 emr where emr.patient_ID="+user+"))";
		ResultSet rs = statement.executeQuery(sql);
		while(rs.next()) {
	%>
	<table align='center' border='1' width="100" style="width: 100%"
		class="table table-dark">
		<tbody>
		<tr>

				<th width="25%">M_NAME</th>
				<th width="25%">Cost_USD</th>

			</tr>
		
		<tr>
		<td><%=rs.getString("M_NAME") %></td>
		<td><%=rs.getString("Cost_USD") %></td>
		
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