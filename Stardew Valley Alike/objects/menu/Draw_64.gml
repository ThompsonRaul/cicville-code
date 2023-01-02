if(!global.pause){exit;}
draw_set_font(fnt_texto_12);
var glargura = global.view_largura, galtura = global.view_altura;

var ed_grid = menu_pags[pag], ed_altura = ds_grid_height(ed_grid);
var y_buffer = 32, x_buffer = 16; 
var y_comeco = (galtura / 2) - ((((ed_altura - 1) / 2) * y_buffer));
var x_comeco = glargura / 2;

//Desenha "fundo" do menu
var c = c_black
draw_rectangle_color(0, 0, glargura, galtura, c, c, c, c, false);

//Desenha elementos do lado esquerdo
draw_set_valign(fa_middle);
draw_set_halign(fa_right);

var x_txt_esq = x_comeco - x_buffer, y_txt_esq, x_offset;

var yy = 0;
repeat(ed_altura){
	y_txt_esq = y_comeco + (yy * y_buffer);
	c = c_white;
	x_offset = 0;
	
	if(yy == opcao_menu[pag]){
		c = c_orange;
		x_offset = -(x_buffer / 2);
	}
	
	draw_text_color(x_txt_esq + x_offset, y_txt_esq, ed_grid[# 0, yy], c, c, c, c, 1);
	
	yy++;
}

//Desenha a linha de divisão
draw_line(x_comeco, y_comeco, x_comeco, y_txt_esq);

//Desenha elementos do lado direito
draw_set_halign(fa_left);

var x_txt_dir = x_comeco + x_buffer, y_txt_dir

yy = 0;
repeat(ed_altura){
	switch(ed_grid[# 1, yy]){
		case menu_tipo_elemento.troca_pag:
		break;
	}
}


draw_set_valign(fa_top)
//seta a fonte ao normal de novo
draw_set_font(-1);