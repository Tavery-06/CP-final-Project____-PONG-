extends StaticBody2D

var win_height: int
var p_height: int
var scene_name: String


func _ready() -> void:
	win_height = get_viewport_rect().size.y
	p_height = $ColorRect.get_size().y
	scene_name = get_tree().current_scene.name


func _process(delta: float) -> void:
	if scene_name == "TwoPlayer":
		if Input.is_key_pressed(KEY_W):
			position.y -= get_parent().PADDLE_SPEED * delta
		elif Input.is_key_pressed(KEY_S):
			position.y += get_parent().PADDLE_SPEED * delta

	elif scene_name == "Main":
		if Input.is_key_pressed(KEY_UP):
			position.y -= get_parent().PADDLE_SPEED * delta
		elif Input.is_key_pressed(KEY_DOWN):
			position.y += get_parent().PADDLE_SPEED * delta

	position.y = clamp(position.y, p_height / 2, win_height - p_height / 2)
