if(drop_mov){
	x = lerp(x, alvo_x, 0.1);
	y = lerp(y, alvo_y, 0.1);
	
	if(abs(x - alvo_x) < 1 and abs(y - alvo_y) < 1){
		drop_mov = false;
	}
}else{
	
	if(!keyboard_check(ord("O"))){exit;}
	
	
	var px = obj_player_tomso.x;
	var py = obj_player_tomso.y;
	
	var r = 32;
	if(point_in_rectangle(px, py, x-r, y-r, x+r, y+r)){
		// estamos no topo do player?
		r = 2;
		if(!point_in_rectangle(px, py, x-r, y-r, x+r, y+r)){
			//se move em direção ao player para pegar
			x = lerp(x, px, 0.1);
			y = lerp(y, py, 0.1);
		}else{
			//pega item
			var in = item_num;
			with(inventario){
				var ed_inv = ed_inventario;	
				var pegou_item = false;
				//checa se esse item já está no inventário
				var yy = 0; repeat(inv_slots){
					if(ed_inv[# 0, yy] == in){
						ed_inv[# 1, yy] += 1;
						pegou_item = true;
						break;
					}else{
						yy +=1;
					}
				}
				
				
				//caso contrário, adiciona a um slot vazio
				
				if(!pegou_item){
					
					yy = 0; repeat(inv_slots){
						if(ed_inv[# 0, yy] == item.nada){
							ed_inv[# 0, yy] = in;
							ed_inv[# 1, yy] += 1;
							pegou_item = true;
							break;
						}else{
							yy +=1;
						}
					}
					
				}
				
				
				
			}
			//destroi item se pegou_item
			if(pegou_item){
				#region Cria notificação
				if(!instance_exists(obj_notificacao)){
					instance_create_layer(0, 0, "Instances", obj_notificacao);
				}
				var in = item_num;
				with(obj_notificacao){
					if(!ds_exists(ed_notificacoes, ds_type_grid)){//Criando o grid
						ed_notificacoes = ds_grid_create(2, 1);
						var not_grid = ed_notificacoes;
						not_grid[# 0, 0] = 1;
						not_grid[# 1, 0] = inventario.ed_info_itens[# 0, in];
					}else{//Adicionando ao grid
						event_perform(ev_other, ev_user0);
						
						var not_grid = ed_notificacoes;
						var altura_grid = ds_grid_height(not_grid);
						var nome = inventario.ed_info_itens[# 0, in];
						var no_grid = false;
						
						var yy = 0;
						repeat(altura_grid){
							if(nome == not_grid[# 1, yy]){// Já está no grid?
								not_grid[# 0, yy] += 1;
								no_grid = true;
								break;
							}
							
							yy++;
						}
						if(!no_grid){
							ds_grid_resize(not_grid, 2, altura_grid + 1);
							not_grid[# 0, altura_grid] = 1;
							not_grid[# 1, altura_grid] = inventario.ed_info_itens[# 0, in];
						}
					}
				}
				
				#endregion
					instance_destroy();
					show_debug_message("Pegou um item");
				}
			
		}
	}
}

