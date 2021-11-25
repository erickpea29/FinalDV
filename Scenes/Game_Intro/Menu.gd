extends Node2D

func _ready():
	$BackgroundAudio.play()

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/Top_Level/Room_Scene.tscn")

func _on_Exit_pressed():
	$".".get_tree().quit()

func _on_Instructions_pressed():
	pass # Replace with function body.
	#get_tree().change_scene("res://Scenes/Top_Level/Room_Scene.tscn")

func _on_BackgroundAudio_finished():
	$BackgroundAudio.play()
