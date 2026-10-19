extends Node

var save: String = "  ana la brave;120;80"

func _ready() -> void:
	var save_parts: PackedStringArray = save.strip_edges().split(";")
	
	var name: String = save_parts[0]
	var gold: int = save_parts[1].to_int()
	var life: int = save_parts[2].to_int()

	gold += 30
	
	var title = name
	if title.to_lower().contains("brave"):
		title = "★ " + title
	print("%s | Or: %d | PV: %d" % [title, gold, life])
