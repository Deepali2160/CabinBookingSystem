<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.yash.cabinbooking.model.Cabin" %>
<%@ page import="java.util.List" %>
<%
    List<Cabin> cabins = (List<Cabin>) request.getAttribute("cabins");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Search Results</title>
    <style>
        body {
            font-family: sans-serif;
            background: #f4f4f4;
            padding: 40px;
        }
        .cabin-card {
            background: #fff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            margin-bottom: 20px;
            display: flex;
            gap: 20px;
        }
        .cabin-card img {
            width: 200px;
            height: 140px;
            object-fit: cover;
            border-radius: 10px;
        }
    </style>
</head>
<body>
<h2>Available Cabins</h2>
<% if (cabins != null && !cabins.isEmpty()) {
    for (Cabin cabin : cabins) { %>
        <div class="cabin-card">
            <img src="<%= cabin.getImageUrl() %>" alt="Cabin Image"/>
            <div>
                <h3><%= cabin.getName() %></h3>
                <p><strong>Location:</strong> <%= cabin.getLocation() %></p>
                <p><strong>Capacity:</strong> <%= cabin.getCapacity() %> people</p>
                <p><strong>Price:</strong> ₹<%= cabin.getPrice() %> per night</p>
            </div>
        </div>
<%  }
   } else { %>
    <p>No cabins found for your criteria.</p>
<% } %>
</body>
</html>
