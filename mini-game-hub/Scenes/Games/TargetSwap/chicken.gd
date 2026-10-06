extends Sprite2D

@onready var chick: Sprite2D = $"../Chick"
@onready var chick_2: Sprite2D = $"../Chick2"

@export var speed: float = 150.0

var current_chick: Sprite2D

func _ready() -> void:
	current_chick = chick
	
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		if current_chick == chick:
			current_chick = chick_2
		else:
			current_chick = chick
			
	var direction:= position.direction_to(current_chick.position)
	translate(direction * speed * delta)
