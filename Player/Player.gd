extends KinematicBody2D

var speed: int = 400


func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	var velocity: Vector2 = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	
	move_and_slide(velocity * speed)
