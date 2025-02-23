extends Area2D
const Helpers = preload("res://helpers.gd")


# Called when the node enters the scene tree for the first time.
func _ready():
	$"Data".price = 10
	$"Data".speed = 1
	
	$"PriceLabel".set_text(Helpers.Strings.priceString("Clicker", $"Data".price))
	$"OwnedLabel".set_text(Helpers.Strings.ownedString($"Data".amount))

func buy():
	$"Data".onBuy()
	$"PriceLabel".set_text(Helpers.Strings.priceString("Clicker", $"Data".price))
	$"OwnedLabel".set_text(Helpers.Strings.ownedString($"Data".amount))
