extends Node2D



func _ready():
	$"start button".connect("pressed", Callable(self, "_on_start_pressed"))
	$"start button2".connect("pressed", Callable(self, "_on_start2_pressed"))
	$"Tutorial button".connect("pressed", Callable(self, "_on_tutorial_pressed"))
func _on_start_pressed():
	get_tree().change_scene_to_file("res://main.tscn")
	
func _on_start2_pressed():
	get_tree().change_scene_to_file("res://two .player.tscn")
func _on_tutorial_pressed():
	get_tree().change_scene_to_file("res://two .player.tscn")
