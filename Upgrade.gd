extends Area2D
const Helpers = preload("res://helpers.gd")

@export var upgradeName = "Clicker";
@export var price = 10; 
@export var priceIncrease = 1.5;
@export var speed = 1;
var amount = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	$"PriceLabel".set_text(Helpers.Strings.priceString(upgradeName, price))
	$"OwnedLabel".set_text(Helpers.Strings.ownedString(amount))

func buy():
	amount += 1
	price *= priceIncrease
	$"PriceLabel".set_text(Helpers.Strings.priceString(upgradeName, price))
	$"OwnedLabel".set_text(Helpers.Strings.ownedString(amount))
	
func generate(delta):
	return amount * speed * delta
