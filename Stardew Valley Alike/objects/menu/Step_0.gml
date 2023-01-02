if(!global.pause){exit;}

cima	=	keyboard_check_pressed(global.tecla_cima);
baixo	=	keyboard_check_pressed(global.tecla_baixo);
enter	=	keyboard_check_pressed(global.tecla_enter);

var ed_grid = menu_pags[pag], ed_altura = ds_grid_height(ed_grid);

var muda_opcao = baixo - cima;
if(muda_opcao != 0){
	opcao_menu[pag] += muda_opcao;
	
	if(opcao_menu[pag] > ed_altura - 1){
		opcao_menu[pag] = 0;
	}
	if(opcao_menu[pag] < 0){
		opcao_menu[pag] = ed_altura - 1;
	}
}

if(enter){
	switch(ed_grid[# 1, opcao_menu[pag]]){
		case menu_tipo_elemento.troca_pag:
		pag = ed_grid[# 2, opcao_menu[pag]];
		break;
		case menu_tipo_elemento.roda_script:
		script_execute(ed_grid[# 2, opcao_menu[pag]]);
		break;
		
		case menu_tipo_elemento.mostra_site:
		url_open(ed_grid[# 2, opcao_menu[pag]])
		break;
	}
}
