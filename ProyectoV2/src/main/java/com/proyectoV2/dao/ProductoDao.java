
package com.proyectoV2.dao;

import com.proyectoV2.domain.Producto;
import org.springframework.data.jpa.repository.JpaRepository;


public interface ProductoDao  extends JpaRepository<Producto,Long>{
    
}
