extends RigidBody2D

@export var initial_speed : int = 10
@export var speed_multiplier : float = 1.0

var current_speed = initial_speed

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var collition = move_and_collide(linear_velocity * current_speed * delta)
	
	if collition:
		linear_velocity = linear_velocity.bounce(collition.get_normal())
