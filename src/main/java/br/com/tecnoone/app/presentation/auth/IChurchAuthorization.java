package br.com.tecnoone.app.presentation.auth;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import br.com.tecnoone.app.domain.entity.Membro;
import br.com.tecnoone.app.exception.UnauthorizedException;

public class IChurchAuthorization extends HandlerInterceptorAdapter {

	private final static Logger LOGGER = LoggerFactory
			.getLogger(IChurchAuthorization.class);

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {

		if(!(handler instanceof HandlerMethod)){
			return super.preHandle(request, response, handler);
		}
		
		HandlerMethod handlerMethod = (HandlerMethod) handler;

		Class<?> clazz = handlerMethod.getBean().getClass();
		LOGGER.debug("Validando permissao de acesso a " + clazz.getName());

		if (!handlerMethod.getBean().getClass().getSimpleName().equals("LoginController")) {

			Membro membroSession = (Membro) request.getSession().getAttribute(
					"membroSession");

			if (membroSession == null) {
				throw new UnauthorizedException("Usuário não autorizado");
			}

		}
		return super.preHandle(request, response, handler);
	}

}
