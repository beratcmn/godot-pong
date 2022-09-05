extends KinematicBody2D

var speed: int = 400
var ball: KinematicBody2D


func _ready() -> void:
	ball = $"%Ball"


func _process(delta: float) -> void:
	pass


func _physics_process(delta: float) -> void:
	move_and_slide(Vector2(0, GetOpponentDirection() * speed))


func GetOpponentDirection() -> int:
	if abs(ball.position.y - position.y) < 25:
		return 0
	if ball.position.y < position.y: # ball is lower
		return -1
	elif ball.position.y > position.y: # ball is lower
		return 1
	else:
		return 0
