extends Sprite2D

var score := [0 , 0] #0 Player, 0 CPU Score
const PADDLE_SPEED : int = 500


func _on_ball_timer_timeout() -> void:
	$ball.new_ball()


func _on_score_left_body_entered(body: Node2D) -> void:
	score[1] += 1
	$"display/CPU score".text = str (score[1])
	$balltimer.start()

func _on_score_right_body_entered(body: Node2D) -> void:
	score[0] += 1
	$"display/Player score".text = str (score[1])
	$balltimer.start()
