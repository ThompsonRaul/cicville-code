//pra herdar o que acontece no create pai
event_inherited();

//para alterar roupas
spr_sombra = spr_personagem_sombra;
spr_base = spr_base_m_3;
spr_calcado = spr_pes_m_marrom;
spr_pernas = spr_pernas_m_verde;
spr_blusas = spr_torso_m_branco;
spr_cabelo = spr_cabelo_m_ma_preto;

portrait_indice = 3;
voz = snd_voice4;
nome = "Klaus";
texto = ["COEEEEEEEEEEEE", 
			[
				"HIUIIUUIUUUUUIUIUI",
				"COEEEEEE"
			], 
				"Vamos ficar zilionários plantando aqui!!!!",
				"É O GRANAS!!!!!"
		];
falantes = [id, obj_player_tomso, id, id];
prox_linha = [0, [2, 3], -1, -1];

