extends CharacterBody2D


var speed = Globals.SPEED 
var health = Globals.HEALTH

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
# disabled as game is top down and hopefully wont be needed (prone to change later as this is a quick fix)

func _physics_process(_delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed

	move_and_slide()
