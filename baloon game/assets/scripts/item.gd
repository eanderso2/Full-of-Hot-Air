extends Area2D

const redTexture = preload("res://assets/textures/pixil-frame-0-94.png")
const greenTexture = preload("res://assets/textures/pixil-frame-0-96.png")
const blueTexture = preload("res://assets/textures/pixil-frame-0-97.png")

const redItemTexture = preload("res://assets/textures/pixil-frame-0-101.png")
const greenItemTexture = preload("res://assets/textures/pixil-frame-0-102.png")
const blueItemTexture = preload("res://assets/textures/pixil-frame-0-103.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	match get_meta("color"):
		"red":
			#print("red")
			$"Pixil-frame-0-94".texture = redTexture
		"green":
			#print("green")
			$"Pixil-frame-0-94".texture = greenTexture
		"blue":
			#print("blue")
			$"Pixil-frame-0-94".texture = blueTexture


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_body_entered(body):
	print(body)
	if body.has_meta("player"):
		$"Pixil-frame-0-101".set_meta("color",get_meta("color"))
		body.mass += 1
		match get_meta("color"):
			"red":
				print("red")
				$"Pixil-frame-0-101".texture = redItemTexture
				$"Pixil-frame-0-101".global_position = body.global_position + Vector2(0,-4)
				$"Pixil-frame-0-101".global_rotation = body.global_rotation
				$"Pixil-frame-0-101".z_index += 1
			"green":
				print("green")
				$"Pixil-frame-0-101".texture = greenItemTexture
				$"Pixil-frame-0-101".global_position = body.global_position + Vector2(-10,1)
				$"Pixil-frame-0-101".global_rotation = body.global_rotation
			"blue":
				print("blue")
				$"Pixil-frame-0-101".texture = blueItemTexture
				$"Pixil-frame-0-101".global_position = body.global_position + Vector2(10,-2)
				$"Pixil-frame-0-101".global_rotation = body.global_rotation
		$"Pixil-frame-0-101".reparent(body)
		queue_free()
