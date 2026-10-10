extends Node

var health: int = 100

func _ready() -> void:
	health = take_damage(health)
	health = take_damage(health, 120)
	
	if health <= 0:
		print("Game over")
	else:
		print("Not dead yet !")

func take_damage(current_health: int, damage: int = 10) -> int:
	current_health -= damage
	if current_health < 0:
		current_health = 0
		
	return current_health	
