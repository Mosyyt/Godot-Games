extends Label


# Declare member variables here. Examples:
# var a = 2


func _ready():
	#self.text = str(Global.coin2)
	pass


func _process(delta):
	self.text = str(Global.coin1)
	
	

#func _input(ev):
	#if ev is InputEventKey and ev.scancode == KEY_L or KEY_H:
		#if Global.coin1 >= 0:
			#Global.coin1 -= 50
			#pass


func _on_Button_pressed():
	if Global.coin1 > 0:
		Global.coin1 -= 50
	elif Global.coin1 == 0:
		Global.coin1 = 0
