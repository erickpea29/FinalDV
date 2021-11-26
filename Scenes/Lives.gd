extends Node2D

func _ready():
	Livescounter.lives = 4
	
func _physics_process(delta):
	if Livescounter.lives == 2:
		$Live3.hide()
	if Livescounter.lives == 1:
		$Live2.hide()
	if Livescounter.lives == 0:
		get_tree().reload_current_scene()
		

