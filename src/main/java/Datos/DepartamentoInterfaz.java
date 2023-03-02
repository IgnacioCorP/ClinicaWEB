/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Dominio.Departamento;
import java.util.List;

/**
 *
 * @author Alumno Mañana
 */
public interface DepartamentoInterfaz {

    public List<Departamento> findAllDepartamentos();

    public Departamento findDepartamentoByID(Departamento departamento);

    public Departamento findDepartamentoByNombre(Departamento departamento);

    public void insertDepartamento(Departamento departamento);

    public void updateDepartamento(Departamento departamento);

    public List<Departamento> buscadorDepartamento(String bus);

    public void deleteDepartamento(Departamento departamento);
}
