extends PathFollow2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var dead = false
var dir=1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if !dead:
		$robot.play("run")
		unit_offset+=0.4*dir*delta
		set_scale(Vector2(1*dir,1))
		if unit_offset>=0.9:
			dir=-1
		elif unit_offset<=0.1:
				dir=1


func _on_Area2D_area_entered(area):
	dead=true
	$robot.play("dead")
	yield(get_tree().create_timer(0.7),"timeout")
	$robot.stop()
	get_tree().paused=true # Replace with function body.
