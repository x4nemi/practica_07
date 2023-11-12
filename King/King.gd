extends CharacterBody2D

const moveSpeed = 25
const maxSpeed = 50

const jumpHeight = -300
const up = Vector2(0,-1)
const gravity = 15

@onready var sprite = $"Sprite2D"
@onready var animationPlayer = $"AnimationPlayer"

#var velocity = Vector2()

func _physics_process(delta):
	velocity.y += gravity
	var friction = false
	var pos = get_position_delta()
	
	if Input.is_action_pressed("ui_right"):
		sprite.flip_h = false
		animationPlayer.play("Idle")
		velocity.x = min(velocity.x + moveSpeed, maxSpeed)
		move_and_slide()
	
	elif Input.is_action_pressed("ui_left"):
		sprite.flip_h = true
		animationPlayer.play("Idle")
		velocity.x = max(velocity.x - moveSpeed, -maxSpeed)
		move_and_slide()
	
	else:
		velocity.x = velocity.x
		animationPlayer.play("Idle")
		friction = true
	
	if is_on_floor():
		if Input.is_action_pressed("ui_accept"):
			velocity.y = jumpHeight
			move_and_slide()
		if friction == true:
			velocity.x = velocity.x#lerp(velocity.x, 0, 0.5)
	
	else:
		move_and_slide()
		if friction == true:
			velocity.x = velocity.x #lerp(velocity.x, 0, 0.01)
	
	#print(get_position_delta())

