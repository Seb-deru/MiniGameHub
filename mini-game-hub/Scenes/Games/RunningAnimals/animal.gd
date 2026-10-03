extends Sprite2D

@export var linear_speed: float = 100.0
@export var direction: Vector2 = Vector2(1, 0)

func _process(delta: float) -> void:
	position += direction.normalized() * linear_speed * delta
