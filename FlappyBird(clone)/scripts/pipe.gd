extends Node2D

export var speed = -100
onready var cena = get_tree().get_current_scene()

func _ready():
	set_process(true)

func _process(delta):
	set_position(get_position()+Vector2(speed*delta,0))
	
	if get_position().x < -50:
		queue_free()
		print('sifudeu')



func _on_top_body_entered(body):
	if body.get_name() == "player":
		$hit.play()
		cena.kill()


func _on_bottom_body_entered(body):
	if body.get_name() == "player":
		$hit.play()
		cena.kill()
		


func _on_pontinho_body_entered(body):
	$point.play()
	cena.pontuar()
