package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DBUtils {

	 
	public static Connection conectar(String user, String password, String ip, String puerto, String servicio){
		Connection con = null;
		try
		{
			String driver = "oracle.jdbc.OracleDriver";
			String ulrjdbc = "jdbc:oracle:thin:"+user+"/"+password+"@"+ip+":"+puerto+":"+servicio;
			Class.forName(driver).newInstance();
			con = DriverManager.getConnection(ulrjdbc);
			return con;
		} catch (SQLException e )	{
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return null;
	}

	 public static void cerrarConexion(Connection con){
		 if (con == null){
			 System.out.println("\n\n\tNo existe conexion");
			 return ;
		 }
		 try {
			 con.close();
			 System.out.println("\n\n\tConexion Cerrada");
		 } catch (SQLException e) {
			 System.out.println("\n\n\tError al cerrar");
			 e.printStackTrace();
		 }
	 }
	 
	 public static List<String> ejecutaConsulta(Connection con, String query, Object[] param){
		 List<String> datos= new ArrayList<String>();
		 ResultSet rs;
		 PreparedStatement pstmt; 
		 try {
			 pstmt = con.prepareStatement(query);	
			 if(!verificarCantidadParametros(pstmt, param)){
				 System.out.println("el numero de parametros no coincide");
				 return null;
			 }
			 pstmt=setDatos(pstmt,param);
			 rs=pstmt.executeQuery();
			 while (rs.next()){
				 for(int x=0; x<rs.getMetaData().getColumnCount(); x++){
					 datos.add( rs.getMetaData().getColumnLabel(x+1)+"\t"+ rs.getString(x + 1));
				 }
			 }
		 } catch (SQLException e) {
			 System.out.println("Error 'ejecutaConsulta' ");
			 e.printStackTrace();
			 return null;
		 }
		 try {
			pstmt.close();
			rs.close();
		} catch (SQLException e) {
			System.out.println("Error 'ejecutaConsulta' cerrar prepareStatement");
			e.printStackTrace();
		}
		 return datos;
	 }
	 
	public static boolean ejecutaUpdate(Connection con, String query, Object[] param){
		
		PreparedStatement pstmt; 
		try {
			pstmt = con.prepareStatement(query);	
			if(!verificarCantidadParametros(pstmt, param)){
				System.out.println("el numero de parametros no coincide");
				return false;
			}
			pstmt=setDatos(pstmt,param);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Error 'ejecutaUpdate' ");
			e.printStackTrace();
			return false;
		}
		try {
			pstmt.close();
		} catch (SQLException e) {
			System.out.println("Error 'ejecutaUpdate' cerrar prepareStatement");
			e.printStackTrace();
		}
		return true;
	}
	
	public static boolean ejecutaInsert(Connection con, String query, Object[] param){
		PreparedStatement pstmt; 
		try {
			pstmt = con.prepareStatement(query);
			if(!verificarCantidadParametros(pstmt, param)){
				System.out.println("el numero de parametros no coincide");
				return false;
			}
			pstmt=setDatos(pstmt,param);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Error 'ejecutaInsert' ");
			e.printStackTrace();
			return false;
		}
		try {
			pstmt.close();
		} catch (SQLException e) {
			System.out.println("Error 'ejecutaInsert' cerrar prepareStatement");
			e.printStackTrace();
		}
		return true;
	}
	
	public static PreparedStatement setDatos(PreparedStatement pstmt, Object[] param) throws SQLException{
		int c=1;
		for(Object o: param){
		 	if( o instanceof Integer){
				pstmt.setInt(c++, getInt(o));
			}
			else if ( o instanceof String){
				pstmt.setString(c++, getString(o));
			}
			else if ( o instanceof Double){
				pstmt.setDouble(c++, getDouble(o));
			}
		 }
		return pstmt;
	}
	
	public static boolean verificarCantidadParametros(PreparedStatement pstmt, Object[] param){
		try {
			if(pstmt.getParameterMetaData().getParameterCount()==param.length){
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public static int getInt(Object o){
		return  new Integer(o.toString());
	}
	
	public static String getString(Object o){
		return o.toString();
	}
	
	public static double getDouble(Object o){
		return new Double(o.toString());
	}
	
}
