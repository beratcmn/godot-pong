extends Node

var PlayerScore: int = 0
var OpponentScore: int = 0


func _process(delta: float) -> void:
	$"%Score".text = str(PlayerScore) + " : " + str(OpponentScore)
	
	if Input.is_action_pressed("reset_game"):
		PlayerScore = 0
		OpponentScore = 0
		ResetBall()

func _physics_process(delta: float) -> void:
	# this part makes sure that player and opponents x position stays the same
	$"../Player".position.x = 50
	$"../Opponent".position.x =  1280 - 50

func ResetBall():
	$"%Ball".position = Vector2(640, 360)
	$"%Ball".AdjustStartVelocity()

func PlayScoreSound():
	$"%ScoreSound".play()

func ScoreAchieved():
	ResetBall()
	PlayScoreSound()
	

func _on_BallBoundary_Left_body_entered(body: Node) -> void:
	OpponentScore += 1
	ScoreAchieved()

func _on_BallBoundary_Right_body_entered(body: Node) -> void:
	PlayerScore += 1
	ScoreAchieved()
