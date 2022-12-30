if(desenhaLuzDia){
	var c = corLuz;
	draw_set_alpha(escuridao);
	draw_rectangle_color(0, 0, guiLargura, guiAltura, c, c, c, c, false);
	draw_set_alpha(1);


}
var c = c_yellow;
draw_text_color(10, 10,string(segundos), c, c, c, c, 1);
draw_text_color(10, 30,string(minutos), c, c, c, c, 1);
draw_text_color(10, 50,string(horas), c, c, c, c, 1);
draw_text_color(10, 70,string(dias), c, c, c, c, 1);
draw_text_color(10, 90,string(temporadas), c, c, c, c, 1);
draw_text_color(10, 110,string(anos), c, c, c, c, 1);	

