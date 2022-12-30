// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function criaTipoPlantacao(estagioCrescimentoDuracao, custo){
	var numArg = argument_count;
	
	if(!ds_exists(ed_tipos_plantacoes, ds_type_grid)){
		ed_tipos_plantacoes = ds_grid_create(numArg, 1);
		var altura = 1;
	}
	else{
		var altura = ds_grid_height(ed_tipos_plantacoes);
		ds_grid_resize(ed_tipos_plantacoes, numArg, ++altura);
		
	}
	var yy = altura - 1;
	var i = 0;
	repeat(numArg){
	ed_tipos_plantacoes[# i, yy] = argument[i];
	i++;
	}
}