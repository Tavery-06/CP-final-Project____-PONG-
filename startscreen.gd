extends Node2D



func _ready():
	$"start button".connect("pressed", Callable(self, "_on_start_pressed"))


func _on_start_pressed():
	get_tree().change_scene_to_file("res://main.tscn")
