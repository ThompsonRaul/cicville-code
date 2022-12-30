if(keyboard_check_pressed(ord("I"))){mostra_inventario = !mostra_inventario;}

if(!mostra_inventario){exit;}
#region Slots Mouse
//pra termos a posição do mouse relativa ao gui
mousex = device_mouse_x_to_gui(0);
mousey = device_mouse_y_to_gui(0);

var celula_xbuff = (tamanho_celula + x_buffer) * escala;
var celula_ybuff = (tamanho_celula + x_buffer) * escala;

var i_mousex = mousex - slots_x;
var i_mousey = mousey - slots_y;


var nx = i_mousex div celula_xbuff;
var ny = i_mousey div celula_ybuff;


var mouse_no_inventario = true;
if(nx >= 0 and nx < inv_slots_largura and ny >= 0 and ny < inv_slots_altura
	and mousex > 0 and mousey > 0){
	var sx = i_mousex - (nx * celula_xbuff);
	var sy = i_mousey - (ny * celula_ybuff);
	
	if((sx < tamanho_celula * escala) and (sy < tamanho_celula * escala)){
		m_slotx = nx;
		m_sloty = ny;
	}
}else {
	mouse_no_inventario = false;
}

slot_selecionado = min(inv_slots - 1, m_slotx + (m_sloty * inv_slots_largura));
#endregion

//Pega item

var inv_grid = ed_inventario;
var ss_item = inv_grid[# 0, slot_selecionado];
var cria_notificacao = false;

if(pega_slot != -1){
	if(mouse_check_button_pressed(mb_left)){
		if(!mouse_no_inventario){
			#region dropa o item no mundo do jogo!!!
			cria_notificacao = true;
			
			var pitem = inv_grid[# 0, pega_slot];
			var in = pitem;
			
			inv_grid[# 1, pega_slot] -= 1;
			//destrói item do inventário, caso seja o último
			if(inv_grid[# 1, pega_slot] == 0){
				inv_grid[# 0, pega_slot] = item.nada;
				pega_slot = -1;
				}
			
			//cria o item
			var inst = instance_create_layer(obj_player_tomso.x, obj_player_tomso.y, "Instances",
											obj_item);
			with(inst){
				item_num = pitem;
				frameX = item_num mod (spr_largura/tamanho_celula);
				frameY = item_num div (spr_largura/tamanho_celula);
			}
			show_debug_message("Dropou um item.");
			#endregion
		}
		else if(ss_item == item.nada){
			inv_grid[# 0, slot_selecionado] = inv_grid[# 0, pega_slot];
			inv_grid[# 1, slot_selecionado] = inv_grid[# 1, pega_slot];
			
			inv_grid[# 0, pega_slot] = item.nada;
			inv_grid[# 1, pega_slot] = 0;
			
			pega_slot = -1;
		}else if(ss_item == inv_grid[# 0, pega_slot]){
			if(slot_selecionado != pega_slot){
				inv_grid[# 1, slot_selecionado] += inv_grid[# 1, pega_slot];
				
				inv_grid[# 0, pega_slot] = item.nada;
				inv_grid[# 1, pega_slot] = 0;
			}
			pega_slot = -1;
		}else{
			var ss_item_num = inv_grid[# 1, slot_selecionado];
			
			inv_grid[# 0, slot_selecionado] = inv_grid[# 0, pega_slot];
			inv_grid[# 1, slot_selecionado] = inv_grid[# 1, pega_slot];
			
			inv_grid[# 0, pega_slot] = ss_item;
			inv_grid[# 1, pega_slot] = ss_item_num;
			
			pega_slot = -1;
		}
	}
}

if(ss_item != item.nada){
	
	//dropar item fora do inventario, no jogo
	if(mouse_check_button_pressed(mb_middle)){
		cria_notificacao = true;
		var in = inv_grid[# 0, slot_selecionado];
		
		inv_grid[# 1, slot_selecionado] -= 1;
		//destrói item do inventário, caso seja o último
		if(inv_grid[# 1, slot_selecionado] == 0){
			inv_grid[# 0, slot_selecionado] = item.nada;
			}
			
		//cria o item
		var inst = instance_create_layer(obj_player_tomso.x, obj_player_tomso.y, "Instances",
										obj_item);
		with(inst){
			item_num = ss_item;
			frameX = item_num mod (spr_largura/tamanho_celula);
			frameY = item_num div (spr_largura/tamanho_celula);
		}
		show_debug_message("Dropou um item.")
	}
	
	//dropar item em um novo slot
	if(mouse_check_button_pressed(mb_right)){
		pega_slot = slot_selecionado;
	}
}
if(cria_notificacao){
#region Cria notificação
if(!instance_exists(obj_notificacao)){
	instance_create_layer(0, 0, "Instances", obj_notificacao);
}
with(obj_notificacao){
	if(!ds_exists(ed_notificacoes, ds_type_grid)){//Criando o grid
		ed_notificacoes = ds_grid_create(2, 1);
		var not_grid = ed_notificacoes;
		not_grid[# 0, 0] = -1;
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
				not_grid[# 0, yy] -= 1;
				no_grid = true;
				break;
			}
							
			yy++;
		}
		if(!no_grid){
			ds_grid_resize(not_grid, 2, altura_grid + 1);
			not_grid[# 0, altura_grid] = -1;
			not_grid[# 1, altura_grid] = inventario.ed_info_itens[# 0, in];
		}
	}
}
				
#endregion
}