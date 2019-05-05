extends Node2D

func _unhandled_input(event):
	if (event is InputEventMouseButton and event.pressed) or (OS.has_feature("Android") and event is InputEventMouseMotion):
		var position = get_global_mouse_position()
		# Clicks seem ... off for some reason. Not sure why. Adjust manually.
		#position.x -= Globals.TILE_WIDTH / 2
		#position.y -= Globals.TILE_HEIGHT
		
		$Dragon.get_node("ClickComponent")._clicked_on_map(position)
