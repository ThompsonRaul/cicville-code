global.pause = true;
global.view_largura = camera_get_view_width(view_camera[0]);
global.view_altura = camera_get_view_height(view_camera[0]);

global.tecla_enter = vk_enter;
global.tecla_esq = vk_left;
global.tecla_dir = vk_right;
global.tecla_cima = vk_up;
global.tecla_baixo = vk_down;

display_set_gui_size(global.view_largura, global.view_altura);

enum menu_pag{
	principal,
	sobre,
	criadores,
	tam	
}

enum menu_tipo_elemento{
	roda_script,
	troca_pag,
	mostra_site
}

//	cria pagina de menu
ed_menu_principal = cria_pag_menu(

["COMEÇAR",		menu_tipo_elemento.roda_script,		comeca_jogo],
["SOBRE",		menu_tipo_elemento.troca_pag,		menu_pag.sobre],
["SAIR",		menu_tipo_elemento.roda_script,		fecha_jogo]

);

//	sobre
ed_sobre = cria_pag_menu(
["CRIADORES",	menu_tipo_elemento.troca_pag, menu_pag.criadores],
["VOLTAR",		menu_tipo_elemento.troca_pag, menu_pag.principal]
);

// criadores

ed_criadores = cria_pag_menu(
["ALANIS RODRIGUES",	menu_tipo_elemento.mostra_site, 
"https://www.linkedin.com/in/alanis-rodrigues-aaba4220b/"],
["KLAUS ALMEIDA",		menu_tipo_elemento.mostra_site, 
"https://www.instagram.com/klaus.almeidass/"],
["THOMPSON RAUL",		menu_tipo_elemento.mostra_site,
"https://www.linkedin.com/in/thompson-raul-dos-santos-vieira-8a1a391aa/"],
["VOLTAR",		menu_tipo_elemento.troca_pag, menu_pag.sobre]
);


pag = 0;
menu_pags = [ed_menu_principal, ed_sobre, ed_criadores];

var i = 0;
var tam_arr = array_length(menu_pags);
repeat(tam_arr){
	opcao_menu[i] = 0;
	i++;
}
