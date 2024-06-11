extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_lvl_1_pressed():
	get_tree().change_scene_to_file("res://assets/scenes/levels/lvl1.tscn")


func _on_lvl_2_pressed():
	get_tree().change_scene_to_file("res://assets/scenes/levels/lvl2.tscn")


func _on_lvl_3_pressed():
	get_tree().change_scene_to_file("res://assets/scenes/levels/lvl3.tscn")


func _on_lvl_4_pressed():
	get_tree().change_scene_to_file("res://assets/scenes/levels/lvl4.tscn")


func _on_lvl_5_pressed():
	pass # Replace with function body.


func _on_lvl_6_pressed():
	pass # Replace with function body.


func _on_lvl_7_pressed():
	pass # Replace with function body.


func _on_lvl_8_pressed():
	pass # Replace with function body.
