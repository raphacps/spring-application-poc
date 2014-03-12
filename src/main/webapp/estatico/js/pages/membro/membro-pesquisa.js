$(document).ready(function() {
	page.init();
});
var tableResult;
var page = {
	init: function(){
		page.limparFormulario();
	},
	
	exibeResultado : function(){
		page.esconderFormulario();
		
		if(tableResult){
			tableResult.fnDestroy();
		}
		
		tableResult = $('#membroTable').dataTable({
	    	"oLanguage": application.DATATABLE_I18N_CONFIGURATIONS,
	    	"bProcessing": false,
	    	"bRetrieve": true,
	    	"bRemove": true,
	        "sAjaxSource": 'consultarMembros',
	        "fnServerParams": function ( aoData ) {
	        	$($("form").serializeArray()).each(function(){
					aoData.push( {"name": this.name, "value": this.value} );
				});
	        },
	        "aoColumns": [
	                      { "mData": "nome" },
	                      { "mData": "idade" },
	                      { "mData": "cpf" },
	                      { "mData": "rg" },
	                      { "mData": null, "mRender": function( data, type, full) {
														return "<div class='visible-md visible-lg hidden-sm hidden-xs action-buttons'>" +
																	"<a class='green'  href='prepararAlteracao?id=" + full.id + "'>" +
																		"<i class='icon-pencil bigger-130'></i>" +
																	"</a>" +
															
																	"<a class='red' href='javascript:page.removerMembro(" + full.id + ")'>" +
																		"<i class='icon-trash bigger-130'></i>" +
																	"</a>" +
																"</div>";
							                     	  }
						  }
	                  ]
	    });
	},
	
	limparFormulario : function(){
		$('#tableResult').hide();
	},
	
	removerMembro : function(id){
		var result = $.ajax({
					   type: "POST",
					   url: "removerMembro",
					   data: { id: id}
					 });
		  
		result.done(function( msg ) {
		    alert( "Data Saved: " + msg );
		});
	},
	
	esconderFormulario : function(){
		$('#corpoFormulario').toggle('slow');
	}
}

$( "#btnPesquisar" ).click(function() {
  $( "#tableResult" ).show("slow",page.exibeResultado);
});

$( "#cabecalhoFormulario" ).click(function() {
	page.esconderFormulario();
});

$( "#btnLimpar" ).click(page.limparFormulario);


