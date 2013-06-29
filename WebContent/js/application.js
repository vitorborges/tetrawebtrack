$(document).ready(function() {
	$('#tabela').dataTable({
		"sDom": 'ftp',
		"aoColumnDefs": [
		{
		    aTargets: [0],
		    fnRender: function (o, v) {
		        return '<input type="checkbox" id="someCheckbox" name="someCheckbox" />';
		    },
		    // sClass: 'tableCell'
		}]
		"oLanguage": {
			"sProcessing":   "A processar...",
			"sLengthMenu":   "Mostrar _MENU_ registros",
			"sZeroRecords":  "Não foram encontrados resultados",
			"sInfo":         "Mostrando de _START_ até _END_ de _TOTAL_ registos",
			"sInfoEmpty":    "Mostrando de 0 até 0 de 0 registros",
			"sInfoFiltered": "(filtrado de _MAX_ registos no total)",
			"sInfoPostFix":  "",
			"sSearch":       "",
			"sUrl":          "",
			"oPaginate": {
				"sFirst":    "Primeiro",
				"sPrevious": "Anterior",
				"sNext":     "Seguinte",
				"sLast":     "Último"
			}
		}
	})
	.columnFilter({
		aoColumns: [
		null,
		{ type: "select" },
		{ type: "select" },
		{ type: "select" },
		{ type: "select" },
		{ type: "select" },
		{ type: "select" },
		{ type: "select" },
		]
	});
});