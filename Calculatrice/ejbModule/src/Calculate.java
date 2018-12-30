package src;

import javax.annotation.security.PermitAll;
import javax.annotation.security.RolesAllowed;
import javax.ejb.Local;
import javax.ejb.Stateless;

import org.jboss.security.annotation.SecurityDomain;


@SecurityDomain("other2")
public interface Calculate {
	
	
	double add(double a, double b);
	
	
    double sub(double a, double b);

}
