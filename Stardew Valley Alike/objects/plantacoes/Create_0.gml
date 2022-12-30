ed_tipos_plantacoes = -1;
ed_instancias_plantacoes = -1;
ed_dados_plantacoes = ds_grid_create(4, 1);
ds_grid_clear(ed_dados_plantacoes, -1);

enum plantacao{
	tomate, 
	batata,
	cenoura,
	alcachofra,
	pimenta,
	cabaca,
	milho
	
}

criaTipoPlantacao(4, 40, "tomate");
criaTipoPlantacao(3, 30, "batata");
criaTipoPlantacao(2, 15, "cenoura");
criaTipoPlantacao(5, 55, "alcachofra");
criaTipoPlantacao(7, 80, "pimenta");
criaTipoPlantacao(1, 10, "cabaca");
criaTipoPlantacao(6, 65, "milho");

plantando = false;
selecionaPlantacao = 0;

mx = 0;
my = 0;

tamCel = 32;
