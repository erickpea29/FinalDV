extends Node2D

#VARIABLES

func _ready():
	$BackgroundAudio.play()
	$Mouse_Pointer.emitting = true

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/Top_Level/Room_Scene.tscn")

func _on_Exit_pressed():
	$".".get_tree().quit()

func _on_Instructions_pressed():
	pass # Replace with function body.
	#get_tree().change_scene("res://Scenes/Top_Level/Room_Scene.tscn")

#func _on_BackgroundAudio_finished():
#	$BackgroundAudio.play()

func _input(event):
   # Mouse in viewport coordinates.
	if event is InputEventMouseMotion:
		$Mouse_Pointer.global_position = event.position

func botones():
	if !$Control/Start.is_hovered():
		$Control/Start.flat = true
	else:
		$Control/Start.flat = false
	
	if !$Control/Instructions.is_hovered():
		$Control/Instructions.flat = true
	else:
		$Control/Instructions.flat = false
	
	if !$Control/Exit.is_hovered():
		$Control/Exit.flat = true
	else:
		$Control/Exit.flat = false

func _physics_process(delta):
	botones()
