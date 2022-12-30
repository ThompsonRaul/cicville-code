
nome = nomes[txt_indice];
voz = vozes[txt_indice];
portrait_indice = portraits[txt_indice];

if(!is_array(texto[txt_indice])){
	txt_encapsulado = wrap_string(texto[txt_indice], txt_max_largura);
	str_tam = string_length(txt_encapsulado);
	escolha_dialogo = false;
	
}else{
	txt_array = texto[txt_indice];
	txt_array_tam = array_length(txt_array);
	escolha_dialogo = true;
}
cont = 0;

