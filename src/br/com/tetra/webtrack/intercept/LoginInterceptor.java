package br.com.tetra.webtrack.intercept;

import br.com.caelum.vraptor.InterceptionException;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;
import br.com.caelum.vraptor.resource.ResourceMethod;
import br.com.tetra.webtrack.annotation.Public;
import br.com.tetra.webtrack.controller.LoginController;
import br.com.tetra.webtrack.session.UserSession;

@Intercepts
public class LoginInterceptor implements Interceptor {

	private Result result;
	private UserSession userSession;

	public LoginInterceptor(Result result, UserSession userSession) {
		this.result = result;
		this.userSession = userSession;
	}

	public boolean accepts(ResourceMethod method) {
		return !(method.getMethod().isAnnotationPresent(Public.class) || method.getResource().getType().isAnnotationPresent(Public.class));
	}

	@Override
	public void intercept(InterceptorStack stack, ResourceMethod method,
			Object resourceInstance) throws InterceptionException {
		
		if (userSession.isLogged()) {
			stack.next(method, resourceInstance);
		} else {
			result.redirectTo(LoginController.class).login();
		}
		
	}
}
