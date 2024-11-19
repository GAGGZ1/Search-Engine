<%@page import ="java.util.ArrayList"%>
<%@page import ="com.gagan.SearchResult"%>
<html>
<body>
    <table border=2>
          <tr>
            <th>Title</th>
            <th>Link</th>
          </tr>
          <%
            ArrayList<SearchResult>results=(ArrayList<SearchResult>)request.getAttribute("results");
            for(SearchResult result:results){
           %>
           <tr>
                <td><%out.println(result.getTitle());%></td>
                <td><%out.println(result.getLink());%></td>
           </tr>
           <%
           }
           %>
         </table>

         </body>
         </html>