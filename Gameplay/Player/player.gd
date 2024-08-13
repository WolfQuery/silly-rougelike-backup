extends CharacterBody2D

var speed = Globals.SPEED 
var health = Globals.HEALTH

func _physics_process(_delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * speed

	move_and_slide()
