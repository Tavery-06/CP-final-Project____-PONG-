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
	$balltimer.start()


func _on_score_right_body_entered(body: Node2D) -> void:
	if not can_score:
		return

	can_score = false
	score[0] += 1
	$"display/Player score".text = str(score[0])
	$balltimer.start()
