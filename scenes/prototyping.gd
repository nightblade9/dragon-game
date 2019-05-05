extends Node2D

func _ready():
	$Area2D.visible = true

func _on_Area2D_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton and event.pressed) or (OS.has_feature("Android") and event is InputEventMouseMotion):
		var position = get_global_mouse_position()
		# Clicks seem ... off for some reason. Not sure why. Adjust manually.
		#position.x -= Globals.TILE_WIDTH / 2
		#position.y -= Globals.TILE_HEIGHT
		
		$Dragon.get_node("ClickComponent")._clicked_on_map(position)
