extends Node2D

const MySmokeResource = preload("res://Scenes/Objects/Key.tscn")

func _ready():
	if Global.bul == true: 
		print("Hola")
		#Make instance
		var GrabedInstance= MySmokeResource.instance()
		#Attach it to the tree
		GrabedInstance.position = Vector2(660,270)
		self.add_child(GrabedInstance)

