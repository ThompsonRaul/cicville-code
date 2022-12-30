if(room == room_0){
	ed_instancias_plantacoes = ds_grid_create(room_width div tamCel, room_height div tamCel);
	ds_grid_clear(ed_instancias_plantacoes, 0);
	
	//Respawnar a plantação
	
	if(ed_dados_plantacoes[# 0, 0] != -1){
		var num_inst = ds_grid_height(ed_dados_plantacoes);
		var slot = 0; repeat(num_inst){
			respawnaPlantacao(
			ed_dados_plantacoes[# 0, slot],
			ed_dados_plantacoes[# 1, slot],
			ed_dados_plantacoes[# 2, slot],
			ed_dados_plantacoes[# 3, slot]		
			);
			
			slot +=1;
		}
		
		
		with(obj_plantacao){
		    //First growth
		    var primeiroCrescimento = 0;
		    if(dias > 0){ primeiroCrescimento = 1; }     
		    estagioCrescimento = primeiroCrescimento + (dias div estagioCrescimentoDuracao);
            
		    if (estagioCrescimento >= maxEstagioCrescimento){
		        estagioCrescimento = maxEstagioCrescimento;
		        totalmenteCrescido = true;
		        alarm[1] = 1;
			}
		}
		
	}
}

