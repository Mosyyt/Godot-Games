extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var income = 500
var bill = 150

# Called when the node enters the scene tree for the first time.
func _ready():
	var rest = income - bill
	print(rest) # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
