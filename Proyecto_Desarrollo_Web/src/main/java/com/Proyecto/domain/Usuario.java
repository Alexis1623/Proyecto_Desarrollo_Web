package com.Proyecto.domain;

import jakarta.persistence.*;
import java.io.Serializable;
import lombok.Data;
import java.time.*;

@Data //se crea metodos get y set. Guardar datos
@Entity //Se crea una tabla entidad relacion BD
@Table(name = "usuarios")

public class Usuario implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_user")
    private Long idUser;
    private String usr_nombre_usr;
    private String usr_password;
    private String usr_nombre;
    private String usr_apellidos;
    private String usr_provincia;
    private String usr_direccion;
    private int edad;
    private String usr_email;
    private LocalDate usr_fech_na;

    public Usuario() {

    }

    public Usuario(String usr_nombre_usr, String usr_password, String usr_nombre, String usr_apellidos, String usr_provincia, String usr_direccion, int edad, String usr_email, LocalDate usr_fech_na) {
        this.usr_nombre_usr = usr_nombre_usr;
        this.usr_password = usr_password;
        this.usr_nombre = usr_nombre;
        this.usr_apellidos = usr_apellidos;
        this.usr_provincia = usr_provincia;
        this.usr_direccion = usr_direccion;
        this.edad = edad;
        this.usr_email = usr_email;
        this.usr_fech_na = usr_fech_na;
    }

}
