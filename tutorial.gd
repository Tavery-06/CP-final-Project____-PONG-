extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$"Main menu button".connect("pressed", Callable(self, "_on_mainmenu_pressed"))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_mainmenu_pressed():
	get_tree().change_scene_to_file("res://startscreen.tscn")
