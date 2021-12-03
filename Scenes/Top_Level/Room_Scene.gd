extends Node2D

const MySmokeResource = preload("res://Scenes/Objects/Key.tscn")

func _ready():
	if Global.bul == false: 
		#Make instance
		var GrabedInstance= MySmokeResource.instance()
		#Attach it to the tree
		GrabedInstance.position = Vector2(660,265)
		self.add_child(GrabedInstance)

