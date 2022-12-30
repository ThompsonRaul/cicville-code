// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function merge_number(num1, num2, amount){
	var n1 = argument0;
	var n2 = argument1;
	var qtd = argument2;
	
	var diff = n1 - n2
	var merged = n1 - (diff * qtd);
	
	return merged;
}