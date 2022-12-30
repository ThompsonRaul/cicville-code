draw_sprite_part(
spr_plantacao, 0, estagioCrescimento*larguraQuadro,
tipoPlantacao*alturaQuadro, larguraQuadro, alturaQuadro,xx, yy
);
if(brilhinho >=0){
	draw_sprite(spr_brilhinho, brilhinho, x+3, y-12);
	brilhinho += 0.1;
	if(brilhinho >= sprite_get_number(spr_brilhinho)){
		brilhinho = -1;
		alarm[1] = random_range(3,5)*room_speed;
	}
}

