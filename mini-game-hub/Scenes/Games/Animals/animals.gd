extends Node

func _ready() -> void:
	var rex := Dog.new("Rex", 4, "Akita")
	var felix := Cat.new("Félix", 3)
	var titi := Bird.new("Titi", 1)

	rex.decrire() # Rex, 4 ans
	felix.manger() # Félix mange
	titi.decrire() # Titi, 1 ans
	
	rex.crier()
	felix.crier()
	titi.crier()
	
	titi.voler()
	felix.scratch()
