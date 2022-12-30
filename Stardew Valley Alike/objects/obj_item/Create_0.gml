event_inherited();

tamanho_celula = 32;
item_spr = spr_inventario_itens;
spr_largura = sprite_get_width(item_spr);
spr_altura = sprite_get_height(item_spr);

item_num = -1;
frameX = 0;
frameY = 0;

x_offset = tamanho_celula / 2;
y_offset = tamanho_celula * (2/3);


drop_mov = true;
var diritem = irandom_range(0, 359);
var dist = 32;
alvo_x = x + lengthdir_x(dist, diritem);
alvo_y = y + lengthdir_y(dist, diritem);

