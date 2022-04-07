function sc_glyph_text(argument0) {
/// @param glyph
//————————————————————————————————————————————————————————————————————————————————————————————————————
switch (argument0) {
	case ob_main.ref_glyph_lucky: return "// LUCKY //\nAllows you to draw extra cards when played."; break;
	case ob_main.ref_glyph_harvest: return "// HARVEST //\nConsumed berries return to your hand (if not full) when fainting."; break;
		case ob_main.ref_glyph_weakness: return "// WEAKNESS //\nThe opposing card's attack is lowered."; break;
		case ob_main.ref_glyph_ruthless: return "// RUTHLESS //\nThe opposing card's defense is lowered."; break;
		case ob_main.ref_glyph_courage: return "// COURAGE //\nRaises attack of nearby friendly Pokemon."; break;
	case ob_main.ref_glyph_piercing: return "// PIERCING ATTACK //\nAlways attacks the enemy trainer directly."; break;
	case ob_main.ref_glyph_counter: return "// COUNTERATTACK //\nWhen attacked, the attacker is also hurt (without fainting)."; break;
		case ob_main.ref_glyph_shield: return "// SHIELD //\nRaises defense of nearby friendly Pokemon."; break;
	case ob_main.ref_glyph_medic: return "// MEDIC //\nFully heals all friendly cards when played."; break;
	case ob_main.ref_glyph_tenacity: return "// TENACITY //\n50% chance: when fainting, returns to your hand (if not full)."; break;
	case ob_main.ref_glyph_bulwark: return "// BULWARK //\nSummons rocks on each empty side when played."; break;
	case ob_main.ref_glyph_fork: return "// FORK ATTACK //\nAttacks diagonally to its sides instead of straight ahead."; break;
	case ob_main.ref_glyph_vampire: return "// VAMPIRE //\nWhen attacking another card, half of the damage is absorbed."; break;
	case ob_main.ref_glyph_curse: return "// CURSE //\nWhen fainting, the enemy card is left with 1 HP."; break;
	case ob_main.ref_glyph_memento: return "// MEMENTO //\nAllows you to draw extra cards when fainting."; break;
	//
	case ob_main.ref_glyph_mist: return "// MIST //\nWhile this card is active, glyphs have no effect."; break;
	case ob_main.ref_glyph_transform: return "// TRANSFORM //\nTransforms into the opposing enemy Pokemon."; break;
}
//————————————————————————————————————————————————————————————————————————————————————————————————————
}