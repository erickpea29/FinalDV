extends Node2D

func _ready():
	$Dialog.hide()
	$AudioStreamPlayer.play()
	$AudioStreamPlayer.stop()


func _on_gun_body_entered(body):
	$Dialog.show()

func _on_Hide_Dialog_timeout():
	$Dialog.hide()
