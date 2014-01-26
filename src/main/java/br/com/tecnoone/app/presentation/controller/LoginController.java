package br.com.tecnoone.app.presentation.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import br.com.tecnoone.app.domain.entity.Usuario;
import br.com.tecnoone.app.service.MembroService;
import br.com.tecnoone.app.service.UsuarioService;

@Controller
@SessionAttributes("membroSession")
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private UsuarioService usuarioService;
	
	@Autowired
	private MembroService membroService;
	
	@RequestMapping(value = {"/login","/"}, method = RequestMethod.GET)
	public String login() {
		logger.info("acessando tela de login");		
		return "signin";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String login(HttpSession session) {
		logger.info("Terminando a sessão do usuário");
		session.invalidate();
		return "redirect:/login";
	}
		
	@RequestMapping(value = "/verificaLogin", method = RequestMethod.POST)
	public String validaLogin(@RequestParam(value="login") String loginName, 
							  @RequestParam String senha, Model model, Usuario loginUsuario) {		
		
		loginUsuario.setLoginName(loginName);
		loginUsuario = usuarioService.loadByLoginName(loginUsuario);
	
		model.addAttribute("membroSession", membroService.loadBy(loginUsuario));
		
		return "redirect:/home";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() {
		return "home";
	}
}
