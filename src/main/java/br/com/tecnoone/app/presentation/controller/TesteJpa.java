package br.com.tecnoone.app.presentation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.tecnoone.app.dao.Dao;
import br.com.tecnoone.app.domain.entity.AppEntity;
import br.com.tecnoone.app.domain.entity.Igreja;

@Controller
public class TesteJpa {
	@Autowired
	private Dao<AppEntity> dao;

	@RequestMapping(value = "/testeServlet", method = RequestMethod.GET)
	@Transactional
	public void testeServlet() {

		/*Usuario usuario = new Usuario();
		usuario.setLoginName("Raphael");
		usuario.setSenha("123456");
		//dao.create(usuario);

		Igreja igreja = new Igreja();
		igreja.setDenominacao("Nova Denominação");
		igreja.setNome("Novo nome de Igreja");
		igreja.setCnpj("12345678954");
		//dao.create(igreja);


		Membro membro = new Membro();
		membro.setCpf("123456789");
		membro.setIdade("31");
		membro.setNome("Raphael soares");
		membro.setUsuario(usuario);
		membro.setIgreja(igreja);
		dao.create(membro);
		
		Igreja igrejaPai = new Igreja();
		igrejaPai.setDenominacao("El elion");
		igrejaPai.setNome("Igreja Matriz");
		igrejaPai.setCnpj("12345678954");
		igrejaPai.addCongrecacoes(igreja);
		dao.create(igrejaPai);

		Departamento departamento = new Departamento();
		departamento.setDescricao("Louvor");
		dao.create(departamento);

		IgrejaDepartamento igrejaDepartamento = new IgrejaDepartamento();
		//IgrejaDepartamentoPK igrejaDepartamentoPK = new IgrejaDepartamentoPK();
		igrejaDepartamento.setDepartamento(departamento);
		igrejaDepartamento.setIgreja(igrejaPai);
		//igrejaDepartamento.setPk(igrejaDepartamentoPK);

		DataHoraInclusaoAtualizacao dataHora = new DataHoraInclusaoAtualizacao();
		Calendar cal = Calendar.getInstance();
		dataHora.setDataInclusao(cal);
		dataHora.setDataAtualizacao(cal);
		igrejaDepartamento.setDataHora(dataHora);
		dao.create(igrejaDepartamento);*/

		Igreja myIgreja = new Igreja();
		myIgreja.setId(2l);
		myIgreja = (Igreja) dao.load(myIgreja);

		//System.out.println(myIgreja.getDepartamentos().get(0).getDescricao());
		System.out.println(myIgreja.getMembros());
		System.out.println("testado!");
	}
}
