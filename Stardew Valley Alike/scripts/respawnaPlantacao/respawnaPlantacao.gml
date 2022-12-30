// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function respawnaPlantacao(gridX, gridY, tipoDaPlanta, diasPlanta){
	var xx = argument0 * tamCel;
	var yy = argument1 * tamCel;
	//cria a instância
	
	var inst = instance_create_layer(xx+(tamCel/2), yy+(tamCel/2), "Instances", obj_plantacao);
	ed_instancias_plantacoes[# argument0, argument1] = inst;
	show_debug_message("Respawnamos uma: "+ ed_tipos_plantacoes[# 2, argument2])
	
	//dar as características próprias da plantação
	with(inst){
		tipoPlantacao = argument2;
		dias = argument3;
		estagioCrescimentoDuracao = plantacoes.ed_tipos_plantacoes[# 0, tipoPlantacao];
		
	}
	return inst;
}

