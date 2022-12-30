colidivel = false;

larguraQuadro = 32;
alturaQuadro = 64;

tipoPlantacao = 0;
dias = 0;
estagioCrescimento = 0;
estagioCrescimentoDuracao = 0;
custo = 0;
maxEstagioCrescimento = (sprite_get_width(spr_plantacao)/larguraQuadro) - 1;
totalmenteCrescido = false;
brilhinho = -1;

xx = x-(larguraQuadro/2)+2;
yy = y-alturaQuadro+6;