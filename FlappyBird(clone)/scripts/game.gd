extends Node2D

onready var player = get_node("player")
var points = 0
var posicao = Vector2()
func _ready():
	$Control/Label.set_text(str(points))
	$label_game_over.visible = false
	$Button.visible = false
	$Sprite.visible = false
	pass

func kill():
	$ground/AnimationPlayer.stop()
	$Canos/Timer.stop()
	$player/anim.stop()
	get_tree().paused = true
	posicao = player.get_position()
	player.set_position(posicao)
	$label_game_over.visible = true
	$Button.visible = true
	$Sprite.visible = true
	$Control/AnimationPlayer.play("lose")
	
func pontuar():
	points += 1
	print(points)
	$Control/Label.set_text(str(points))

func _on_Button_pressed():
	get_tree().change_scene("res://scenes/intro.tscn")
	
