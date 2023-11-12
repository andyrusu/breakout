extends CharacterBody2D

const SPEED = 500.0

func _physics_process(delta):
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	print(velocity)
	velocity.y = move_toward(velocity.y, 0, SPEED)
	move_and_slide()