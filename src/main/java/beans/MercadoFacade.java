/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import entities.Mercado;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author juan
 */
@Stateless
public class MercadoFacade extends AbstractFacade<Mercado> {

    @PersistenceContext(unitName = "my_persistence_unit")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MercadoFacade() {
        super(Mercado.class);
    }

    public List<Mercado> findAllProducts() {
        List<Mercado> mercado;
        Query query = em.createNamedQuery("Mercado.findAll");
        mercado = query.getResultList();

        if (0 < mercado.size()) {
            return mercado;
        }

        return null;
    }

}
