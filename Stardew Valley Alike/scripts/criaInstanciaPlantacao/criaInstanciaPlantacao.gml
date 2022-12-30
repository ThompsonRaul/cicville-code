// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function criaInstanciaPlantacao(x, y, tipo_plantacao){
	
	var tc = plantacoes.tamCel;
	var gx = argument0 div tc;
	var gy = argument1 div tc;
	var i_grid = plantacoes.ed_instancias_plantacoes;
	var cel = i_grid[# gx, gy];
	
	if(!cel){
		var xx = gx*tc;
		var yy = gy*tc;
	
		//checa solo
	
		var lay_id = layer_get_id("T_Solo");
		var map_id = layer_tilemap_get_id(lay_id);
		var solo = tilemap_get_at_pixel(map_id, argument0, argument1);
	
		if(!solo){
			show_debug_message("Nao tem solo aq");
			return false;
		}else{show_debug_message("Tem solo aq");}
	
		var inst = instance_create_layer(xx+(tc/2), yy+(tc/2), "Instances", obj_plantacao);
		i_grid[# gx, gy] = inst;
	
		with(inst){
			tipoPlantacao = argument2; 
			estagioCrescimentoDuracao = plantacoes.ed_tipos_plantacoes[# 0, tipoPlantacao]
		}
	
		return inst;
	}else {
		show_debug_message("Já tem coisa ai");
		return false;
	}
}