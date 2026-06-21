extends Sprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var time = 0
var result = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	#result = add(9,9)
	#print(result) # Replace with function body.
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#time+=delta
	#print(round(time))
	if Input.is_key_pressed(KEY_RIGHT):
		translate(Vector2(5,0))
	if Input.is_key_pressed(KEY_LEFT):
		translate(Vector2(-5,0))
	if Input.is_key_pressed(KEY_DOWN):
		translate(Vector2(0,5))
	if Input.is_key_pressed(KEY_UP):
		translate(Vector2(0,-5))
#func add (n1,n2):
	#return n1+n2
