/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.devsmile.sql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author kelvi
 */
public class MysqlConnect {
    private Connection conn = null;
	public MysqlConnect(){
		try{
		 Class.forName("org.mariadb.jdbc.Driver");
	         String servidor = "jdbc:mariadb://localhost/java_1";
	         String usuarioDB="root";
	         String passwordDB="rock7625";
	         conn = DriverManager.getConnection(servidor,usuarioDB,passwordDB);
	         if(conn != null){
	        	 System.out.println("conexion exitosa!");
	         }
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
		//return conn;
		
	}
	public ResultSet getQuery(String _query)
	{
		Statement state = null;
		ResultSet resultado = null;
		try{
			state = (Statement) conn.createStatement();
			resultado = state.executeQuery(_query);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		
		}
		return resultado;
	}
	public Connection getConnetion(){
		return this.conn;
	}
}
