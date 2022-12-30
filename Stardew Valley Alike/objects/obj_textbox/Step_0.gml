if(keyboard_check_pressed(tecla_interacao)){
	if(!escolha_dialogo and cont < str_tam){
		cont = str_tam;
	}
	else if(txt_indice < array_length(texto) - 1){
		var linha = prox_linha[txt_indice];
		if(escolha_dialogo){
			linha = linha[escolha];
		}
		if(linha == 0){
			txt_indice++;
		}
		else if(linha == -1){
			instance_destroy();
			exit;
		}
		else{
			txt_indice = linha; 
		}
		
		event_perform(ev_other, ev_user1);
	}else{instance_destroy();}
}
if(escolha_dialogo){
	escolha += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	
	if(escolha < 0){
		escolha = txt_array_tam - 1;	
	}
	if(escolha > txt_array_tam - 1){
		escolha = 0;
	}
}