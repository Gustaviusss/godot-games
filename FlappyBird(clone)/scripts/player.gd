extends RigidBody2D
export var speed = 150
func _ready():
	pass

func _input(event):
	if Input.is_action_just_pressed("ui_select") or InputEventScreenTouch:
		fly()

func fly():
	$anim.play("fly")
	linear_velocity = Vector2(0,0)
	apply_impulse(Vector2(0,0),Vector2(0,-speed))
	$fly7.play()
