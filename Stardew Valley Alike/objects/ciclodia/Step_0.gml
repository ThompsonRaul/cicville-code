//incrementa tempo
if(keyboard_check_pressed(ord("T"))){pausaTempo = !pausaTempo;}


if(!pausaTempo){
	
	segundos += incrementaTempo;
	minutos = segundos/60;
	horas = minutos/60;

	

	if(desenhaLuzDia){
		#region Controle de Iluminação
		var escuros, cores, faseInicio, faseFim;
		
		if(horas > fase.nascerDoSol and horas <= fase.diaPadrao){
			escuros = [maxEscuridao, 0.25];
			cores = [merge_color(c_black, c_navy, 0.25), c_orange];
			faseInicio = fase.nascerDoSol;
			faseFim = fase.diaPadrao;
		}
		
		else if(horas > fase.diaPadrao and horas <= fase.porDoSol){
			escuros = [0.25, 0, 0, 0, 0.25];
			cores = [c_orange, c_orange, c_white, c_orange, c_orange];
			faseInicio = fase.diaPadrao;
			faseFim = fase.porDoSol;
		}
		
		else if(horas > fase.porDoSol and horas <= fase.noite){
			escuros = [0.25, maxEscuridao];
			cores = [c_orange, c_navy, merge_color(c_black, c_navy, 0.25)];
			faseInicio = fase.porDoSol;
			faseFim = fase.noite;
		}
		
		else{
			escuros = [maxEscuridao];
			cores = [merge_color(c_black, c_navy, 0.25)];
			faseInicio = fase.noite;
			faseFim = fase.nascerDoSol;
		}

		#endregion
	
	#region Altera grau de escuridão e cor dependendo do tempo
		//Cores
		if(faseInicio == fase.noite){
			corLuz = cores[0];
			}
		else{
			var cc = ((horas - faseInicio) / (faseFim - faseInicio)) * (array_length(cores)-1);
			var c1 = cores[floor(cc)];
			var c2 = cores[ceil(cc)];
		
			corLuz = merge_color(c1, c2, cc-floor(cc));
		}
		//Escuridão
		if(faseInicio == fase.noite){
			escuridao = escuros[0];
			}
		else{
			var dd = ((horas - faseInicio)/ (faseFim - faseInicio)) * (array_length(escuros)-1);
			var d1 = escuros[floor(dd)];
			var d2 = escuros[ceil(dd)];
		
			escuridao = lerp(d1, d2, dd-floor(dd));
			
		}
		#endregion
	}


	#region Checagem de ciclo
		if(horas>=24){
			segundos = 0;
			dias++;
			with(plantacoes){event_perform(ev_other, ev_user1);}
			if(dias > 30){
				dias = 1;
				temporadas++;
				if(temporadas > 4){
					temporadas = 1;
					anos++;
				}
			}

		}
	#endregion
}