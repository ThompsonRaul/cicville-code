
//se n ta plantando, sai desse trecho de codigo
//se ta plantando, roda o q ta abaixo
if(!plantando){exit;}

//pra dar a ideia de grid snapping
var gx = (mx div tamCel);
var gy = (my div tamCel);



var c = c_red;
var cel = ed_instancias_plantacoes[# gx, gy];

if (cel == 0){
	var lay_id = layer_get_id("T_Solo");
	var map_id = layer_tilemap_get_id(lay_id);
	var solo = tilemap_get_at_pixel(map_id, mx, my);

	if(solo){c = c_lime;}
}

var xx = gx * tamCel;
var yy = gy * tamCel;
//desenha retangulo(vermelho caso nao possa plantar, verde caso possa)
draw_rectangle_color(xx, yy, xx+tamCel, yy+tamCel, c,c,c,c,true)

draw_sprite(spr_plantacao_pega, selecionaPlantacao, xx+(tamCel/2), yy+(tamCel/2));


