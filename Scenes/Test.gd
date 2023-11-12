extends Node2D

@onready var scoreLabel : Label = $UI/ScoreContainer/HBoxContainer/ScoreValue

@onready var path : PathFollow2D = $Path2D/PathFollow2D
@onready var ball : RigidBody2D = $Ball

@export var paddle_speed : float = 5.0

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move_paddle_from_input()
	
	ball.add_constant_force(Vector2.ZERO)

func move_paddle_from_input():
	var direction = Input.get_axis("ui_left", "ui_right")
	path.progress += direction * paddle_speed


func _on_ball_body_entered(body):
	if (body is Block):
		print(body)
