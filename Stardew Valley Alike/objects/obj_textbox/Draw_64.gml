//Desenha a caixa
draw_sprite(box, 0, box_x, box_y);

//Desenha a parte de trás do retrato
draw_sprite(frame, 0, port_x, port_y);

//Desenha o retrato
draw_sprite(portrait, portrait_indice, port_x, port_y);

//Desenha o frame do retrato
draw_sprite(frame, 1, port_x, port_y);

//Desenha a namebox
draw_sprite(namebox, 0, namebox_x, namebox_y);



//-----TEXTO-----
draw_set_font(fonte);
//Desenha nome
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var c = nome_txt_cor

draw_text_color(nome_txt_x, nome_txt_y, nome, c, c, c, c, 1);

draw_set_halign(fa_left);
draw_set_valign(fa_top);



if(!escolha_dialogo){
	//Desenha texto
	if(!pausa and cont < str_tam){
		cont++;
		if(cont mod 4 == 0){
		audio_play_sound(voz, 10, false);	
		}
		switch(string_char_at(txt_encapsulado, cont)){
			case ",":
			pausa = true;
			alarm[1] = room_speed * 0.1;
			break;
			case ".":
			case "?":
			case "!":
			pausa = true;
			alarm[1] = room_speed * 0.2;
			break;
	
		}
	}


	var substring = string_copy(txt_encapsulado, 1, cont);

	c = txt_cor;
	draw_text_color(txt_x, txt_y, substring, c, c, c, c, 1);
}else{
	
	c = txt_cor;
	
	var i = 0;
	var y_add = 0;
	repeat(txt_array_tam){
		if(escolha == i){
			c = escolha_cor;
			draw_text_color(box_x + txt_max_largura, txt_y+y_add, "<", c, c, c, c, 1);
		}else {c = txt_cor;}
		
		draw_text_ext_color(txt_x, txt_y+y_add, txt_array[i], txt_altura,
							txt_max_largura, c, c, c, c, 1);
		y_add += string_height_ext(txt_array[i], txt_altura, txt_max_largura);
		i++;
	}
}
