extends AnimatedSprite


var moveL=false
var moveR=false
export var speed=3
var dir=1
var bullet=preload("res://bullet.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if moveR:
		translate(Vector2(dir*speed,0))
		set_scale(Vector2(1.808,2.074))
	if moveL:
		translate(Vector2(dir*speed,0))
		set_scale(Vector2(-1.808,2.074))


func _on_shoot_pressed():
	var b=bullet.instance()
	b.position=$Position2D.global_position
	b.setdir(dir)
	get_tree().get_root().add_child(b) # Replace with function body.


func _on_right_button_down():
	moveR=true
	play("run") # Replace with function body.
	dir =1


func _on_left_button_down():
	moveL=true
	play("run") # Replace with function body.
	dir =-1


func _on_left_button_up():
	moveL=false
	play("idle") # Replace with function body.
	


func _on_right_button_up():
	moveR=false
	play("idle") # Replace with function body.


func _on_Button_pressed():
	get_tree().change_scene("res://soldier.tscn") # Replace with function body.


func _on_close_pressed():
	get_tree().quit() # Replace with function body.
