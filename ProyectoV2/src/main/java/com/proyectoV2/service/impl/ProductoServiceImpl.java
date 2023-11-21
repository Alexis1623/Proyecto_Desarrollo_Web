package com.proyectoV2.service.impl;

import com.proyectoV2.dao.ProductoDao;
import com.proyectoV2.domain.Producto;
import com.proyectoV2.service.ProductoService;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProductoServiceImpl implements ProductoService {

    @Autowired
    private ProductoDao productoDao;

    @Override
    @Transactional(readOnly = true)

    public List<Producto> getProductos(boolean activo) {

        var productos = productoDao.findAll();

        return productos;
    }

    @Override
    @Transactional(readOnly = true)
    public Producto getProducto(Producto producto) {
        return productoDao.findById(producto.getIdproducto()).orElse(null);
    }

    @Override
    public void delete(Producto producto) {
        productoDao.delete(producto);
    }

    @Override
    public void save(Producto producto) {
        productoDao.save(producto);
    }

}
