extends Node


func ResetBall():
	$"%Ball".position = Vector2(640, 360)
	$"%Ball".AdjustStartVelocity()


func _on_BallBoundary_Left_body_entered(body: Node) -> void:
	ResetBall()


func _on_BallBoundary_Right_body_entered(body: Node) -> void:
	ResetBall()
