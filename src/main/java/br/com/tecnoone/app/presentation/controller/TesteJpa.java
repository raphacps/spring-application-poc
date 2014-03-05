package br.com.tecnoone.app.presentation.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.tecnoone.app.dao.Dao;
import br.com.tecnoone.app.domain.entity.AppEntity;
import br.com.tecnoone.app.domain.entity.Cargo;
import br.com.tecnoone.app.domain.entity.Departamento;
import br.com.tecnoone.app.domain.entity.Igreja;
import br.com.tecnoone.app.domain.entity.Membro;
import br.com.tecnoone.app.domain.entity.Telefone;
import br.com.tecnoone.app.domain.entity.Usuario;

@Controller
public class TesteJpa {
	@Autowired
	private Dao<AppEntity> dao;

	@RequestMapping(value = "/testeServlet", method = RequestMethod.GET)
	@Transactional
	public void testeServlet() {

		Usuario usuario = new Usuario();
		usuario.setLoginName("Raphael");
		usuario.setSenha("123456");
		//dao.create(usuario);

		Igreja igreja = new Igreja();
		igreja.setDenominacao("Nova Denominação");
		igreja.setNome("Novo nome de Igreja");
		igreja.setCnpj("12345678954");
		dao.create(igreja);

		
		Telefone tel = new Telefone();
		tel.setDdd(21);
		tel.setNumero("27241412");
		
		Membro membro = new Membro();
		membro.setCpf("123456789");
		membro.setIdade("31");
		membro.setNome("Raphael soares");
		membro.setUsuario(usuario);
		membro.setIgreja(igreja);
		membro.addTelefone(tel);
		dao.create(membro);
		
		Telefone telefone = new Telefone();
		telefone.setNumero("1234");
		telefone.setDdd(44);
		telefone.setId(1l);
		membro.setTelefones(new ArrayList<Telefone>());
		membro.addTelefone(telefone);
		dao.update(membro);
		
		membro = new Membro();
		membro.setCpf("9875646");
		membro.setIdade("29");
		membro.setNome("Ana Lucia");
		//membro.setUsuario(usuario);
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
		
		Cargo cargo = new Cargo();
		cargo.setDescricao("primeiro cargo");
		cargo.setDepartamento(departamento);
		
		departamento.addCargo(cargo);
		departamento.setIgreja(igrejaPai);
		
		dao.create(departamento);
		
		departamento = (Departamento) dao.load(departamento);
		
		departamento.setDescricao("Louvor alterado");
		
		Cargo cargon = departamento.getCargos().get(0);
		cargon.setDescricao("primeiro cargo alterado");
		
		cargo = new Cargo();
		cargo.setDescricao("segundo cargo");
		cargo.setDepartamento(departamento);		
		departamento.addCargo(cargo);
		
		
		
		dao.update(departamento);

		/*Igreja myIgreja = new Igreja();
		myIgreja.setId(2l);
		myIgreja = (Igreja) dao.load(myIgreja);

		//System.out.println(myIgreja.getDepartamentos().get(0).getDescricao());
		System.out.println(myIgreja.getMembros());*/
		System.out.println("testado!");
	}
}
