//variáveis de escala, inventário, largura e altura do draw gui
randomize();
depth = -1;
escala = 1;
mostra_inventario = false;

inv_slots = 17;
inv_slots_largura = 8;
inv_slots_altura = 3;

slot_selecionado = 0;
pega_slot = -1;
m_slotx = 0;
m_sloty = 0;

x_buffer = 2;
y_buffer = 4;

gui_largura = display_get_gui_width();
gui_altura = display_get_gui_height();

tamanho_celula = 32;

inv_UI_largura = 288;
inv_UI_altura = 192;

spr_inv_UI = spr_inventario_UI;
spr_inv_itens = spr_inventario_itens;

spr_inv_itens_colunas = sprite_get_width(spr_inv_itens)/tamanho_celula;
spr_inv_itens_linhas = sprite_get_height(spr_inv_itens)/tamanho_celula;

inv_UI_x = (gui_largura * 0.5) - (inv_UI_largura * 0.5 * escala);
inv_UI_y = (gui_altura * 0.5) - (inv_UI_altura * 0.5 * escala);

info_x = inv_UI_x + (9 * escala);
info_y = inv_UI_y + (9 * escala);

slots_x = info_x;
slots_y = inv_UI_y + (40 * escala);

desc_x = info_x
desc_y = inv_UI_y + (156 * escala);



//info do player

//moedas de ouro, prata e bronze, nome do player

ed_jogador_info = ds_grid_create(2, 4);
ed_jogador_info[# 0, 0] = "Ouro";
ed_jogador_info[# 0, 1] = "Prata";
ed_jogador_info[# 0, 2] = "Cobre";
ed_jogador_info[# 0, 3] = "Nome";

ed_jogador_info[# 1, 0] = irandom_range(0, 99);
ed_jogador_info[# 1, 1] = irandom_range(0, 99);
ed_jogador_info[# 1, 2] = irandom_range(0, 99);
ed_jogador_info[# 1, 3] = "Jogador";

//0 Item
//1 Quantidade item

ed_inventario = ds_grid_create(2, inv_slots);

//item
enum item{
	nada = 0,
	tomate = 1,
	batata = 2,
	cenoura = 3,
	alcachofra = 4,
	pimenta = 5,
	cabaca = 6,
	milho = 7,
	madeira = 8,
	rocha = 9,
	balde = 10,
	cadeira = 11,
	foto = 12,
	machado = 13,
	pocao = 14,
	peixeestrela = 15,
	cogumelo = 16,
	altura = 17,
}

#region Cria informações dos itens

ed_info_itens = ds_grid_create(2, item.altura);

//nomes
var z = 0;
var i = 0;
ed_info_itens[# z, i++] = "Nada";
ed_info_itens[# z, i++] = "Tomate";
ed_info_itens[# z, i++] = "Batata";
ed_info_itens[# z, i++] = "Cenoura";
ed_info_itens[# z, i++] = "Alcachofra";
ed_info_itens[# z, i++] = "Pimenta";
ed_info_itens[# z, i++] = "Cabaça";
ed_info_itens[# z, i++] = "Milho";
ed_info_itens[# z, i++] = "Madeira";
ed_info_itens[# z, i++] = "Rocha";
ed_info_itens[# z, i++] = "Balde";
ed_info_itens[# z, i++] = "Cadeira";
ed_info_itens[# z, i++] = "Foto";
ed_info_itens[# z, i++] = "Machado";
ed_info_itens[# z, i++] = "Poção";
ed_info_itens[# z, i++] = "Peixe-estrela";
ed_info_itens[# z, i++] = "Cogumelo";


//descrições
z = 1;
i = 0;
ed_info_itens[# z, i++] = "Não temos nada aqui, ok?";
ed_info_itens[# z, i++] = "To?ma?te?";
ed_info_itens[# z, i++] = "Batatinha quando nasce se esparrama pelo chão... Esqueci o resto.";
ed_info_itens[# z, i++] = "Cenourinha nham nham";
ed_info_itens[# z, i++] = "Nome estranho.";
ed_info_itens[# z, i++] = "AAAAAAAAAAAAAAAA ESTÁ QUEIMANDO MINHA BOCA!!!!!!";
ed_info_itens[# z, i++] = "Mulher do cabaço";
ed_info_itens[# z, i++] = "Pré-pipoca";
ed_info_itens[# z, i++] = "Se fosse boa, se chamaria boadeira";
ed_info_itens[# z, i++] = "Nome de uma rede de óticas";
ed_info_itens[# z, i++] = "Balde";
ed_info_itens[# z, i++] = "Quando está longe, vira uma ladeira";
ed_info_itens[# z, i++] = "Foto";
ed_info_itens[# z, i++] = "Machado não é roubado";
ed_info_itens[# z, i++] = "Poção";
ed_info_itens[# z, i++] = "Patrick, é você?";
ed_info_itens[# z, i++] = "Caso coma, você não vai virar o Super Mario, ok?";

#endregion


var yy = 0;
repeat(inv_slots){
	ed_inventario[# 0, yy] = irandom_range(1, item.altura - 1);
	ed_inventario[# 1, yy] = irandom_range(1, 10);
	yy++;
}



