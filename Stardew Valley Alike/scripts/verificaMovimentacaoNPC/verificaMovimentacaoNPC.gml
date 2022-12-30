
function verificaMovimentacaoNPC(vel){	

	if(!pode_mover) exit;

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
	
	//objetos

	
	//movimentação executada	
	x += movX;
	y += movY;
}