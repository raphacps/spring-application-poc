package br.com.tecnoone.app.presentation.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import br.com.tecnoone.app.domain.entity.Pessoa;
import br.com.tecnoone.app.service.PessoaService;

@Controller
@RequestMapping(value="pessoa")
@SessionAttributes("pessoa")
public class PessoaController {
	public static final String PREPARAR_ALTERACAO = "usuario-alteracao";
	
	
	@Autowired
	private PessoaService pessoaService;
	
	@RequestMapping(value="/prepararAlteracao", method=RequestMethod.GET)
	public String prepararAlteracao(@ModelAttribute Pessoa pessoa, HttpSession session){
		return PREPARAR_ALTERACAO;
	}
	
	@RequestMapping(value="/salvar", method=RequestMethod.POST)
	public String salvar(@ModelAttribute Pessoa pessoa){
		
		pessoaService.persist(pessoa);
		
		return "redirect:prepararAlteracao";
	}
}
