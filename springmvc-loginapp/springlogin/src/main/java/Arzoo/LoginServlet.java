package Arzoo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        Connection con = null;

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish the connection
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/arzoodb", "root", "Ak#123");

            // Get the username and password from the request
            String n = request.getParameter("txtName");
            String p = request.getParameter("txtPwd");

            // Prepare the SQL statement
            PreparedStatement ps = con.prepareStatement("SELECT uname FROM person WHERE uname=? AND password=?");
            ps.setString(1, n);
            ps.setString(2, p);

            // Execute the query
            ResultSet rs = ps.executeQuery();

            // Check if the user exists
            if (rs.next()) {
                RequestDispatcher rd = request.getRequestDispatcher("welcome.jsp");
                rd.forward(request, response);
            } else {
            	RequestDispatcher rd = request.getRequestDispatcher("failed.jsp");
                rd.forward(request, response);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new ServletException("JDBC Driver not found", e);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException("Error connecting to the database", e);
        } finally {
            // Ensure the connection is closed
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            out.close();
        }
    }
}
