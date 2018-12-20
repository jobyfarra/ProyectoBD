/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

/**
 *
 * @author Joby
 */
public class Usuario {
    private String nickname;
    private String nombre;
    private String clave;
    private String tipo_user;

    public Usuario(String nickname, String nombre, String clave, String tipo_user) {
        this.nickname = nickname;
        this.nombre = nombre;
        this.clave = clave;
        this.tipo_user = tipo_user;
    }
    public Usuario(){
        this.nickname = null;
        this.nombre = null;
        this.clave = null;
        this.tipo_user = null;
    }
    
    
    
    
    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getTipo_user() {
        return tipo_user;
    }

    public void setTipo_user(String tipo_user) {
        this.tipo_user = tipo_user;
    }

    @Override
    public String toString() {
        return "Usuario{" + "nickname=" + nickname + ", nombre=" + nombre + ", tipo_user=" + tipo_user + '}';
    }
    
    
    
    
    
}
