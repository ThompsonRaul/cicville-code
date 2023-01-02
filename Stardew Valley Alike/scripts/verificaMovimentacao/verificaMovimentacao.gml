
function verificaMovimentacao(vel){
	
	//declarando checagem de teclas
	esquerda = keyboard_check(vk_left);
	direita = keyboard_check(vk_right);
	cima = keyboard_check(vk_up);
	baixo = keyboard_check(vk_down);
	andando = keyboard_check(vk_control);
	correndo = keyboard_check(vk_shift);
	interage = keyboard_check_pressed(vk_space);
	
	//alterando velocidade
	if(andando or correndo){
		vel = abs((andando*vel_a) - (correndo*vel_c));
	}
	else{vel = vel_n}
		
	
	
	//variáveis de movimentação
	movX = 0;
	movY = 0;
	
	//movimentação pretendida

	movX = (direita - esquerda) * vel;
	if(movX==0){movY = (baixo - cima) * vel;}
	
	//direção em q o player vai olhar
	
	if(movX !=0){
		switch(sign(movX)){
			case 1: 
			dirTomso = dir.direita;
			break;
			
			case -1:
			dirTomso = dir.esquerda;
			break;
			
		}
	}
	else if(movY !=0){
		switch(sign(movY)){
			case 1: 
			dirTomso = dir.baixo;
			break;
			
			case -1:
			dirTomso = dir.cima;
			break;
			
		}
	}
	else{
		dirTomso = -1;
	}
	
	//checagem de colisão pixel perfect
	//Horizontal
	
	if(movX != 0){
		var colH = instance_place(x+movX, y, obj_colisao);
		if(colH != noone and colH.colidivel){
			repeat(abs(movX)){
				if(!place_meeting(x+sign(movX), y, obj_colisao)){
					x+=sign(movX);
				}else{break;}
			}	
			movX = 0;
		}
	}
	
	//Vertical
	
	if(movY != 0){
		var colV = instance_place(x, y+movY, obj_colisao);
		if(colV != noone and colV.colidivel){
			repeat(abs(movY)){
				if(!place_meeting(x, y+sign(movY), obj_colisao)){
					y+=sign(movY);
				}else{break;}
			}	
			movY = 0;
		}
	}
	
	
	//Spawn em salas diferentes
	var inst = instance_place(x, y, obj_transicao);
	if (inst != noone and dirTomso == inst.direcaoPlayerAntes){
		with(obj_game){
			if(!fazTransicao){
				salaSpawn = inst.salaAlvo;
				spawnX = inst.alvoX;
				spawnY = inst.alvoY;
				spawnDirecaoPlayer = inst.direcaoPlayerDepois;
				fazTransicao = true;
			}	
		}
	}
	
	
	//Textbox
	if(interage){
		if(textbox_ativa == noone){
			var inst = collision_rectangle(x - raio, y - raio, x + raio, y + raio, 
										obj_npc_pai, false, false);
			if(inst != noone){
				with(inst){
					var tbox = cria_textbox(texto, falantes, prox_linha, scripts);
					pode_mover = false;
					movX = 0;
					movY = 0;
				}
				textbox_ativa = tbox;
			
			}
		}else{
			if(!instance_exists(textbox_ativa)){
				textbox_ativa = noone;
			}
		}
	}
	
	//movimentação executada	
	x += movX;
	y += movY;
}