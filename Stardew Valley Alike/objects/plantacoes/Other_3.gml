if(ds_exists(ed_tipos_plantacoes, ds_type_grid)){
	ds_grid_destroy(ed_tipos_plantacoes);
}

if(ds_exists(ed_instancias_plantacoes, ds_type_grid)){
	ds_grid_destroy(ed_instancias_plantacoes);
}

if(ds_exists(ed_dados_plantacoes, ds_type_grid)){
	ds_grid_destroy(ed_dados_plantacoes);
}
