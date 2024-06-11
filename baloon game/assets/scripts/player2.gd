extends RigidBody2D
var score = 0    
var overflow = 0            
   
func _process(delta):
	score += linear_velocity.x / 10000
	$"../CanvasLayer/Label".text = "score: " + str(int(score))
	if Input.is_action_pressed("up"):
		linear_velocity.y -= 3
	if score-overflow > 500:
		$"..".position.x = position.x * -1
		overflow += 500

func _on_area_2d_area_entered(area):
	if area.has_meta("ground"):
		$"../AudioStreamPlayer3".play()
		score = 0
		overflow = 0


func _on_audio_stream_player_finished():
	$"../AudioStreamPlayer".play()


func _on_audio_stream_player_2_finished():
	$"../AudioStreamPlayer2".play()



