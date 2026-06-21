extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass# # Replace with function body.
	


func _process(delta):
	self.text = str(Global.coin2)
	



#func _input(ev):
	#if ev is InputEventKey and ev.scancode == KEY_Z or KEY_X:
		#if Global.coin2 >= 0:
			#Global.coin2 -= 50
			


func _on_Button_pressed():
	if Global.coin2 > 0:
		Global.coin2 -= 50
	elif Global.coin2 == 0:
		Global.coin2 = 0
	get_parent().get_parent().get_node("hero1").visible=true
	
