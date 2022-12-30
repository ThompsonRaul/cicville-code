
if(room != room_0){plantando = false; exit;}

if(keyboard_check_pressed(ord("P"))){plantando = !plantando;}

if(plantando){
	mx = mouse_x;
	my = mouse_y;
	
	
	if(mouse_wheel_up()){selecionaPlantacao++;}
	if(mouse_wheel_down()){selecionaPlantacao--;}
	if(selecionaPlantacao > sprite_get_number(spr_plantacao_pega)-1){selecionaPlantacao = 0;}
	else if(selecionaPlantacao < 0){selecionaPlantacao = sprite_get_number(spr_plantacao_pega)-1;}
	if(mouse_check_button_pressed(mb_left)){
	criaInstanciaPlantacao(mx, my, selecionaPlantacao);	
}
}

if(instance_exists(obj_plantacao) and keyboard_check_pressed(ord("G"))){
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

