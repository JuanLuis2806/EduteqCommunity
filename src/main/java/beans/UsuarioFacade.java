
package beans;
import entities.Usuario;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

@Stateless
public class UsuarioFacade extends AbstractFacade<Usuario> {

    @PersistenceContext(unitName = "my_persistence_unit")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UsuarioFacade() {
        super(Usuario.class);
    }

    public Usuario findByCorreo(String correo){
        List<Usuario> usuarios;
        Query query = em.createNamedQuery("Usuario.findByCorreo");
        query.setParameter("correo", correo);
        usuarios = query.getResultList();
        
        if (usuarios.size() > 0) {
            return usuarios.get(0);
}
        return null;
        
    }
    
    public Usuario findByMatricula(String matricula){
        List<Usuario> usuarios;
        Query query = em.createNamedQuery("Usuario.findByMatricula");
        query.setParameter("matricula", matricula);
        usuarios = query.getResultList();
        
        if (usuarios.size() > 0) {
            return usuarios.get(0);
        }
        return null;
        
    }
}
