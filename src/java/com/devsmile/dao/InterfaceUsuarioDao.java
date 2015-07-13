/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.devsmile.dao;

/**
 *
 * @author kelvi
 */
public interface InterfaceUsuarioDao {
    UsuarioBean buscarUsuario(String nombre);
    void insertarUsuario(UsuarioBean usuario);
    void editarUsuario(UsuarioBean usuario);
    Boolean validateUser(String usuario, String password);
}
