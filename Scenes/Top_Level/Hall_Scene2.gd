extends Node2D

const MySmokeResource = preload("res://Assets/enemy/Enemy.tscn")

func _ready():
	$Dialog.hide()
	if Global.bul == false: 
		print("Hola")
		#Make instance
		var GrabedInstance= MySmokeResource.instance()
		#Attach it to the tree
		GrabedInstance.position = Vector2(830,450)
		self.add_child(GrabedInstance)

func _on_Picture_body_entered(body):
	$Dialog.text = str("I always hate this picture.")
	$Dialog.show()
	$HideDialog.start()

func _on_HideDialog_timeout():
	$Dialog.hide()

func _on_Door_body_entered(body):
	$Dialog.text = str("It's locked.")
	$Dialog.show()
	$HideDialog.start()
