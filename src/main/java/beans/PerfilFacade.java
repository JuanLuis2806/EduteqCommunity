/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import entities.Perfil;
import entities.Usuario;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

/**
 *
 * @author juan
 */
@Stateless
public class PerfilFacade extends AbstractFacade<Perfil> {

    @PersistenceContext(unitName = "my_persistence_unit")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public PerfilFacade() {
        super(Perfil.class);
    }

    public Perfil obtenerPerfil(String correo, String contrasena) {
        TypedQuery<Perfil> query = em.createQuery(
                "SELECT p FROM Perfil p INNER JOIN p.idUsuario u WHERE (u.correo = :correo AND u.contrasena= :contrasena) AND u.estatus = 1", Perfil.class
        );
        query.setParameter("correo", correo);
        query.setParameter("contrasena", contrasena);
        List<Perfil> perfiles = query.getResultList();

        if (perfiles.size() > 0) {
            Perfil perfil = perfiles.get(0);
            return perfil;
        }

        return null;

    }

    public Perfil getPerfil(Usuario idUsuario) {
        TypedQuery<Perfil> query = em.createQuery(
                "SELECT p FROM Perfil p WHERE p.idUsuario = :usuario", Perfil.class
        );
        query.setParameter("usuario", idUsuario);
        List<Perfil> perfiles = query.getResultList();

        if (perfiles.size() > 0) {
            Perfil perfil = perfiles.get(0);
            return perfil;
        }

        return null;

    }
    
}
