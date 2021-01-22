
package beans;
import entities.Usuario;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

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
    
    public Usuario login(String correo, String contrasena) {
        Usuario usuario = new Usuario();
        String sql = "SELECT u FROM Usuario u WHERE u.correo = :correo AND u.contrasena= :contrasena";
        Query query = em.createQuery(sql);
        query.setParameter("correo", correo);
        query.setParameter("contrasena", contrasena);

        List<Usuario> usuarios = query.getResultList();
        
        if (usuarios.size() == 1) {
            return usuarios.get(0);
        }
        return null;
    }
}
