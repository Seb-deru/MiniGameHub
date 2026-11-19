extends Node

var animals: Array[Animal] = []

func _ready() -> void:
	var rex := Dog.new("Rex", 4, "Akita")
	var felix := Cat.new("Félix", 3)
	var titi := Bird.new("Titi", 1)
	var pingu := Pinguin.new("Pingu", 2)

	animals.append(rex)
	animals.append(felix)
	animals.append(titi)
	animals.append(pingu)

	for animal in animals:
		animal.decrire()
		animal.crier()
		
		if animal is Bird:
			animal.voler()
			
		if animal is Cat:
			animal.scratch()
