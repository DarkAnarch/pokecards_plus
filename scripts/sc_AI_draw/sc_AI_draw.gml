function sc_AI_draw(argument0) {
/// @param AI_level
//————————————————————————————————————————————————————————————————————————————————————————————————————
var enemy_draw_confirm=false, enemy_draw_cat=-1;
//————————————————————————————————————————————————————————————————————————————————————————————————————
// RANDOM
if argument0=0 {
	do {
		enemy_draw_cat=irandom(1);
		if (enemy_draw_cat=0 and enemycard_draw_points>=card_drawcost_main and enemycard_maindeck[0]!=-1) or
		(enemy_draw_cat=1 and enemycard_draw_points>=card_drawcost_berry and enemycard_berrydeck[0]!=-1) {
			enemy_draw_confirm=true;
		}
	} until (enemy_draw_confirm=true);
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
// BERRIES IF NEEDED
else if argument0>=1 {
	var i=0, berries_needed, berries_held;
	berries_needed[0]=0;
	berries_needed[1]=0;
	berries_needed[2]=0;
	berries_needed[3]=0;
	berries_held[0]=0;
	berries_held[1]=0;
	berries_held[2]=0;
	berries_held[3]=0;
	//
	repeat (enemycard_hand_total) {
		if enemycard_hand[i].card_cat=0 {
			berries_needed[0]+=enemycard_hand[i].card_cost_total_type[0]; //oran
			berries_needed[1]+=enemycard_hand[i].card_cost_total_type[1]; //leppa
			berries_needed[2]+=enemycard_hand[i].card_cost_total_type[2]; //lum
			berries_needed[3]+=enemycard_hand[i].card_cost_total_type[3]; //enigma
		}
		else if enemycard_hand[i].card_cat=1 {
			berries_held[enemycard_hand[i].card_id-3000]+=1;
		}
		i+=1;
	}
	do {
		if (enemycard_draw_points>=card_drawcost_berry and enemycard_berrydeck[0]!=-1) and
		((berries_needed[0]>berries_held[0]) or
		(berries_needed[1]>berries_held[1]) or
		(berries_needed[2]>berries_held[2])) {
			enemy_draw_cat=1;
			enemy_draw_confirm=true;
		}
		else if (enemycard_draw_points>=card_drawcost_main and enemycard_maindeck[0]!=-1) {
			enemy_draw_cat=0;
			enemy_draw_confirm=true;
		}
		else if (enemycard_draw_points>=card_drawcost_berry and enemycard_berrydeck[0]!=-1) {
			enemy_draw_cat=1;
			enemy_draw_confirm=true;
		}
	} until (enemy_draw_confirm=true);
	//
	sc_AI_report("(total berries needed: " + string(berries_needed[0]) + "+" + string(berries_needed[1]) + "+" + string(berries_needed[2]) + "+" + string(berries_needed[3]) +
	" / berries held: " + string(berries_held[0]) + "+" + string(berries_held[1]) + "+" + string(berries_held[2]) + "+" + string(berries_held[3]) + ")");
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
if enemy_draw_cat=0 {
	var var_card_selected=enemycard_maindeck[enemycard_maindeck_total-1];
}
else if enemy_draw_cat=1 {
	var var_card_selected=enemycard_berrydeck[enemycard_berrydeck_total-1];
}
//
enemycard_hand_total+=1;
enemycard_hand[enemycard_hand_total-1]=var_card_selected;
//var_card_selected.card_face=true; //cheat
//
if enemy_draw_cat=0 {
	enemycard_maindeck_total-=1;
	enemycard_maindeck[enemycard_maindeck_total]=-1;
	enemycard_draw_points-=card_drawcost_main;
}
else if enemy_draw_cat=1 {
	enemycard_berrydeck_total-=1;
	enemycard_berrydeck[enemycard_berrydeck_total]=-1;
	enemycard_draw_points-=card_drawcost_berry;
}
//
sc_AI_report("Draw (AI level " + string(argument0) + ") > " + string(var_card_selected.card_name));
//————————————————————————————————————————————————————————————————————————————————————————————————————
}