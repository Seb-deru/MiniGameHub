extends Node2D

@export var speed_x: int = 100
@export var speed_y: int = 0

@onready var wolf: Sprite2D = $Wolf

func _process(delta: float) -> void:
	wolf.position += Vector2(speed_x, speed_y) * delta
