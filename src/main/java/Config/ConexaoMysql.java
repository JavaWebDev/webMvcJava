package Config;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConexaoMysql {
    Connection connection;
    //criar um construtor 
    public void ConexaoMysql() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            String url = "jdbc:mysql://db4free.net:3306/javamvc";
            String configs = "?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&useSSL=false";
            String connectionString = url + configs;
            DriverManager.getConnection(connectionString, "javaweb", "uninove10");
        } catch (Exception e) {
            System.err.println("Error" + e.getMessage());
        }
    }
    
    public Connection retornarConexao(){
        return connection;
    }
}
