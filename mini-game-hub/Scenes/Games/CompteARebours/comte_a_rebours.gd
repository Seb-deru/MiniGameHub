extends Node

var enemies: Array[String] = ["Dracula", "Bob", "Dragon"]

func _ready() -> void:
	for i in range(3, 0, -1):
		print("Départ dans ", i)
	for enemy in enemies:
		print(enemy)
