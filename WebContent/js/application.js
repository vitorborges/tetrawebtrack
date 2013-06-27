$.fn.dataTableExt.oPagination.iTweenTime = 50;

$.fn.dataTableExt.oPagination.scrolling = {
	"fnInit": function ( oSettings, nPaging, fnCallbackDraw )
	{
		var nPrevious = document.createElement( 'div' );
		var nNext = document.createElement( 'div' );
		if ( oSettings.sTableId !== '' )
		{
			nPaging.setAttribute( 'id', oSettings.sTableId+'_paginate' );
			nPrevious.setAttribute( 'id', oSettings.sTableId+'_previous' );
			nNext.setAttribute( 'id', oSettings.sTableId+'_next' );
		}
		nPrevious.className = "paginate_disabled_previous";
		nNext.className = "paginate_disabled_next";
		nPrevious.title = oSettings.oLanguage.oPaginate.sPrevious;
		nNext.title = oSettings.oLanguage.oPaginate.sNext;
		nPaging.appendChild( nPrevious );
		nPaging.appendChild( nNext );
		$(nPrevious).click( function() {
			if ( typeof oSettings.iPagingLoopStart != 'undefined' && oSettings.iPagingLoopStart != -1 )
			{
				return;
			}
			oSettings.iPagingLoopStart = oSettings._iDisplayStart;
			oSettings.iPagingEnd = oSettings._iDisplayStart - oSettings._iDisplayLength;
			if ( oSettings.iPagingEnd < 0 )
			{
			  oSettings.iPagingEnd = 0;
			}
			var iTween = $.fn.dataTableExt.oPagination.iTweenTime;
			var innerLoop = function () {
				if ( oSettings.iPagingLoopStart > oSettings.iPagingEnd ) {
					oSettings.iPagingLoopStart--;
					oSettings._iDisplayStart = oSettings.iPagingLoopStart;
					fnCallbackDraw( oSettings );
					setTimeout( function() { innerLoop(); }, iTween );
				} else {
					oSettings.iPagingLoopStart = -1;
				}
			};
			innerLoop();
		} );
		$(nNext).click( function() {
			if ( typeof oSettings.iPagingLoopStart != 'undefined' && oSettings.iPagingLoopStart != -1 )
			{
				return;
			}
			oSettings.iPagingLoopStart = oSettings._iDisplayStart;
			if ( oSettings._iDisplayStart + oSettings._iDisplayLength < oSettings.fnRecordsDisplay() )
			{
				oSettings.iPagingEnd = oSettings._iDisplayStart + oSettings._iDisplayLength;
			}
			var iTween = $.fn.dataTableExt.oPagination.iTweenTime;
			var innerLoop = function () {
				if ( oSettings.iPagingLoopStart < oSettings.iPagingEnd ) {
					oSettings.iPagingLoopStart++;
					oSettings._iDisplayStart = oSettings.iPagingLoopStart;
					fnCallbackDraw( oSettings );
					setTimeout( function() { innerLoop(); }, iTween );
				} else {
					oSettings.iPagingLoopStart = -1;
				}
			};
			innerLoop();
		} );
		$(nPrevious).bind( 'selectstart', function () { return false; } );
		$(nNext).bind( 'selectstart', function () { return false; } );
	},
	"fnUpdate": function ( oSettings, fnCallbackDraw )
	{
		if ( !oSettings.aanFeatures.p )
		{
			return;
		}
		var an = oSettings.aanFeatures.p;
		for ( var i=0, iLen=an.length ; i<iLen ; i++ )
		{
			if ( an[i].childNodes.length !== 0 )
			{
				an[i].childNodes[0].className =
					( oSettings._iDisplayStart === 0 ) ?
					oSettings.oClasses.sPagePrevDisabled : oSettings.oClasses.sPagePrevEnabled;
				an[i].childNodes[1].className =
					( oSettings.fnDisplayEnd() == oSettings.fnRecordsDisplay() ) ?
					oSettings.oClasses.sPageNextDisabled : oSettings.oClasses.sPageNextEnabled;
			}
		}
	}
}

$(document).ready(function() {
	$('#tabela').dataTable({
		"sPaginationType": "scrolling",
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
				"sNext":     "   Seguinte",
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