event_inherited();
//velocidades andando, normal e correndo
vel_a = 1;
vel_n = 2;
vel_c = 3;
vel = vel_a;

//controladores do frame do personagem
frameX = 1;
frameY = 8;

//para correção das máscaras de colisão
x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

//para alterar roupas
spr_sombra = -1;
spr_base = -1;
spr_calcado = -1;
spr_pernas = -1;
spr_blusas = -1;
spr_cabelo = -1;


//movimentação
movX = 0;
movY = 0;
pode_mover = true;

alarm[1] = 1;

portrait_indice = 0;
voz = snd_voice1;
nome = "Anônimo";

texto = ["Olá, estranho!"];
falantes = [id];
prox_linha = [0];

scripts = -1;

