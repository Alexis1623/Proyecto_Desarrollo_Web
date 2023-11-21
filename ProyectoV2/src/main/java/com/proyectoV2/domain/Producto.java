package com.proyectoV2.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import java.io.Serializable;
import java.util.List;
import lombok.Data;

/* 
@Data: Metodo para importar las variables sin programar tanto
*/
@Data
/* 
@Entity: Mapea tablas
*/
@Entity 
@Table(name="producto") 
        
public class Producto implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_producto")
    private long idproducto;
    private String descripcion;
    private String detalle;
    private int precio;
    private int existencias;
    private String rutaImagen;
    private boolean activo;

    
    
}