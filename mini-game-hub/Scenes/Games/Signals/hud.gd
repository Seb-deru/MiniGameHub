class_name HUD
extends CanvasLayer

signal restart()

@onready var label: Label = $Label
@onready var button: Button = $Button

func _ready() -> void:
	button.pressed.connect(_on_restart_pressed)

func update_life(health: int) -> void:
	label.text = "PV: %d" % health
	
func display_restart_btn() -> void:
	button.show()

func _on_restart_pressed() -> void:
	button.hide()
	restart.emit()
