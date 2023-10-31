package com.Proyecto.serviceimpl;

import com.Proyecto.dao.UsuarioDao;
import com.Proyecto.domain.Usuario;
import com.Proyecto.service.UsuarioService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UsuarioServiceImpl implements UsuarioService{
    @Autowired
    private UsuarioDao usuarioDao;
    @Override
    @Transactional(readOnly = true)
    public List<Usuario> getUsuarios(int edad) {
        var Usuarios=usuarioDao.findAll();
        if (edad > 18) {
            Usuarios.remove(edad>18);
            
        }
        return Usuarios;
    }
    

    @Override
    @Transactional
    public Usuario getUsuario(Usuario usuario) {
       return usuarioDao.findById(usuario.getIdUser()).orElse(null);
    }

    @Override
   
    public void delete(Usuario usuario) {
        usuarioDao.delete(usuario);
    }

    @Override
    public void save(Usuario usuario) {  
    usuarioDao.save(usuario);
    }
    
}
