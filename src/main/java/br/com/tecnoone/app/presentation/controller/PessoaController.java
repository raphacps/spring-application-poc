package br.com.tecnoone.app.presentation.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import br.com.tecnoone.app.domain.entity.Pessoa;
import br.com.tecnoone.app.service.PessoaService;

@Controller
@RequestMapping(value="membro")
@SessionAttributes("pessoa")
public class PessoaController {
	public static final String PREPARAR_ALTERACAO = "membro-alteracao";
	private static final String CADASTRO = "membro-inclusao";
    private static final String PESQUISAR = "membro-pesquisa";
    	
	private static final Logger logger = LoggerFactory.getLogger(PessoaController.class);
	
	@Autowired
	private PessoaService pessoaService;
	
	
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
	
	@RequestMapping(value="/prepararAlteracao", method=RequestMethod.GET)
	public String prepararAlteracao(@ModelAttribute Pessoa pessoa, HttpSession session){
		return PREPARAR_ALTERACAO;
	}
	
	@RequestMapping(value="/salvar", method=RequestMethod.POST)
	public String salvar(@ModelAttribute("membro") @Valid Pessoa pessoa, BindingResult result){
		if(result.hasErrors()){
			return PREPARAR_ALTERACAO;
		}
		pessoaService.update(pessoa);
		
		return "redirect:prepararAlteracao";
	}
}
