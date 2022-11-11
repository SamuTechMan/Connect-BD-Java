package Aplicacao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import BD.BaseDados;

public class Programa {

	public static void main(String[] args) {
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			conn = BaseDados.getConnection();
			st = conn.createStatement();
			rs = st.executeQuery("select * from departamento");
			while (rs.next()) {
				System.out.println(rs.getInt("idDepartamento") + ", " + rs.getString("Nome"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			BaseDados.closeResultSet(rs);
			BaseDados.closeStatement(st);
			BaseDados.closeConnection();
		}
	}
}
