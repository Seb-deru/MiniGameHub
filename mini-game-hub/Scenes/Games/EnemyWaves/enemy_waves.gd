extends Node

var wave_size: int = 8
var enemy_hp: int = 30
var total_hp: int = 0

func _ready() -> void:
	for i in range(1, wave_size + 1):
		var is_boss: bool = i % 4 == 0
		
		var message: String = "Ennemi " + str(i)
		if is_boss:
			message += ": BOSS"
		print(message)
		
		if is_boss:
			total_hp += enemy_hp * 2
		else: 
			total_hp += enemy_hp
		
	print("Total hp: ", total_hp)
