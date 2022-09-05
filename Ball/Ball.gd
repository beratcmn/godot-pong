extends KinematicBody2D

var speed: int = 400
var velocity: Vector2 = Vector2.ZERO

func _ready() -> void:
	randomize()
	velocity.x = [-1, 1][randi() % 2]
	velocity.y = [-1, 1][randi() % 2]


func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	var collision_object = move_and_collide(velocity * speed * delta)
	if collision_object:
		velocity = velocity.bounce(collision_object.normal)