if (hp > 0 && !immunity) {
   hp -= 5
   immunity = true
   alarm[1] = 30
   show_debug_message("immune")
}
function check() {
	if (other.id != global.currentPlayer) { // can occasionally lag game if knife hits player
		instance_destroy(global.currentPlayer); 
		//instance_destroy(); // Jose' note: deletes enemy we transfer into
		global.PlayerHighlightExisits = false; 
	}
}
