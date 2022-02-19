card_cat=choose(0,0,0,1);
//————————————————————————————————————————————————————————————————————————————————————————————————————
if card_cat=0 {
	do { //< delete later, random testing
	card_id=irandom_range(0,251);
	card_level=irandom_range(1,20);
	card_exp=irandom(100);
	card_glyph_a=irandom_range(-1,17);
	if card_glyph_a>=0 { card_glyph_b=irandom_range(-1,17); }
	else { card_glyph_b=-1; }
	if card_glyph_b>=0 { card_glyph_c=irandom_range(-1,17); }
	else { card_glyph_c=-1; }
	//————————————————————————————————————————————————————————————————————————————————————————————————————
	//00 normal, 01 grass, 02 fire, 03 water, 04 electric, 05 flying, 06 fighting, 07 psychic, 08 fairy
	//09 ground, 10 rock, 11 bug, 12 poison, 13 ice, 14 dragon, 15 steel, 16 ghost, 17 dark
	//
	if card_id<=386 { card_sheet=sp_poke_a; }
	else { card_sheet=sp_poke_b; }
	card_enigma=false;
	var i=0;
	repeat (8) {
		card_evo[i]=-1;
		i+=1;
	}
	//
	switch (card_id) {
		case 000:
			card_name="MissingNo.";
			card_stage=1;
			card_type_a=05; card_type_b=00;
			card_base_hp=33; card_base_atk=136+6; card_base_def=0+6;
			card_grid_x=0; card_grid_y=0; break;
		case 001:
			card_name="Bulbasaur";
			card_stage=1; card_evo[0]=002;
			card_type_a=01; card_type_b=12;
			card_base_hp=45; card_base_atk=49+65; card_base_def=49+65;
			card_grid_x=1; card_grid_y=1; break;
		case 002:
			card_name="Ivysaur";
			card_stage=2; card_evo[0]=003;
			card_type_a=01; card_type_b=12;
			card_base_hp=60; card_base_atk=62+80; card_base_def=63+80;
			card_grid_x=2; card_grid_y=1; break;
		case 003:
			card_name="Venusaur";
			card_stage=3;
			card_type_a=01; card_type_b=12;
			card_base_hp=80; card_base_atk=82+100; card_base_def=83+100;
			card_grid_x=3; card_grid_y=1; break;
		case 004:
			card_name="Charmander";
			card_stage=1; card_evo[0]=005;
			card_type_a=02; card_type_b=-1;
			card_base_hp=39; card_base_atk=52+60; card_base_def=43+50;
			card_grid_x=5; card_grid_y=1; break;
		case 005:
			card_name="Charmeleon";
			card_stage=2; card_evo[0]=006;
			card_type_a=02; card_type_b=-1;
			card_base_hp=58; card_base_atk=64+80; card_base_def=58+65;
			card_grid_x=6; card_grid_y=1; break;
		case 006:
			card_name="Charizard";
			card_stage=3;
			card_type_a=02; card_type_b=05;
			card_base_hp=78; card_base_atk=84+109; card_base_def=78+85;
			card_grid_x=7; card_grid_y=1; break;
		case 007:
			card_name="Squirtle";
			card_stage=1; card_evo[0]=008;
			card_type_a=03; card_type_b=-1;
			card_base_hp=44; card_base_atk=48+50; card_base_def=65+64;
			card_grid_x=10; card_grid_y=1; break;
		case 008:
			card_name="Wartortle";
			card_stage=2; card_evo[0]=009;
			card_type_a=03; card_type_b=-1;
			card_base_hp=59; card_base_atk=63+65; card_base_def=80+80;
			card_grid_x=11; card_grid_y=1; break;
		case 009:
			card_name="Blastoise";
			card_stage=3;
			card_type_a=03; card_type_b=-1;
			card_base_hp=79; card_base_atk=83+85; card_base_def=100+105;
			card_grid_x=12; card_grid_y=1; break;
		case 010:
			card_name="Caterpie";
			card_stage=1; card_evo[0]=011;
			card_type_a=11; card_type_b=-1;
			card_base_hp=45; card_base_atk=30+20; card_base_def=35+20;
			card_grid_x=14; card_grid_y=1; break;
		case 011:
			card_name="Metapod";
			card_stage=2; card_evo[0]=012;
			card_type_a=11; card_type_b=-1;
			card_base_hp=50; card_base_atk=20+25; card_base_def=55+25;
			card_grid_x=15; card_grid_y=1; break;
		case 012:
			card_name="Butterfree";
			card_stage=3;
			card_type_a=11; card_type_b=05;
			card_base_hp=60; card_base_atk=45+90; card_base_def=50+80;
			card_grid_x=1; card_grid_y=2; break;
		case 013:
			card_name="Weedle";
			card_stage=1; card_evo[0]=014;
			card_type_a=11; card_type_b=12;
			card_base_hp=40; card_base_atk=35+20; card_base_def=30+20;
			card_grid_x=2; card_grid_y=2; break;
		case 014:
			card_name="Kakuna";
			card_stage=2; card_evo[0]=015;
			card_type_a=11; card_type_b=12;
			card_base_hp=45; card_base_atk=25+25; card_base_def=50+25;
			card_grid_x=3; card_grid_y=2; break;
		case 015:
			card_name="Beedrill";
			card_stage=3;
			card_type_a=11; card_type_b=12;
			card_base_hp=65; card_base_atk=90+45; card_base_def=40+80;
			card_grid_x=4; card_grid_y=2; break;
		case 016:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 017:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 018:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 019:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 020:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 021:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 022:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 023:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 024:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 025:
			card_name="Pikachu";
			card_stage=1; card_evo[0]=026;
			card_type_a=04; card_type_b=-1;
			card_base_hp=35; card_base_atk=55+50; card_base_def=40+50;
			card_grid_x=3; card_grid_y=3; break;
		case 026:
			card_name="Raichu";
			card_stage=2;
			card_type_a=04; card_type_b=-1;
			card_base_hp=60; card_base_atk=90+90; card_base_def=55+80;
			card_grid_x=13; card_grid_y=3; break;
		case 027:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 028:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 029:
			card_name="Nidoran F";
			card_stage=1; card_evo[0]=030;
			card_type_a=12; card_type_b=-1;
			card_base_hp=55; card_base_atk=47+40; card_base_def=52+40;
			card_grid_x=4; card_grid_y=4; break;
		case 030:
			card_name="Nidorina";
			card_stage=2; card_evo[0]=031;
			card_type_a=12; card_type_b=-1;
			card_base_hp=70; card_base_atk=62+55; card_base_def=67+55;
			card_grid_x=5; card_grid_y=4; break;
		case 031:
			card_name="Nidoqueen";
			card_stage=3;
			card_type_a=12; card_type_b=09;
			card_base_hp=90; card_base_atk=92+75; card_base_def=87+85;
			card_grid_x=6; card_grid_y=4; break;
		case 032:
			card_name="Nidoran M";
			card_stage=1; card_evo[0]=033;
			card_type_a=12; card_type_b=-1;
			card_base_hp=46; card_base_atk=57+40; card_base_def=40+40;
			card_grid_x=7; card_grid_y=4; break;
		case 033:
			card_name="Nidorino";
			card_stage=2; card_evo[0]=034;
			card_type_a=12; card_type_b=-1;
			card_base_hp=61; card_base_atk=72+55; card_base_def=57+55;
			card_grid_x=8; card_grid_y=4; break;
		case 034:
			card_name="Nidoking";
			card_stage=3;
			card_type_a=12; card_type_b=09;
			card_base_hp=81; card_base_atk=102+85; card_base_def=77+75;
			card_grid_x=9; card_grid_y=4; break;
		case 035:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 036:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 037:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 038:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 039:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 040:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 041:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 042:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 043:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 044:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 045:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 046:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 047:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 048:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 049:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 050:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 051:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 052:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 053:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 054:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 055:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 056:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 057:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 058:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 059:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 060:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 061:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 062:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 063:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 064:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 065:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 066:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 067:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 068:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 069:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 070:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 071:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 072:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 073:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 074:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 075:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 076:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 077:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 078:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 079:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 080:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 081:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 082:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 083:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 084:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 085:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 086:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 087:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 088:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 089:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 090:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 091:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 092:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 093:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 094:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 095:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 096:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 097:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 098:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 099:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 100:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 101:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 102:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 103:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 104:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 105:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 106:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 107:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 108:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 109:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 110:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 111:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 112:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 113:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 114:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 115:
			card_name="Kangaskhan";
			card_stage=1;
			card_type_a=00; card_type_b=-1;
			card_base_hp=105; card_base_atk=95+40; card_base_def=80+80;
			card_grid_x=10; card_grid_y=11; break;
		case 116:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 117:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 118:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 119:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 120:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 121:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 122:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 123:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 124:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 125:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 126:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 127:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 128:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 129:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 130:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 131:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 132:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 133:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 134:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 135:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 136:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 137:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 138:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 139:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 140:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 141:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 142:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 143:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 144:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 145:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 146:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 147:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 148:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 149:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 150:
			card_name="Mewtwo";
			card_stage=1; card_enigma=true;
			card_type_a=07; card_type_b=-1;
			card_base_hp=106; card_base_atk=110+154; card_base_def=90+90;
			card_grid_x=4; card_grid_y=14; break;
		case 151:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 152:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 153:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 154:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 155:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 156:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 157:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 158:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 159:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 160:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 161:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 162:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 163:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 164:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 165:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 166:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 167:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 168:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 169:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 170:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 171:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 172:
			card_name="Pichu";
			card_stage=0; card_evo[0]=025;
			card_type_a=04; card_type_b=-1;
			card_base_hp=20; card_base_atk=40+35; card_base_def=15+35;
			card_grid_x=7; card_grid_y=16; break;
		case 173:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 174:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 175:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 176:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 177:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 178:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 179:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 180:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 181:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 182:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 183:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 184:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 185:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 186:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 187:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 188:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 189:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 190:
			card_name="Aipom";
			card_stage=1; card_evo[0]=424;
			card_type_a=00; card_type_b=-1;
			card_base_hp=55; card_base_atk=70+40; card_base_def=55+55;
			card_grid_x=14; card_grid_y=17; break;
		case 191:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 192:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 193:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 194:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 195:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 196:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 197:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 198:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 199:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 200:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 201:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 202:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 203:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 204:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 205:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 206:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 207:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 208:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 209:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 210:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 211:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 212:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 213:
			card_name="Shuckle";
			card_stage=1;
			card_type_a=11; card_type_b=10;
			card_base_hp=20; card_base_atk=10+10; card_base_def=230+230;
			card_grid_x=9; card_grid_y=22; break;
		case 214:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 215:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 216:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 217:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 218:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 219:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 220:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 221:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 222:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 223:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 224:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 225:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 226:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 227:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 228:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 229:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 230:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 231:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 232:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 233:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 234:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 235:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 236:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 237:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 238:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 239:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 240:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 241:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 242:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 243:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 244:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 245:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 246:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 247:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 248:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 249:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 250:
			card_name="";
			card_stage=1; card_evo[0]=000;
			card_type_a=00; card_type_b=-1;
			card_base_hp=000; card_base_atk=000+000; card_base_def=000+000;
			card_grid_x=000; card_grid_y=000; break;
		case 251:
			card_name="Celebi";
			card_stage=1; card_enigma=true;
			card_type_a=07; card_type_b=01;
			card_base_hp=100; card_base_atk=100+100; card_base_def=100+100;
			card_grid_x=7; card_grid_y=25; break;
	}
	} until (card_name!=""); //< delete later, random testing
	//————————————————————————————————————————————————————————————————————————————————————————————————————
	card_full_hp=ceil((card_base_hp*card_level)/40); //hp: 1/255 -> 1/7 to 1/128
	card_full_atk=ceil((card_base_atk*card_level)/100); //atk: 20/~250 -> 1/3 to 4/50
	card_full_def=ceil((card_base_def*card_level)/175); //def: 35/460 -> 1/3 to 4/53
	//
	card_atk=card_full_atk;
	card_def=card_full_def;
	card_hp=card_full_hp;
	//————————————————————————————————————————————————————————————————————————————————————————————————————
	//if card_stage=1 and card_evo[0]=-1 {
	//	if card_base_hp+card_base_atk+card_base_def>=400 { card_cost_total=3; }
	//	else if card_base_hp+card_base_atk+card_base_def>=200 { card_cost_total=2; }
	//	else { card_cost_total=1; }
	//}
	//else { card_cost_total=card_stage; }
	//if card_enigma=true { card_cost_total+=1; }
	//————————————————————————————————————————————————————————————————————————————————————————————————————
	if card_full_hp+card_full_atk+card_full_def>=80 { card_cost_total=3; }
	else if card_full_hp+card_full_atk+card_full_def>=50 or card_level>=20 { card_cost_total=2; }
	else if card_full_hp+card_full_atk+card_full_def>=20 or card_level>=10 { card_cost_total=1; }
	else { card_cost_total=0; }
	if card_enigma=true { card_cost_total+=1; }
	//
	var i=0;
	repeat (4) {
		card_cost[i]=-1;
		i+=1;
	}
	if card_cost_total=1 and card_enigma=false { card_cost[0]=card_type_a; }
	else if card_cost_total=1 and card_enigma=true { card_cost[0]=20; }
	else if card_cost_total=2 and card_type_b=-1 and card_enigma=false { card_cost[0]=card_type_a; card_cost[1]=card_type_a; }
	else if card_cost_total=2 and card_type_b>=0 and card_enigma=false { card_cost[0]=card_type_a; card_cost[1]=card_type_b; }
	else if card_cost_total=2 and card_enigma=true { card_cost[0]=card_type_a; card_cost[1]=20; }
	else if card_cost_total=3 and card_type_b=-1 and card_enigma=false { card_cost[0]=card_type_a; card_cost[1]=card_type_a; card_cost[2]=card_type_a; }
	else if card_cost_total=3 and card_type_b>=0 and card_enigma=false { card_cost[0]=card_type_a; card_cost[1]=card_type_a; card_cost[2]=card_type_b; }
	else if card_cost_total=3 and card_type_b=-1 and card_enigma=true { card_cost[0]=card_type_a; card_cost[1]=card_type_a; card_cost[2]=20; }
	else if card_cost_total=3 and card_type_b>=0 and card_enigma=true { card_cost[0]=card_type_a; card_cost[1]=card_type_b; card_cost[2]=20; }
	else if card_cost_total=4 and card_type_b=-1 { card_cost[0]=card_type_a; card_cost[1]=card_type_a; card_cost[2]=card_type_a; card_cost[3]=20; }
	else if card_cost_total=4 and card_type_b>=0 { card_cost[0]=card_type_a; card_cost[1]=card_type_a; card_cost[2]=card_type_b; card_cost[3]=20; }
	//
	var i=0;
	repeat (4) {
		//normal, grass, fire, water, electric, flying
		if card_cost[i]=00 or card_cost[i]=01 or card_cost[i]=02 or card_cost[i]=03 or card_cost[i]=04 or card_cost[i]=05 { card_cost[i]=0; } //oran
		//psychic, fairy, bug, poison, ghost, dark
		else if card_cost[i]=07 or card_cost[i]=08 or card_cost[i]=11 or card_cost[i]=12 or card_cost[i]=16 or card_cost[i]=17 { card_cost[i]=1; } //leppa
		//fighting, ground, rock, ice, dragon, steel
		else if card_cost[i]=06 or card_cost[i]=09 or card_cost[i]=10 or card_cost[i]=13 or card_cost[i]=14 or card_cost[i]=15 { card_cost[i]=2; } //lum
		//enigma
		else if card_cost[i]=20 { card_cost[i]=3; } //enigma
		i+=1;
	}
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
else if card_cat=1 {
	card_id=irandom_range(2001,2004);
	//
	switch (card_id) {
		case 2001:
			card_name="Oran Berry"; break;
		case 2002:
			card_name="Leppa Berry"; break;
		case 2003:
			card_name="Lum Berry"; break;
		case 2004:
			card_name="Enigma Berry"; break;
	}
}