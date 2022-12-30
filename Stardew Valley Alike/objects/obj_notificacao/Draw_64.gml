//desenhar notificações
var not_grid = ed_notificacoes;
var altura_grid = ds_grid_height(not_grid);
var c = c_white;

var yy = 0;
repeat(altura_grid){
	var not_sinal = "";
	if(not_grid[# 0, yy] > 0){not_sinal = "+";}
	draw_text_color(100, (gui_altura / 2) + (yy * str_altura) - (altura_grid * str_altura),
					not_sinal + string(not_grid[# 0, yy]) + " " + string(not_grid[# 1, yy]),
					c, c, c, c,not_alfa)
	yy++;
}

//efeito fade
if(efeito_fade){
	not_alfa -= 0.1
}
if(not_alfa <= 0){
	instance_destroy();
}



