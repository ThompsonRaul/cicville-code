event_inherited();

//velocidades andando, normal e correndo
vel_a = 1;
vel_n = 2;
vel_c = 3;
vel = vel_n;

//controladores do frame do personagem
frameX = 1;
frameY = 8;

//para correção das máscaras de colisão
x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

//para alterar roupas
spr_sombra = spr_personagem_sombra;
spr_base = spr_base_m_2;
spr_calcado = spr_pes_m_marrom;
spr_pernas = spr_pernas_m_azpet;
spr_blusas = spr_torso_m_marrom;
spr_cabelo = spr_cabelo_f_pixie_loiro;

dirTomso = 0;

portrait_indice = 2;
voz = snd_voice1;
nome = "Tomso";

raio = 16;
textbox_ativa = noone;





