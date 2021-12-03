extends Node2D

const MySmokeResource = preload("res://Scenes/Objects/Key.tscn")

func _ready():
	$Dialog.hide()
	if Global.bul == false: 
		#Make instance
		var GrabedInstance= MySmokeResource.instance()
		#Attach it to the tree
		GrabedInstance.position = Vector2(660,265)
		self.add_child(GrabedInstance)

#OBJECT INTERACTION
#Window
func _on_Window_body_entered(body):
	$Dialog.text = str("It´s raining really hard...")
	$Dialog.show()
	$Hide_Dialogs.start()
#Buro
func _on_Buro_body_entered(body):
	$Dialog.text = str("I´ve found a key...")
	$Dialog.show()
	$Hide_Dialogs.start()
#Buro2
func _on_Buro2_body_entered(body):
	$Dialog.text = str("Just another buro.")
	$Dialog.show()
	$Hide_Dialogs.start()

func _on_Hide_Dialogs_timeout():
	$Dialog.hide()
