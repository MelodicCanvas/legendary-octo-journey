extends CharacterBody2D

@export var movementSpeed : float = 100

@onready var _animated_sprite = $AnimatedSprite2D
var attackAnimationFinished = false
var rightRelease = false
func _physics_process(_delta):
	var input_direction = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"), 
		Input.get_action_strength("down") - Input.get_action_strength("up"),
	);
	if (Input.is_action_pressed("attack") && rightRelease) && !attackAnimationFinished:
		attackAnimationFinished=false
		_animated_sprite.play("attack_right")
	elif (Input.is_action_pressed("attack") && !rightRelease) && !attackAnimationFinished:
		attackAnimationFinished=false
		_animated_sprite.play("attack_left")
	elif Input.is_action_pressed("right"):
		attackAnimationFinished=false
		_animated_sprite.play("right_run")
		rightRelease=true
	elif Input.is_action_pressed("left"):
		attackAnimationFinished=false
		_animated_sprite.play("left_run")
		rightRelease=false
	elif (Input.is_action_just_released("right") || rightRelease):
		_animated_sprite.play("idle_right")
	else:
		_animated_sprite.play("idle_left")
		rightRelease=false
	velocity = input_direction*movementSpeed;

	move_and_slide();


func _on_animated_sprite_2d_animation_finished():
	attackAnimationFinished=true
