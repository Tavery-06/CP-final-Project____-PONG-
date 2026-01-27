extends Sprite2D

var score := [0, 0] # [Player, CPU]
var can_score := true
const PADDLE_SPEED := 575


func _on_ball_timer_timeout() -> void:
	can_score = true
	$ball.new_ball()


func _on_score_left_body_entered(body: Node2D) -> void:
	if not can_score:
		return

	can_score = false
	score[1] += 1
	$"display/CPU score".text = str(score[1])
	_on_win()
	$balltimer.start()


func _on_score_right_body_entered(body: Node2D) -> void:
	if not can_score:
		return

	can_score = false
	score[0] += 1
	$"display/Player score".text = str(score[0])
	_on_win()
	$balltimer.start()


func _on_win() -> void:
	if score[0] == 7:
		await _win_delay()
		get_tree().change_scene_to_file("res://winscreen_player_1.tscn")

	elif score[1] == 7:
		await _win_delay()
		get_tree().change_scene_to_file("res://winscreen_player_2.tscn")


func _win_delay() -> void:
	# Optional: stop the ball so nothing weird happens
	$ball.set_physics_process(false)

	# 1-second delay
	await get_tree().create_timer(1.0).timeout


func _on_timer_timeout() -> void:
	$scoreinfo.hide()
