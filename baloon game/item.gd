extends Area2D

const redTexture = preload("res://pixil-frame-0-94.png")
const greenTexture = preload("res://pixil-frame-0-96.png")
const blueTexture = preload("res://pixil-frame-0-97.png")

const redItemTexture = preload("res://pixil-frame-0-101.png")
const greenItemTexture = preload("res://pixil-frame-0-102.png")
const blueItemTexture = preload("res://pixil-frame-0-103.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	match get_meta("color"):
		"red":
			print("red")
			$"Pixil-frame-0-94".texture = redTexture
		"green":
			print("green")
			$"Pixil-frame-0-94".texture = greenTexture
		"blue":
			print("blue")
			$"Pixil-frame-0-94".texture = blueTexture


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_body_entered(body):
	print(body)
	if body.has_meta("player"):
		$"Pixil-frame-0-101".global_position = body.global_position
		$"Pixil-frame-0-101".global_rotation = body.global_rotation
		match get_meta("color"):
			"red":
				print("red")
				$"Pixil-frame-0-101".texture = redItemTexture
			"green":
				print("green")
				$"Pixil-frame-0-101".texture = greenItemTexture
			"blue":
				print("blue")
				$"Pixil-frame-0-101".texture = blueItemTexture
		$"Pixil-frame-0-101".reparent(body)
		queue_free()
