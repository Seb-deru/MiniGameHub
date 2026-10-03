extends Sprite2D

@export var speed_x: int = 100
@export var speed_y: int = 100

func _process(delta: float) -> void:
	position += Vector2(speed_x, speed_y) * delta
