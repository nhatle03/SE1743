package connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;
import utils.Helper;

/**
 *
 * @author AnhDT
 */
public class SQLServerConnection {

    public static final String HOSTNAME = "localhost";
    public static final String PORT = "1433";

    /**
     * Get connection to MSSQL Server
     * @return Connection
     */
    public static Connection getConnection() {
        Properties properties = Helper.getPropertiesByFileName("const/const.properties");
        // Create a variable for the connection string.
        String connectionUrl = "jdbc:sqlserver://"+HOSTNAME+":"+PORT+";"
                             + "databaseName="+properties.getProperty("database.name") + ";encrypt=true;trustServerCertificate=true"; 

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            return DriverManager.getConnection(connectionUrl, properties.getProperty("database.username"), properties.getProperty("database.password"));
        }
        // Handle any errors that may have occurred.
        catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace(System.out);
        }
        return null;
    }
    
    /**
     * Close connection to MSSQL Server
     *
     * @param connection
     */
    public static void closeConnection(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException ex) {
                System.out.println("Close connection failed!");
            }
        }
    }

    /**
     * Close PreparedStatement to MSSQL Server
     *
     * @param ps
     */
    public static void closePreparedStatement(PreparedStatement ps) {
        if (ps != null) {
            try {
                ps.close();
            } catch (SQLException ex) {
                System.out.println("Close PreparedStatement failed!");
            }
        }
    }

    /**
     * Close ResultSet to MSSQL Server
     *
     * @param rs
     */
    public static void closeResultSet(ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException ex) {
                System.out.println("Close ResultSet failed!");
            }
        }
    }
    
    public static void main(String[] args) {
        System.out.println(getConnection());
    }
}
