if(is_array(scripts)){
	var indicescript =  scripts[txt_indice];
	if(escolha_dialogo){
		indicescript = indicescript[escolha];
	}
	
	if(indicescript != -1){
		
		var tam = array_length(indicescript);
		
		if(tam == 1){
			script_execute(indicescript[0]);
		}else{
			var args = array_create(tam - 1, 0); 
			array_copy(args, 0, indicescript, 1, tam - 1);
			executa_script(indicescript[0], args);
		}
		
			
	}
	
	
}

