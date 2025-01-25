extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/GridContainer/lvl1.grab_focus()


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
	get_tree().change_scene_to_file("res://assets/scenes/levels/lvl5.tscn")


func _on_lvl_6_pressed():
	get_tree().change_scene_to_file("res://assets/scenes/levels/lvl6.tscn")


func _on_lvl_7_pressed():
	get_tree().change_scene_to_file("res://assets/scenes/levels/lvl7.tscn")


func _on_lvl_8_pressed():
	get_tree().change_scene_to_file("res://assets/scenes/levels/lvl8.tscn")


func _on_button_pressed():
	get_tree().change_scene_to_file("res://assets/scenes/start menu.tscn")
