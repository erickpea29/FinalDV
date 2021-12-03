extends Node2D

#Load the resourse using preload
const MySmokeResource = preload("res://Scenes/Objects/Key.tscn")

func _ready():
	if Global.bul == true: 
		#Make instance
		var GrabedInstance= MySmokeResource.instance()
		#Attach it to the tree
		GrabedInstance.position = Vector2(670,260)
		self.add_child(GrabedInstance)
