package com.tienda.domain;

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
@Table(name = "rol")

public class Rol implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_rol")
    private Long idRol;
    private String nombre;
    @Column(name = "id_usuario")
    private Long idUsuario;

    @OneToMany
    @JoinColumn(name = "id_rol", updatable = false)
    private List<Producto> productos;

}
