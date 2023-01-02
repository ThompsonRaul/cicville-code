//pra herdar o que acontece no create pai
event_inherited();

//para correção das máscaras de colisão
x_offset = sprite_get_xoffset(mask_index);
y_offset = sprite_get_yoffset(mask_index);

//para alterar roupas
spr_sombra = spr_personagem_sombra;
spr_base = spr_base_f_3;
spr_calcado = spr_pes_f_preto;
spr_pernas = spr_pernas_f_magenta;
spr_blusas = spr_torso_f_vermelho;
spr_cabelo = spr_cabelo_m_ma_rosa;


portrait_indice = 5;
voz = snd_voice3;
nome = "Alanis";
texto = ["Oi, Tomso, como cê tá?", "Bemmm, e você?", "Tô bem também! Bom dia pra plantar, né?"];
falantes = [id, obj_player_tomso, id];
prox_linha = [0, 2, -1];