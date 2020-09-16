extends Node2D

onready var cena = get_tree().get_current_scene()

func _ready():
	pass


func _on_Area2D_body_entered(body):
	$die.play()
	cena.kill()
