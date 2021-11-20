extends KinematicBody2D

var Main_Character_Animation = null
var move = Vector2.ZERO


func _physics_process(delta):
	move = Vector2.ZERO
	
	if Main_Character_Animation != null:
		move = position.direction_to(Main_Character_Animation.position) 
	else: 
		move = Vector2.ZERO
		
	move = move.normalized() * 2
	move = move_and_collide(move)

func _on_Area2D_body_entered(body):
	if body != self:
		Main_Character_Animation = body


func _on_Area2D_body_exited(body):
	Main_Character_Animation = null
