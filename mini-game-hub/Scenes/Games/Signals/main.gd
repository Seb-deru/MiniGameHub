extends Node

@onready var character: Node2D = $Character
@onready var hud: CanvasLayer = $Hud

func _ready() -> void:
	character.life_changed.connect(_on_life_changed)
	character.died.connect(_on_died)
	
	hud.restart.connect(_on_restart)
	
	hud.update_life(character.health)

func _on_life_changed(health: int) -> void:
	hud.update_life(health)

func _on_died() -> void:
	hud.display_restart_btn()

func _on_restart() -> void:
	character.reset()
