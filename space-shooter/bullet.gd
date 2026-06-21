extends KinematicBody


var velo=Vector3()
onready var sc = get_parent().get_node("player")

func _physics_process(delta):
	move_and_slide(velo)


func _on_Area_body_entered(body):
	if body.is_in_group("Enemies"):
		get_parent().get_node("player/Label2").text="Score= "+str(sc.score)
		sc.score = sc.score+1
		body.queue_free()
		queue_free()
		if sc.score == 20:
			get_tree().change_scene("res://win.tscn")
