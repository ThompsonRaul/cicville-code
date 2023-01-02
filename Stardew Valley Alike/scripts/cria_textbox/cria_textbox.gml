
function cria_textbox(_texto, _falantes, _prox_linha, _scripts){
	var tbox = instance_create_layer(0,0, "Texto", obj_textbox);
	with(tbox){
		texto = argument[0]; 
		falantes = argument[1];
		prox_linha = argument[2];
		scripts = argument[3];
		
		var tam = array_length(texto);
		var i = 0;
		repeat(tam){
			nomes[i] = falantes[i].nome;
			portraits[i] = falantes[i].portrait_indice;
			vozes[i] = falantes[i].voz;
			i++;
		}
		event_perform(ev_other, ev_user1);
	}
	return tbox;
}