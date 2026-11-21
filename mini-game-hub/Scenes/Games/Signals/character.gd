class_name Character
extends Node2D

signal life_changed(new_life: int)
signal died()

var dead: bool = false
var health: int = 100:
	set(value):
		health = clampi(value, 0, 100)
		life_changed.emit(health)
		
		dead = value < 0
		
		if dead:
			died.emit()
		
		

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("hit_character"):
		hit_character(15)

func hit_character(damage: int):
	if dead:
		return
		
	health -= damage
	

func reset() -> void:
	health = 100
	dead = false
