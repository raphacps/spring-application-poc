package br.com.tecnoone.app.presentation.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.tecnoone.app.domain.entity.Membro;
import br.com.tecnoone.app.service.core.CrudService;

@Controller
@RequestMapping(value="/membro")
@SessionAttributes("membroSession")
public class MembroController {
	public static final String HOME = "membro-home";
	public static final String PREPARAR_ALTERACAO = "membro-alteracao";
	private static final String CADASTRO = "membro-inclusao";
    private static final String PREPARAR_CONSULTA = "membro-consulta";
    	
	private static final Logger logger = LoggerFactory.getLogger(MembroController.class);
	
	@Autowired
	@Qualifier("genericServiceImpl")
	private CrudService<Membro> membroService;
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Model model) {
		return HOME;
	}
	
    @RequestMapping(value = "/prepararInclusao", method = RequestMethod.GET)
	public String prepararInclusao(Model model) {
    	model.addAttribute("membro", new Membro());
		logger.info("acessando tela de inclusão ");
		return CADASTRO;
	}
    
    @RequestMapping(value="/salvar", method=RequestMethod.POST)
	public String salvar(@ModelAttribute("membro") @Valid Membro membro, BindingResult result, Model model, RedirectAttributes redirectAttrs){
		if(result.hasErrors()){
			return PREPARAR_ALTERACAO;
		}		
		membroService.create(membro);
		redirectAttrs.addFlashAttribute("mensagem","Salvo com sucesso!");
		return "redirect:prepararInclusao";
	}
    
    @RequestMapping(value="/prepararAlteracao", method=RequestMethod.GET)
	public String prepararAlteracao(ModelMap model){
		
		return PREPARAR_ALTERACAO;
	}	
    
    @RequestMapping(value="/prepararConsulta", method=RequestMethod.GET)
    public String prepararConsulta(Membro membro){
    	return PREPARAR_CONSULTA;
    }
    
    @RequestMapping(value="/consultar", method=RequestMethod.GET)
    @ResponseBody
    public List<Membro> consultar(){
    	return membroService.findAll(Membro.class);
    }
    
    @RequestMapping(value="/consultarMembros", method=RequestMethod.GET)
    @ResponseBody
    public Map<String,List<Membro>> consultarMembros(){
    	Map<String,List<Membro>> mem = new HashMap<String, List<Membro>>();
    	mem.put("aaData", membroService.findAll(Membro.class));
    	return mem;
    }
	
	
	
	@RequestMapping(value="/alterar", method=RequestMethod.POST)
	public String alterar(@ModelAttribute("membro") @Valid Membro membro, BindingResult result, ModelMap model, RedirectAttributes redirectAttrs){
		if(result.hasErrors()){
			return PREPARAR_ALTERACAO;
		}
		
		redirectAttrs.addFlashAttribute("mensagem","Alterado com sucesso!");
		return "redirect:prepararAlteracao";
	}
}
