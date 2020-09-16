extends Node2D


func _ready():
	pass


func _on_Button_pressed():
	get_tree().change_scene("res://scenes/game.tscn")
	get_tree().paused = false
