class_name Dog
extends Animal

var breed: String

func _init(_animal_name: String, _age: int, _breed: String) -> void:
	super(_animal_name, _age)
	breed = _breed

func decrire() -> void:
	super.decrire()
	print("Breed: %s" % breed)

func crier()-> void:
	print("WOUAF")
