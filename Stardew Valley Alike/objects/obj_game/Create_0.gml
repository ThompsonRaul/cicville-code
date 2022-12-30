room_goto_next();
debug = false;


alphaPreto = 0;

salaSpawn = -1;

fazTransicao = false;

spawnX = 0;
spawnY = 0;

spawnDirecaoPlayer = -1;

enum dir {
	direita = 0,
	cima = 90,
	esquerda = 180,
	baixo = 270
}

global.largura_game = 750;
global.altura_game = 420;

display_set_gui_size(global.largura_game, global.altura_game)