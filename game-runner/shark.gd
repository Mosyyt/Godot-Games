extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var player = get_parent().get_node("fish")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if position.x>player.position.x:
		translate(Vector2(-3,0))
		set_scale(Vector2(-0.211,0.234))	
	if position.x<player.position.x:
		translate(Vector2(3,0))
		set_scale(Vector2(0.211,0.234))
	if position.y>player.position.y:
		translate(Vector2(0,-3))
		#set_scale(Vector2(0.211,0.234))
	if position.y<player.position.y:
		translate(Vector2(0,3))
	if position.distance_to(player.position)<=50:
		die()


func die():
	print("you lose")
	get_tree().change_scene("res://Control.tscn")
