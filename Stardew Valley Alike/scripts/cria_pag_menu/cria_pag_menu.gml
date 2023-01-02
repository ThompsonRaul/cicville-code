// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cria_pag_menu(){
	var arg;
	var i = 0;
	repeat(argument_count){
		arg[i] = argument[i];
		i++;
	}
	
	var ed_grid_id = ds_grid_create(5, argument_count);
	i = 0;
	repeat(argument_count){
		var arr = arg[i];
		var tam_arr = array_length(arr);
		
		var xx = 0;
		repeat(tam_arr){
			ed_grid_id[# xx, i] = arr[xx];
			xx++;
		}
		i++;
	}
	
	return ed_grid_id;
}