if(room == room_0){
	var num_inst = instance_number(obj_plantacao);
	if(num_inst == 0){ds_grid_clear(ed_dados_plantacoes, -1);} //sem instancia de obj_plantação
	else{
		//tem instância, então devemos salvar seus dados!
		ds_grid_resize(ed_dados_plantacoes, ds_grid_width(ed_dados_plantacoes), num_inst);
		
		//loop pelo grid da instância
		var larguraGrid = ds_grid_width(ed_instancias_plantacoes);
		var alturaGrid = ds_grid_height(ed_instancias_plantacoes);
		var slot = 0;
		
		var xx = 0; repeat(larguraGrid){
			var yy = 0; repeat(alturaGrid){
				var inst = ed_instancias_plantacoes[# xx, yy];
				
				//se tem uma instância na celula, salve seus dados!
				if (inst !=0){
					ed_dados_plantacoes[# 0, slot] = xx;
					ed_dados_plantacoes[# 1, slot] = yy;
					ed_dados_plantacoes[# 2, slot] = inst.tipoPlantacao;
					ed_dados_plantacoes[# 3, slot] = inst.dias;	
					slot++;
				}		
				yy++;
			}
			xx++;
		}
	}
	ds_grid_destroy(ed_instancias_plantacoes);
}

