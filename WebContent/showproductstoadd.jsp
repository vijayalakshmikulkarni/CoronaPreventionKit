<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>products list</title>
</head>
<body>
<jsp:include page="userheader.jsp" />
	
	<h3>List of the products available to add to corona kit</h3>
	
	<c:if test="${msg != null}">
			<p><strong>${msg }</strong>
		</c:if>
		
	<form action="showproducts" >
	<c:choose>
		
		<c:when test="${items==null || items.isEmpty() }">
			<p>No Items Found</p>
		</c:when>
		<c:otherwise>
			<table border="1" cellspacing="5px" cellpadding="5px">
				<tr>
					<th>id</th>
					<th>ProductName</th>
					<th>Cost</th>
					<th>ProductDescription</th>
					
					
				</tr>
				<c:forEach items="${items }" var="item">
					<tr>
					<td>${item.id }</td>
					<td>${item.productName }</td>
					<td>${item.cost }</td>
					<td>${item.productDescription }</td>					
					
						
					</td>
				</tr>				
				</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>
	</form>
</body>
</html>
