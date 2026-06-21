extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed =5
var dir=1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	translate(Vector2(speed*dir,0))
	set_scale(Vector2(dir*0.05,0.05))
	
func setdir(direc):
	dir=direc
	
