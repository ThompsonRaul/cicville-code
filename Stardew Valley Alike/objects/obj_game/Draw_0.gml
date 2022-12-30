if(!debug){exit;}

with(obj_colisao){
draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow,c_yellow, c_yellow, true);
}
with(obj_player_tomso){
draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow,c_yellow, c_yellow, true);
}

var xx = 0;
var tc = plantacoes.tamCel;
var sL = salaLargura div tc;

draw_set_alpha(0.3);

repeat(sL){
	draw_line_color(xx, 0, xx, salaAltura, c_white, c_white);
	xx += tc;
}

var yy = 0;
var sA = salaAltura div tc;

repeat(sA){
	draw_line_color(0, yy, salaLargura, yy, c_white, c_white);
	yy += tc;
}

draw_set_alpha(1);