extends Node2D
var frames = 0
var obsticle = preload("res://assets/scenes/obsicle.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed  time since the previous frame.
func _process(delta):
	if frames > 750:
		var instance = obsticle.instantiate()
		$"../..".add_child(instance)
		instance.position.x = $"../Node2D".position.x + 2000
		instance.position.y = randi_range(-100,100)
		frames = 0
	frames += 1
