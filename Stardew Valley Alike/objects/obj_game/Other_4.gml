salaLargura = room_width;
salaAltura = room_height;



if(salaSpawn == -1){exit;}
obj_player_tomso.x = spawnX;
obj_player_tomso.y = spawnY;
obj_player_tomso.dirTomso = spawnDirecaoPlayer;

with(obj_player_tomso){
	switch(dirTomso){
		case dir.esquerda:	
			frameY = 9;
			break;
		case dir.direita:	
			frameY = 11;
			break;
		case dir.cima:		
			frameY = 8;
			break;
		case dir.baixo:		
			frameY = 10;
			break;
		case -1: 
			frameX = 0;
			break;
	}
}

