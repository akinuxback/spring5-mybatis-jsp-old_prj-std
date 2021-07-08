package aki.product.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {
	
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testConnection() {
		String jdbcURL = "jdbc:oracle:thin:@localhost:1521:orcl";
		String userid = "akinux1004";
		String userpw = "akinux1004";
		try(Connection conn = DriverManager.getConnection(jdbcURL, userid, userpw)){
			log.info("Connection success!!!");
		} catch(Exception e) {
			fail(e.getMessage());
		}
	}
	
}
