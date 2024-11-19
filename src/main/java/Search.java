
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
@WebServlet("/Search")
public class Search extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String keyword = request.getParameter("keyword");
//        System.out.println(keyword);
        Connection connection=DatabaseConnection.getConnection();
//        connection.createStatement().executeQuery("select pageTitle, pageLink, (length(lower(pageData))-length(replace(lower(pageData), '\" + keyword + \"', \\\"\\\")))/length('\" + keyword + \"') as countoccurence from pages order by countoccurence desc limit 30;");
       try {
           ResultSet resultSet = connection.createStatement().executeQuery("SELECT pageTitle, pageLink, (LENGTH(LOWER(pageText)) - LENGTH(REPLACE(LOWER(pageText), '" + keyword.toLowerCase() + "', ''))) / LENGTH('" + keyword.toLowerCase() + "') AS count_occurrence FROM pages ORDER BY count_occurrence DESC LIMIT 30;");
            ArrayList<SearchResult>results=new ArrayList<SearchResult>();
            while(resultSet.next()){
                SearchResult searchResult =new SearchResult();
                searchResult.setTitle(resultSet.getString("pageTitle"));
                searchResult.setLink(resultSet.getString("pageLink"));
                results.add(searchResult);
            }
            //printing in console
            for(SearchResult result:results){
                System.out.println(result.getTitle()+"\n"+result.getLink()+"\n");

            }

        response.setContentType("text/html");
        PrintWriter out =response.getWriter();

    }
    catch (SQLException sqlException){
           sqlException.printStackTrace();
       }
    }
}
