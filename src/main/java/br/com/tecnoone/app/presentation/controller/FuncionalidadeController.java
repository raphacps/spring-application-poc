package br.com.tecnoone.app.presentation.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.tecnoone.app.domain.entity.Pessoa;

@Controller
@RequestMapping(value="membro")
public class FuncionalidadeController {
    private static final Logger logger = LoggerFactory.getLogger(FuncionalidadeController.class);
    
    private static final String CADASTRO = "membro-inclusao";
    private static final String PESQUISAR = "membro-pesquisa";
    
    @RequestMapping(value = "/prepararInclusao", method = RequestMethod.GET)
	public String prepararInclusao(Model model) {
    	model.addAttribute("membro", new Pessoa());
		logger.info("acessando tela de inclusão ");
		return CADASTRO;
	}
    
    @RequestMapping(value="/pesquisar")
    public String pesquisar(){
    	return PESQUISAR;
    }
}
