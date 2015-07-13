/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.devsmile.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.devsmile.sql.*;
/**
 *
 * @author kelvi
 */
public class ImUsuarioDao implements InterfaceUsuarioDao {

    @Override
    public UsuarioBean buscarUsuario(String nombre) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void insertarUsuario(UsuarioBean usuario) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void editarUsuario(UsuarioBean usuario) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Boolean validateUser(String usuario, String password) {
        boolean status = false;
		try {
			Connection conn = new MysqlConnect().getConnetion();
			PreparedStatement prstatement = conn.prepareStatement("select id from usuarios where usuario = ? and password = ?");
			ResultSet rs;
			prstatement.setString(1,usuario);
			prstatement.setString(2, password);
			rs = prstatement.executeQuery();
			status = rs.next();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return status;
    }
    
}
