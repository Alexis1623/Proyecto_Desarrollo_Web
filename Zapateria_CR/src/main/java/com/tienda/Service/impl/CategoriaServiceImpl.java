package com.tienda.Service.impl;

import com.tienda.Service.CategoriaService;
import com.tienda.Service.CategoriaService;
import com.tienda.Service.CategoriaService;
import com.tienda.Service.CategoriaService;
import com.tienda.dao.CategoriaDao;
import com.tienda.domain.Categoria;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CategoriaServiceImpl implements CategoriaService {

    @Autowired
    private CategoriaDao categoriaDao;

    @Override
    @Transactional(readOnly = true)

    public List<Categoria> getCategorias(boolean activo) {

        var categorias = categoriaDao.findAll();

        return categorias;
    }

    @Override
    @Transactional(readOnly = true)
    public Categoria getCategoria(Categoria categoria) {
        return categoriaDao.findById(categoria.getIdCategoria()).orElse(null);
    }

    @Override
    public void delete(Categoria categoria) {
        categoriaDao.delete(categoria);
    }

    @Override
    public void save(Categoria categoria) {
        categoriaDao.save(categoria);
    }

}
