extends Node2D

@onready var wolf: Sprite2D = $Wolf
@onready var rabbit: Sprite2D = $Rabbit

func _process(delta: float) -> void:
	wolf.position += Vector2(100, 0) * delta
	rabbit.position += Vector2(0, 100) * delta
