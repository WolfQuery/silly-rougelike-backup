extends CharacterBody2D

var speed = Globals.SPEED 
var health = Globals.HEALTH

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@onready var animation_player = $AnimatedSprite2D

func _physics_process(_delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed
	play_animations(direction)
	move_and_slide()

func play_animations(direction):
	if direction == Vector2.ZERO:
		animation_player.play("idle")
	elif direction.x != 0 or direction.y != 0:
		animation_player.play("run")
	if Input.is_action_just_pressed("attack"):
		animation_player.play("attack")
