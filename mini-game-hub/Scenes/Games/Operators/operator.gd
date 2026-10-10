extends Node

var or_jouers: int = 50
var prix_epee: int = 35
var degats: int = 12
var vie: int = 100

func _ready() -> void:
	var remaining_gold: int = or_jouers - prix_epee
	print("Remaining gold: ", remaining_gold)
	
	var critical_damage: int = degats * 3
	print("Critical damage: ", critical_damage)
	
	var non_lethal_damages_count: int = vie / degats
	print("Non lethal damages count: ", non_lethal_damages_count)
	
	var remaining_life: int = vie % degats
	print("Remaining life: ", remaining_life)
	
	var can_buy: bool = or_jouers >= prix_epee
	print("Can buy: ", can_buy)
	
	var in_danger: bool = vie < 30 or degats > 50
	print("In danger: ", in_danger)
	
	vie -= critical_damage
	print("Life: ", vie)
