// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function montaPersonagem(){
var tam_anim = 9;
var tam_frame = 64
var vel_anim = 12;


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

var xx = x - x_offset;
var yy = y - y_offset;

//desenho da sombra do personagem
if(spr_sombra != -1)
{
	draw_sprite(spr_sombra, 0, x, y);
}


//Desenho da base do personagem
if(spr_calcado != -1)
{
	draw_sprite_part(spr_base,0,floor(frameX)*tam_frame,frameY*tam_frame,tam_frame,tam_frame,xx,yy);
}

//Desenho do calçado do personagem
if(spr_blusas != -1)
{
	draw_sprite_part(spr_calcado,0,floor(frameX)*tam_frame,frameY*tam_frame,tam_frame,tam_frame,xx,yy);
}

//Desenho de shorts/calças do personagem
if(spr_pernas != -1)
{
	draw_sprite_part(spr_pernas,0,floor(frameX)*tam_frame,frameY*tam_frame,tam_frame,tam_frame,xx,yy);
}

//Desenho da camisa do personagem
if(spr_blusas != -1)
{
	draw_sprite_part(spr_blusas,0,floor(frameX)*tam_frame,frameY*tam_frame,tam_frame,tam_frame,xx,yy);
}

//Desenho do cabelo do personagem
if(spr_cabelo != -1)
{
	draw_sprite_part(spr_cabelo,0,floor(frameX)*tam_frame,frameY*tam_frame,tam_frame,tam_frame,xx,yy);
}



//lógica da animação
if(frameX + (vel_anim/60) < tam_anim){
frameX += vel_anim/60;
}else{
	frameX = 1;
	}
	
//draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow,c_yellow, c_yellow, true);

}