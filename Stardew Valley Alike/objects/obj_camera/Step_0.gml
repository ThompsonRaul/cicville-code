moveCam = keyboard_check(ord("C"));

if(moveCam){
	//declarando checagem de teclas
	var esquerda = keyboard_check(ord("A"));
	var direita = keyboard_check(ord("D"));
	var cima = keyboard_check(ord("W"));
	var baixo = keyboard_check(ord("S"));
	
	//controle do viewport
	x += (direita-esquerda) * 6;
	y += (baixo-cima) * 6;
}
else{
	//controle do viewport
	x = clamp(x, seguindo.x-borda_h, seguindo.x+borda_v);
	y = clamp(y, seguindo.y-borda_v, seguindo.y+borda_v);
}