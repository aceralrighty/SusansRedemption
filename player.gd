extends CharacterBody2D


@export var MAX_SPEED = 200
@export var MAX_ACCELL = 400
@export var MAX_FRIC = 1200

@onready var axis = Vector2.ZERO



func _physics_process(delta):
	pass
	
func get_input():
	axis.x = int(Input.is_action_just_pressed("Move_right")) - int(Input.is_action_just_pressed("Move_left"))
	axis.x = int(Input.is_action_just_pressed("Move_down")) - int(Input.is_action_just_pressed("Move_up"))
	

func move(delta):
	axis = get_input()
	
	if axis == Vector2.ZERO:
		pass 
		
	else:
		pass
		
	move_and_slide()
