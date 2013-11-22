package br.com.tecnoone.app.presentation.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="cadastro")
public class FuncionalidadeController {
    private static final Logger logger = LoggerFactory.getLogger(FuncionalidadeController.class);
    
    private static final String CADASTRO = "cadastro-inclusao";
    private static final String PESQUISAR = "cadastro-pesquisa";
    
    @RequestMapping(value = "/prepararInclusao", method = RequestMethod.GET)
	public String prepararInclusao() {
		logger.info("acessando tela de inclusão ");
		return CADASTRO;
	}
    
    @RequestMapping(value="/pesquisar")
    public String pesquisar(){
    	return PESQUISAR;
    }
}
