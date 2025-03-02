extends Node2D

func _on_mouse_entered():
	var new_texture = preload("res://sprites/button_hovered.png")
	$"Area2D2/Sprite".texture = new_texture;


func _on_area_input_event(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
			var new_texture = preload("res://sprites/button_pressed.png")
			$"Area2D2/Sprite".texture = new_texture
		else:
			var new_texture = preload("res://sprites/button_hovered.png")
			$"Area2D2/Sprite".texture = new_texture

func _on_mouse_exited():
	var new_texture = preload("res://sprites/button_default.png")
	$"Area2D2/Sprite".texture = new_texture;
