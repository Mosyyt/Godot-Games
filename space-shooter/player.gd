extends KinematicBody


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const maxspeed = 30
const acceleration=0.75
var inputVector = Vector3()
var velo=Vector3()
var cooldown = 0
const COOLdown=8

onready var guns = [$gun1,$gun2]
onready var main = get_tree().current_scene
var Bullet = load("res://bullet.tscn")
var lives=3
onready var label=get_parent().get_node("Label2")
var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = "Lives= " +str(lives) # Replace with function body.

func _physics_process(delta):
	inputVector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	inputVector.y = Input.get_action_strength("ui_up") - Input.get_action_strength("ui_down")
	inputVector=inputVector.normalized()
	velo.x = move_toward(velo.x, inputVector.x * maxspeed, acceleration)
	velo.y = move_toward(velo.y, inputVector.y * maxspeed, acceleration)
	rotation_degrees.z = velo.x*-2
	rotation_degrees.x = velo.y/2
	rotation_degrees.y = -velo.x/2
	move_and_slide(velo)
	transform.origin.x=clamp(transform.origin.x, -13, 13)
	transform.origin.y=clamp(transform.origin.y, -8, 8)
	#shoot:
	if Input.is_action_just_pressed("ui_accept") and cooldown <= 0:
		cooldown = COOLdown * delta
		for i in guns:
			var bullet = Bullet.instance()
			main.add_child(bullet)
			bullet.transform = i.global_transform
			bullet.velo = bullet.transform.basis.z * -600
			
	#cooldown
	if cooldown >0:
		cooldown -=delta
		
	#collision loses live
func _on_Area_body_entered(body):
		if body.is_in_group("Enemies"):
			lives = lives-1
			#print(lives)
			$Label.text = "Lives= " +str(lives)
			if lives <= 0:
				get_tree().change_scene("res://ui.tscn")


