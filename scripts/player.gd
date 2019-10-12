extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var speed = 200
var gravity = 30
var jump = 100
var motion = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

func _physics_process(delta):
	motion.x = 0
	if not is_on_floor():
		motion.y += gravity
	
	if Input.is_action_pressed("ui_right"):
		motion.x += speed
	if Input.is_action_pressed("ui_left"):
		motion.x -= speed
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		motion.y = -jump

	move_and_slide(motion, Vector2(0, -1))

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
