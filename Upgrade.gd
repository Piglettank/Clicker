extends Node

var upgradeName = "name"
var price = 0.0
var amount = 0
var speed = 1
var priceIncrease = 1.5

func onBuy():
	amount += 1
	price *= priceIncrease
	
func generate(delta):
	return amount * speed * delta
