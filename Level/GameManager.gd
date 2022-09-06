extends Node

var PlayerScore: int = 0
var OpponentScore: int = 0

func ResetBall():
	$"%Ball".position = Vector2(640, 360)
	$"%Ball".AdjustStartVelocity()

func _process(delta: float) -> void:
	$"%Score".text = str(PlayerScore) + " : " + str(OpponentScore)
	
	if Input.is_action_pressed("reset_game"):
		PlayerScore = 0
		OpponentScore = 0
		ResetBall()

func _on_BallBoundary_Left_body_entered(body: Node) -> void:
	ResetBall()
	OpponentScore += 1


func _on_BallBoundary_Right_body_entered(body: Node) -> void:
	ResetBall()
	PlayerScore += 1
