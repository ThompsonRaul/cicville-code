if(!mostra_inventario){exit;}
	//parte do inventario
	draw_sprite_part_ext(spr_inv_UI, 0, tamanho_celula, 0,
						inv_UI_largura, inv_UI_altura, inv_UI_x, inv_UI_y,
						escala, escala, c_white, 1);
					
	//info do player

	var info_grid = ed_jogador_info;

	draw_set_font(fnt_texto_12);
	var c = c_black;

	draw_text_color(info_x, info_y, info_grid[# 0, 3] + ": " + info_grid[# 1, 3],
					c, c, c, c, 1);
				
	draw_set_font(fnt_pequenosdigitos);
	var yy = 0;
	repeat(inv_slots_altura){
		draw_text_color(info_x + (192 * escala) + ((15 + 18) * escala * yy), info_y, 
						string(info_grid[# 1, yy]), c, c, c, c, 1);
		yy++;
	}
	
	draw_set_font(-1);
	
	//inventario
	var ii, ix, iy, xx, yy, sx, sy, iitem, inv_grid;
	ii = 0;
	ix = 0;
	iy = 0;
	inv_grid = ed_inventario;
	
	repeat(inv_slots){
		//achar localização x e y do slot
		xx = slots_x + ((tamanho_celula + x_buffer) * ix * escala); 
		yy = slots_y + ((tamanho_celula + y_buffer) * iy * escala); 
		
		//item
		iitem = inv_grid[# 0, ii];
		sx = (iitem mod spr_inv_itens_colunas) * tamanho_celula;
		sy = (iitem div spr_inv_itens_colunas) * tamanho_celula;
		
		//desenhar slot e item
		draw_sprite_part_ext(spr_inv_UI, 0, 0, 0,
							tamanho_celula, tamanho_celula, xx, yy,
							escala, escala, c_white, 1);
				
		switch(ii){
			case slot_selecionado:
			if(iitem > 0){
				draw_sprite_part_ext(spr_inv_itens, 0, sx, sy,
									tamanho_celula, tamanho_celula, xx, yy,
									escala, escala, c_white, 1);
				
				gpu_set_blendmode(bm_add);
				
				draw_sprite_part_ext(spr_inv_UI, 0, 0, 0,
									tamanho_celula, tamanho_celula, xx, yy,
									escala, escala, c_white, 0.25);
				gpu_set_blendmode(bm_normal)
			}
			break;
			
			case pega_slot:
				draw_sprite_part_ext(spr_inv_itens, 0, sx, sy,
									tamanho_celula, tamanho_celula, xx, yy,
									escala, escala, c_white, 0.25);
				break;
			
			default:
			if(iitem > 0){
				draw_sprite_part_ext(spr_inv_itens, 0, sx, sy,
									tamanho_celula, tamanho_celula, xx, yy,
									escala, escala, c_white, 1);
			}
			break;
		}		
				
		
		
		//desenhar qtd itens
		if(iitem > 0){
			var numero = inv_grid[# 1, ii];
			draw_text_color(xx, yy, string(numero), c, c, c, c, 1);
		}
		
		//incrementar
		ii++;
		ix = ii mod inv_slots_largura;
		iy = ii div inv_slots_largura;
	}
	
	//desenha descrição do item
	var iinfo_grid = ed_info_itens;
	var descricao = "";
	
	iitem = inv_grid[# 0, slot_selecionado];
	
	if(iitem > 0){
		draw_set_font(fnt_texto_12);
		descricao = iinfo_grid[# 0, iitem] + ". " + iinfo_grid[# 1, iitem];
		c = c_black;
		draw_text_ext_color(desc_x, desc_y, descricao, string_height("M"),
							(inv_UI_largura * escala) - (x_buffer * 2), c, c, c, c, 1);
		draw_set_font(-1);
	}
	
	
	if(pega_slot != -1){
		//Item
		iitem = inv_grid[# 0, pega_slot];
		sx = (iitem mod spr_inv_itens_colunas) * tamanho_celula;
		sy = (iitem div spr_inv_itens_colunas) * tamanho_celula;
		
		draw_sprite_part_ext(spr_inv_itens, 0, sx, sy,
							tamanho_celula, tamanho_celula, mousex, mousey,
							escala, escala, c_white, 1);
							
		var inum = inv_grid[# 1, pega_slot];
		draw_text_color(mousex + (tamanho_celula * escala * 0.5), mousey, string(inum), c, c, c, c, 1);
	}
	