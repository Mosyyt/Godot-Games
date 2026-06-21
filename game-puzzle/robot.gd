extends AnimatedSprite


var moveL=false
var moveR=false
export var speed=3
var dir=1
var bullet=preload("res://bullet.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	play("idle") # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if moveR:
		translate(Vector2(dir*speed,0))
		set_scale(Vector2(1.808,2.074))
	if moveL:
		translate(Vector2(dir*speed,0))
		set_scale(Vector2(-1.808,2.074))
