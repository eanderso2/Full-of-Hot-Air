extends Area2D

var username = "player"
const redTexture = preload("res://assets/textures/pixil-frame-0-98.png")
const greenTexture = preload("res://assets/textures/pixil-frame-0-99.png")
const blueTexture = preload("res://assets/textures/pixil-frame-0-100.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	$"../CanvasLayer4".hide()
	$"..".set_meta("POIs",$"..".get_meta("POIs")+1)
	print($"..".get_meta("POIs"))
	
	match get_meta("color"):
		"red":
			#print("red")
			$Sprite2D.texture = redTexture
		"green":
			#print("green")
			$Sprite2D.texture = greenTexture
		"blue":
			#print("blue")
			$Sprite2D.texture = blueTexture


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.has_meta("player"):
		for child in body.get_children():
			if child.has_meta("color"):
				if child.get_meta("color") == get_meta("color"):
					$"..".set_meta("POIs",$"..".get_meta("POIs")-1)
					if $"..".get_meta("POIs") <= 0:
						print(get_tree().current_scene.name)
						print($"..".get_meta(("POIs")))
						SilentWolf.Scores.save_score(username, body.get_parent().score * -1, get_tree().current_scene.name)
						$"../CanvasLayer4".show()
						get_tree().paused = true
					child.queue_free()
					queue_free()
