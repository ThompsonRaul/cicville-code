if(room == room_0){
	if(instance_exists(obj_plantacao)){
		with(obj_plantacao){
			if(estagioCrescimento < maxEstagioCrescimento){
				dias += 1;
			
				var primeiroCrescimento = 0;
				if(dias > 0){ primeiroCrescimento = 1;}
			
				estagioCrescimento = primeiroCrescimento + (dias div estagioCrescimentoDuracao);
			}else{
				estagioCrescimento = maxEstagioCrescimento;
				totalmenteCrescido = true;
				alarm[1] = 1;
			}
		}
	}
}else if(ed_dados_plantacoes[# 0, 0] != -1){
	var h = ds_grid_height(ed_dados_plantacoes);
	var yy = 0; repeat(h){
		ed_dados_plantacoes[# 3, yy] += 1;
		yy++;
	}
}
