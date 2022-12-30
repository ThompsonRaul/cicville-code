randomize();
movX = 0;
movY = 0;
if(pode_mover){
	var parado = choose(0,1);

	if(!parado){
		var direcao = choose(1,2,3,4);
	
		switch(direcao){
			case 1: 
			movX = -vel;
			break;
			case 2: 
			movX = vel;
			break;
			case 3: 
			movY = -vel
			break;
			case 4: 
			movX = vel
			break;
		}
	}
}

alarm[1] = random_range(2.5, 4)* room_speed;


