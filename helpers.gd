class Strings:
	# String name and float price
	static func priceString(name, price):
		var format_string = "{name}: ${price}"
		return format_string.format({"name": name, "price": str(snappedf(price, 1))})
		
	static func ownedString(amount):
		var format_string = "Owned ({amount})"
		return format_string.format({"amount": str(amount)})
