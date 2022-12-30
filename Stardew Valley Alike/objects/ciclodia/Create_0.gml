segundos = 0;
minutos = 0;
horas = 0;

dias = 1;
temporadas = 1;
anos = 1;

incrementaTempo = 100;
pausaTempo = true;

maxEscuridao = 0.75;
escuridao = 0;
corLuz = c_black;
desenhaLuzDia = false;

guiLargura = display_get_gui_width();
guiAltura = display_get_gui_height();

enum fase{
	nascerDoSol = 6,
	diaPadrao = 9,
	porDoSol = 18,
	noite = 22
}

