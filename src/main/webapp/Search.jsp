<%@page import="java.util.ArrayList"%>
<%@page import="com.gagan.SearchResult"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Results - Search Engine</title>
    <style>
        body {
            font-family: 'Roboto', Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            min-height: 100vh; /* Adjusts dynamically based on content */
            color: #ffffff;
        }
        h1 {
            margin-top: 20px;
            font-size: 28px;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.4);
        }
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: rgba(255, 255, 255, 0.1);
            color: #ffffff;
            text-align: left;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3);
        }
        th, td {
            padding: 12px 15px;
            border: 1px solid rgba(255, 255, 255, 0.5);
        }
        th {
            background-color: rgba(255, 255, 255, 0.2);
            font-size: 18px;
            text-align: center;
        }
        td {
            background-color: rgba(255, 255, 255, 0.1);
        }
        a {
            color: #00ff00; /* Bright green for visibility */
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <h1>Search Results</h1>
    <table>
        <tr>
            <th>Title</th>
            <th>Link</th>
        </tr>
        <%
            ArrayList<SearchResult> results = (ArrayList<SearchResult>) request.getAttribute("results");
            if (results != null && !results.isEmpty()) {
                for (SearchResult result : results) {
        %>
        <tr>
            <td><%= result.getTitle() %></td>
            <td><a href="<%= result.getLink() %>"><%= result.getLink() %></a></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="2" style="text-align: center;">No results found.</td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
