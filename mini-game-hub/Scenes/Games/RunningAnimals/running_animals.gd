extends Node2D

@export var speed: int = 100

@onready var wolf: Sprite2D = $Wolf

func _process(delta: float) -> void:
	wolf.position.x = wolf.position.x + (delta * speed)
