extends Sprite2D

@export var chicks: Array[Sprite2D] = []
@export var speed: float = 150.0

var current_chick_index: int = 0
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		current_chick_index += 1
		if current_chick_index > chicks.size() - 1:
			current_chick_index = 0
		
	var current_chick: Sprite2D = chicks[current_chick_index]	
	var distance:= position.distance_to(current_chick.global_position)
	if distance > 1:
		global_position = global_position.move_toward(current_chick.global_position, delta * speed)
