import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MyConn {
    // Database credentials
    private static final String URL = "jdbc:mysql://localhost:3306/pos_system"; 
    private static final String USER = "root";  
    private static final String PASSWORD = ""; 
    
    // Method to establish connection
    public static Connection getConnection() {
        Connection conn = null;
        try {
            // Load MySQL JDBC Driver (Not necessary in recent JDBC versions)
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish Connection
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Database Connected Successfully!");
        } catch (ClassNotFoundException e) {
            System.out.println("MySQL JDBC Driver not found!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Connection Failed!");
            System.out.println("SQLException: " + e.getMessage());
            System.out.println("SQLState: " + e.getSQLState());
            System.out.println("VendorError: " + e.getErrorCode());
            e.printStackTrace();
        }
        return conn;
    }

    // Method to close connection
    public static void closeConnection(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
                System.out.println("Database Connection Closed!");
            } catch (SQLException e) {
                System.out.println("Error closing connection!");
                e.printStackTrace();
            }
        }
    }

    public static void main(String[] args) {
        // Test connection
        Connection conn = getConnection();
        
        // Make sure to close connection after use
        closeConnection(conn);
    }
}
