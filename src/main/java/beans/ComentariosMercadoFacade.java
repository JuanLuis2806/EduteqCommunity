/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package beans;

import entities.ComentariosMercado;
import entities.Mercado;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
@Stateless
public class ComentariosMercadoFacade extends AbstractFacade<ComentariosMercado> {

    @PersistenceContext(unitName = "my_persistence_unit")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ComentariosMercadoFacade() {
        super(ComentariosMercado.class);
    }
    
    public List<ComentariosMercado> obtenerComentarios(Mercado idProducto) {
        List<ComentariosMercado> comentariosMercado;
        Query query = em.createNamedQuery("ComentariosMercado.findById");
        query.setParameter("id", idProducto);
        
        comentariosMercado = query.getResultList();
        
        if (!comentariosMercado.isEmpty()) {
            return comentariosMercado;
        }
        
        return null;
    }

}
