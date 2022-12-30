//Redimensiona o grid
var num_inst = instance_number(obj_profundidade_pai);
var pGrid = ed_profundidadegrid;
ds_grid_resize(pGrid, 2, num_inst);

//Adiciona as instâncias ao grid
var yy = 0;
with(obj_profundidade_pai){
	pGrid[# 0, yy] = id;
	pGrid[# 1, yy] = y;
	yy++;
}

//Organiza o grid em ordem ascendente
ds_grid_sort(pGrid, 1, true);

//Faz um loop pelo grid e desenha todas as instâncias
var inst;
yy = 0;
repeat(num_inst){
	//pega um id
	inst = pGrid[# 0, yy];
	//se desenha
	with(inst){
		event_perform(ev_draw, 0);
	}
	
	yy++;
}