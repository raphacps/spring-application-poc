package br.com.tecnoone.app.presentation.controller;

import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.SimpleMappingExceptionResolver;

import br.com.tecnoone.app.exception.UnauthorizedException;

public class HandlerExceptionResolver extends SimpleMappingExceptionResolver {
	@Override
	public String buildLogMessage(Exception e, HttpServletRequest req) {
		return "MVC exception: " + e.getLocalizedMessage();
	}

	@Override
	protected ModelAndView doResolveException(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception exception) {
		// Call super method to get the ModelAndView
		ModelAndView mav = super.doResolveException(request, response, handler,	exception);
				
		if(exception instanceof UnauthorizedException){
			doResolverUnauthorizedException(mav, exception);
		}
		
		mav.addObject("url", request.getRequestURL());
		mav.addObject("uuid", UUID.randomUUID());
		return mav;
	}
	
	private void doResolverUnauthorizedException(ModelAndView mav, Exception exception){
		mav.addObject("mensagem", exception.getMessage());
	}
}
