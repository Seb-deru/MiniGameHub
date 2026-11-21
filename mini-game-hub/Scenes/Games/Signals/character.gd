class_name Character
extends Node2D

signal life_changed(new_life: int)
signal died()

var health: int = 100
var dead: bool = false

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("hit_character"):
		hit_character(15)

func hit_character(damage: int):
	if dead:
		return
	
	dead = damage >= health
	
	health = clampi(health - damage, 0, health)
	life_changed.emit(health)
	
	if dead:
		died.emit()

func reset() -> void:
	health = 100
	dead = false
	life_changed.emit(health)
