extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	SilentWolf.configure({
	"api_key": "Dq0se9GGSj6CQKqSA8Uqe1DspMnF4Gdz3niPqhpD",
	"game_id": "fullofhotair",
	"log_level": 2
  })

	SilentWolf.configure_scores({
	"open_scene_on_close": "res://assets/scenes/level select.tscn"
  })

	print(AudioServer.get_bus_volume_db(1))


func _on_button_pressed():
	get_tree().change_scene_to_file("res://assets/scenes/level select.tscn")


func _on_button_3_pressed():
	hide()
	$"../CanvasLayer2".show()

func _on_button_2_pressed():
	get_tree().quit()


func _on_h_slider_value_changed(value):
	AudioServer.set_bus_volume_db(1,linear_to_db(value/100))
	print((linear_to_db(value/100)))


func _on_button_4_pressed():
	$"../CanvasLayer2".hide()
	show()


func _on_h_slider_2_value_changed(value):
	AudioServer.set_bus_volume_db(2,linear_to_db(value/100))
	print(linear_to_db(value/100))


func _on_audio_stream_player_finished():
	$"../AudioStreamPlayer".play()
