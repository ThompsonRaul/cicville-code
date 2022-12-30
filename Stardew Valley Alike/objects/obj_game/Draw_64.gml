
if(fazTransicao){
	
	//
	if(room != salaSpawn){
		alphaPreto +=0.1;
		
		if(alphaPreto >=1){room_goto(salaSpawn);}
	}else{
			alphaPreto -= 0.1;
			if(alphaPreto <= 0){
				fazTransicao = false;
			}
		}
	
	//faz o fade
	draw_set_alpha(alphaPreto);
	draw_rectangle_colour(0,0, global.largura_game, global.altura_game,
							c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
}

