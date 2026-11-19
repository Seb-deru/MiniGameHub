class_name Animal
extends Node


var animal_name: String
var age: int

func _init(_animal_name: String, _age: int) -> void:
	animal_name = _animal_name
	age = _age

func manger() -> void:
	print(animal_name + " mange")
	
func decrire() -> void:
	var age_label = "an"
	if age > 1:
		age_label += "s"
	print("%s, %d %s" % [animal_name, age, age_label])
