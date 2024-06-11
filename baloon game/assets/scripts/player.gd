extends RigidBody2D
var score = 0    
var startTime = 0 

func _init():
	startTime = Time.get_ticks_msec()/1000
func _process(delta):
	score = Time.get_ticks_msec()/1000 - startTime
	$"../CanvasLayer/Label".text = "score: " + str(int(score))
	if Input.is_action_pressed("up"):
		linear_velocity.y -= 3

func _on_area_2d_area_entered(area):
	if area.has_meta("ground"):
		$"../AudioStreamPlayer3".play()
		score = 0


func _on_audio_stream_player_finished():
	$"../AudioStreamPlayer".play()


func _on_audio_stream_player_2_finished():
	$"../AudioStreamPlayer2".play()
	



