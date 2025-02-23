extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_mouse_entered():
	var new_texture = preload("res://Sprites/Button Hovered.png")
	$"Area2D2/Sprite".texture = new_texture;


func _on_area_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if Input.is_mouse_button_pressed(1):
			var new_texture = preload("res://Sprites/Button Pressed.png")
			$"Area2D2/Sprite".texture = new_texture
		else:
			var new_texture = preload("res://Sprites/Button Hovered.png")
			$"Area2D2/Sprite".texture = new_texture
	pass # Replace with function body.

func _on_mouse_exited():
	var new_texture = preload("res://Sprites/Button Default.png")
	$"Area2D2/Sprite".texture = new_texture;
