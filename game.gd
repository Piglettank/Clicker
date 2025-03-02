extends Node2D

var money = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var fromClickers = $"Clicker".generate(delta)
	var fromGrandmas = $"Grandma".generate(delta)
	money += fromClickers
	money += fromGrandmas
	$Button/Boints.set_text(str(snappedf(money, 1)))
	

func _on_upgrade_purchased(_viewport, event, _shape_idx, upgradeName):
	if event is InputEventMouseButton:
		if Input.is_action_just_pressed('mouse_click'):
			var upgrade = get_node(upgradeName)
			if money >= upgrade.price:
				money -= upgrade.price
				upgrade.buy()


func _on_clicked(_viewport, event, _shape_idx):
	if event is InputEventMouseButton:
		if Input.is_action_just_pressed('mouse_click'):
			money += 1
			print("%10d" % money)
