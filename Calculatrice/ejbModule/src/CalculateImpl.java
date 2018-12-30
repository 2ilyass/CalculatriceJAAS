package src;

import javax.annotation.security.PermitAll;
import javax.annotation.security.RolesAllowed;
import javax.ejb.Local;
import javax.ejb.Stateless;
import javax.servlet.jsp.tagext.TryCatchFinally;

import org.jboss.security.annotation.SecurityDomain;



@Local(Calculate.class)
@Stateless
public class CalculateImpl implements Calculate {

	@PermitAll
	@Override
	public double add(double a, double b) {
		return a+b;
	}
	
	
	@RolesAllowed({"admin"})
	@Override
	public double sub(double a, double b) {
		return a-b;
	}	

}
