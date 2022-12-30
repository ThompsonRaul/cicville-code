// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function wrap_string(_string, _maxLargura){
	var str = _string;
	var max_largura = _maxLargura;
	
	var str_tam = string_length(str);
	var ultimo_espaco = 1;
	
	var cont = 1;
	var substr;
	
	repeat(str_tam){
		substr = string_copy(str, 1, cont);
		if(string_char_at(str, cont) == " "){
			ultimo_espaco = cont;
		}
		
		if(string_width(substr) > max_largura){
			str = string_delete(str, ultimo_espaco, 1);
			str = string_insert("\n", str, ultimo_espaco);
		}
		
		cont++;
	}
	return str;
}