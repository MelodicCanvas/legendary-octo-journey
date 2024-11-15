extends CharacterBody2D

@export var movement_speed: float = 100

@onready var animated_sprite = $AnimatedSprite2D
var attack_animation_finished = true
var is_facing_right = true

func _physics_process(delta):
	var input_direction = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	velocity = input_direction * movement_speed
	
	# Update facing direction based on input
	if Input.is_action_pressed("right"):
		is_facing_right = true
		if attack_animation_finished:
			animated_sprite.play("right_run")
	elif Input.is_action_pressed("left"):
		is_facing_right = false
		if attack_animation_finished:
			animated_sprite.play("left_run")
	# Handle attack input
	elif Input.is_action_just_pressed("attack") and attack_animation_finished:
		attack_animation_finished = false
		if is_facing_right:
			animated_sprite.play("attack_right")
		else:
			animated_sprite.play("attack_left")
	# Idle animation when not moving
	elif attack_animation_finished:
		if is_facing_right:
			animated_sprite.play("idle_right")
		else:
			animated_sprite.play("idle_left")

	# Move the character
	move_and_slide()

func _on_animated_sprite_2d_animation_finished():
	attack_animation_finished = true
