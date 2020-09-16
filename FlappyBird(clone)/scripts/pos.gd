extends Position2D

onready var cano = preload("res://scenes/pipe.tscn")

func _ready():
	randomize()


func _on_Timer_timeout():
	var novocano = cano.instance()
	novocano.set_position(get_position()+ Vector2(0,rand_range(50,180)))
	get_parent().add_child(novocano)
	pass # Replace with function body.
