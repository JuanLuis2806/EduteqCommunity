/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import entities.Perfil;
import entities.Publicacion;
import entities.PublicacionUsuario;
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
public class PublicacionUsuarioFacade extends AbstractFacade<PublicacionUsuario> {

    @PersistenceContext(unitName = "my_persistence_unit")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public PublicacionUsuarioFacade() {
        super(PublicacionUsuario.class);
    }
    
    public List<PublicacionUsuario> obtenerPublicaciones(Publicacion idPublicacion) {
          TypedQuery<PublicacionUsuario> query = em.createQuery(
                "SELECT pu FROM PublicacionUsuario pu WHERE pu.idPublicacion = :idPublicacion", PublicacionUsuario.class
        );
        query.setParameter("idPublicacion", idPublicacion);
        List<PublicacionUsuario> publicaciones = query.getResultList();

        if (publicaciones.size() > 0) {
            return publicaciones;
        }

        return null;

    }
    
}
