extends Node2D

#Load the resourse using preload
const MySmokeResource = preload("res://Assets/enemy/Enemy.tscn")

func _ready():
	if Global.bul == false: 
		print("Hola")
		#Make instance
		var GrabedInstance= MySmokeResource.instance()
		#Attach it to the tree
		GrabedInstance.position = Vector2(830,450)
		self.add_child(GrabedInstance)
