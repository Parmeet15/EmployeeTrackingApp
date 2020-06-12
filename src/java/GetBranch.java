import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class GetBranch extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            int lid = Integer.parseInt(request.getParameter("lid"));

            
            
        }  catch (Exception ex) {
            out.print("Error getting product name..." + ex.toString());
        }
        finally {
            out.close();
        }
    }
}