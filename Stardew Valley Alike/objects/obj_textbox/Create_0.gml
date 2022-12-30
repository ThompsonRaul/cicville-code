box = spr_textbox;
frame = spr_portrait_frame_strip2;
portrait = spr_portraits_strip8;
namebox = spr_namebox;

box_largura = sprite_get_width(box);
box_altura = sprite_get_height(box);
portrait_largura = sprite_get_width(portrait);
portrait_altura = sprite_get_height(portrait);
namebox_largura = sprite_get_width(namebox);
namebox_altura = sprite_get_height(namebox);

port_x = (global.largura_game - box_largura - portrait_largura) * 0.5;
port_y = (global.altura_game * 0.98) - portrait_altura;
box_x = port_x + portrait_largura;
box_y = port_y;
namebox_x = port_x;
namebox_y = box_y - namebox_altura;

x_buffer = 15;
y_buffer = 10;
txt_x = box_x + x_buffer;
txt_y = box_y + y_buffer;
nome_txt_x = namebox_x + (namebox_largura/2);
nome_txt_y = namebox_y + (namebox_altura/2); 




portrait_indice = 0;
cont = 0;
pausa = false;

txt_cor = c_black;
nome_txt_cor = c_black;
fonte = fnt_texto_12;

draw_set_font(fonte);
txt_altura = string_height("N");
txt_max_largura = box_largura - (2 * x_buffer);

texto[0] = ""
txt_indice = 0;
nome = ""
voz = snd_voice1;

tecla_interacao = vk_space;

escolha = 0;
escolha_cor = c_white;



