extends Area2D

const MySmokeResource = preload("res://Scenes/Sounds/Monster_1.tscn")

func _on_Node2D_body_entered(body):
		Global._prueba()
		MySmokeResource.instance()
		self.queue_free()

		


















