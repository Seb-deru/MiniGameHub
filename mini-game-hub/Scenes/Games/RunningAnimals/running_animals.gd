extends Node2D

@onready var wolf: Sprite2D = $Wolf
@onready var rabbit: Sprite2D = $Rabbits/Rabbit
@onready var rabbit_2: Sprite2D = $Rabbits/Rabbit2
@onready var rabbit_3: Sprite2D = $Rabbits/Rabbit3
@onready var rabbit_4: Sprite2D = $Rabbits/Rabbit4

func _process(delta: float) -> void:
	wolf.position += Vector2(100, 0) * delta
	
	rabbit.position += Vector2(0, 100) * delta
	rabbit_2.position += Vector2(0, 150) * delta
	rabbit_3.position += Vector2(0, 200) * delta
	rabbit_4.position += Vector2(0, 150) * delta
