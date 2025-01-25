extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("menu"):
		show()
		get_tree().paused = true
		
func _on_button_pressed():
	hide()
	get_tree().paused = false


func _on_button_3_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://assets/scenes/level select.tscn")


func _on_button_4_pressed():
	hide()
	$"../CanvasLayer3/HSlider".value = db_to_linear(AudioServer.get_bus_volume_db(1))*100
	$"../CanvasLayer3/HSlider2".value = db_to_linear(AudioServer.get_bus_volume_db(2))*100
	$"../CanvasLayer3".show()

func _on_h_slider_value_changed(value):
	AudioServer.set_bus_volume_db(1,linear_to_db(value/100))
	print((linear_to_db(value/100)))


func _on_button_5_pressed():
	$"../CanvasLayer3".hide()
	show()


func _on_h_slider_2_value_changed(value):
	AudioServer.set_bus_volume_db(2,linear_to_db(value/100))
	print(linear_to_db(value/100))
