	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
			<form:form action="cadastro/prepararInclusao" method="POST" role="form" modelAttribute="usuario">
			<div class="panel panel-default less-shadow">
				<div class="panel-body">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class='panel-title'>
								<spring:message code="label.incluir" var="labelIncluir" />
								<strong>Funcionalide XPTO - </strong>Cadastro<span title="${labelIncluir}" class="glyphicon glyphicon-file pull-right"></span>
							</h4>
						</div>
						<div class="panel-body">
	
							<div class="form-group">
								<label for="nome">Nome:</label> 
								<input class="form-control" type="text" name="nome" id="nome" />
							</div>
							<div class="form-group row">
								<div class="col-md-3">
									<label for="idade">Idade:</label> 
									<input class="form-control"	type="number" name="idade" id="idade" />
								</div>
								<div class="col-md-9">
									<label for="telefone">Telefone:</label> 
									<input class="form-control" type="tel" name="telefone" id="telefone" />
								</div>
							</div>
	
							<fieldset>
								<legend>Endereço</legend>
								<div class="form-group row">
									<div class="col-md-2">
										<label for="cep">CEP:</label> 
										<input class="form-control" type="text" name="cep" id="cep" />
									</div>
									<div class="form-group col-md-10">
										<label for="endereco">Rua:</label> 
										<input class="form-control" type="text" name="rua" id="rua" disabled/>
									</div>
								</div>
								<div class="form-group row">
									<div class="col-md-6">
										<label for="endereco">Bairro:</label> 
										<input class="form-control" type="text" name="bairro" id="bairro" disabled/>
									</div>
									<div class="col-md-4">
										<label for="endereco">Complemento:</label> 
										<input class="form-control" type="text" name="complemento" id="complemento" />
									</div>
									<div class="col-md-2">
										<label for="endereco">Estado:</label> 
										<input class="form-control" type="text" name="estado" id="estado" disabled/>
									</div>
								</div>
							</fieldset>
	
						</div>
						<div class="panel-footer text-right">
							<spring:message code="label.limpar.campos.formulario" var="limparCampos" />
							<button title="${limparCampos}" type="reset" class="btn btn-default">
								<span class="glyphicon glyphicon-remove"></span>&nbsp;Limpar
							</button>
							<button type="submit" class="btn btn-primary">
								<span class="glyphicon glyphicon-ok"></span>&nbsp;Salvar
							</button>
						</div>
					</div>
				</div>
			</div>
				
			<div class="panel panel-default less-shadow">
				<div class="panel-body">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class='panel-title'>Minha tabela exemplo<span class="glyphicon glyphicon-th pull-right"></span></h4>
						</div>
						<table id="example" class='table table-striped table-bordered table-hover'>
						    <thead>
						        <tr>
						            <th>Column 1</th>
						            <th>Column 2</th>
						            <th>etc</th>
						        </tr>
						    </thead>
						    <tbody>
						        <tr>
						            <td>Row 1 Data 1</td>
						            <td>Row 1 Data 2</td>
						            <td>etc</td>
						        </tr>
						        <tr>
						            <td>Row 2 Data 1</td>
						            <td>Row 2 Data 2</td>
						            <td>etc</td>
						        </tr>
						    </tbody>
						</table>
					</div>
				</div>
			</div>	
			
			<div class="panel panel-default less-shadow">
				<div class="panel-body">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class='panel-title'>Minha tabela exemplo<span class="glyphicon glyphicon-th pull-right"></span></h4>
						</div>
							<table  id="meuTeste" class='table table-striped table-bordered table-hover'>
							    <thead>
							        <tr>
							            <th>Column 1</th>
							            <th>Column 2</th>
							            <th>etc</th>
							        </tr>
							    </thead>
							    <tbody>
							        <tr>
							            <td>Row 1 Data 1</td>
							            <td>Row 1 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 2 Data 1</td>
							            <td>Row 2 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 1 Data 1</td>
							            <td>Row 1 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 2 Data 1</td>
							            <td>Row 2 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 1 Data 1</td>
							            <td>Row 1 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 2 Data 1</td>
							            <td>Row 2 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 1 Data 1</td>
							            <td>Row 1 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 2 Data 1</td>
							            <td>Row 2 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 1 Data 1</td>
							            <td>Row 1 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 2 Data 1</td>
							            <td>Row 2 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 1 Data 1</td>
							            <td>Row 1 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 2 Data 1</td>
							            <td>Row 2 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 1 Data 1</td>
							            <td>Row 1 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 2 Data 1</td>
							            <td>Row 2 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 1 Data 1</td>
							            <td>Row 1 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 2 Data 1</td>
							            <td>Row 2 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 1 Data 1</td>
							            <td>Row 1 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 2 Data 1</td>
							            <td>Row 2 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 1 Data 1</td>
							            <td>Row 1 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 2 Data 1</td>
							            <td>Row 2 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 1 Data 1</td>
							            <td>Row 1 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 2 Data 1</td>
							            <td>Row 2 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 1 Data 1</td>
							            <td>Row 1 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 2 Data 1</td>
							            <td>Row 2 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 1 Data 1</td>
							            <td>Row 1 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 2 Data 1</td>
							            <td>Row 2 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 1 Data 1</td>
							            <td>Row 1 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 2 Data 1</td>
							            <td>Row 2 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 1 Data 1</td>
							            <td>Row 1 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 2 Data 1</td>
							            <td>Row 2 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 1 Data 1</td>
							            <td>Row 1 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 2 Data 1</td>
							            <td>Row 2 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 1 Data 1</td>
							            <td>Row 1 Data 2</td>
							            <td>etc</td>
							        </tr>
							        <tr>
							            <td>Row 2 Data 1</td>
							            <td>Row 2 Data 2</td>
							            <td>etc</td>
							        </tr>
							    </tbody>
							</table>
						</div>
					</div>
				</div>
		</form:form>
	  