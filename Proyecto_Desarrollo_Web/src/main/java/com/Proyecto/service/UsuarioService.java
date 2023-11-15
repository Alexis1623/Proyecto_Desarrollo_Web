package com.Proyecto.service;

import com.Proyecto.domain.Usuario;
import java.util.List;

public interface UsuarioService {
    
    public List<Usuario> getUsuarios(int edad);
    public Usuario getUsuario(Usuario usuario);
    public void delete(Usuario usuario);
    public void save(Usuario usuario);
}
