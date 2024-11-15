extends CharacterBody2D

@export var movement_speed: float = 100

@onready var animated_sprite = $AnimatedSprite2D
var attack_animation_finished = true
var is_facing_right = true

func _physics_process(_delta):
    var input_direction = Vector2(
        Input.get_action_strength("right") - Input.get_action_strength("left"),
        Input.get_action_strength("down") - Input.get_action_strength("up")
    )
    velocity = input_direction * movement_speed

    # Update facing direction based on input
    if input_direction.x > 0:
        is_facing_right = true
    elif input_direction.x < 0:
        is_facing_right = false

    # Handle attack input first
    if Input.is_action_just_pressed("attack") and attack_animation_finished:
        attack_animation_finished = false
        if is_facing_right:
            animated_sprite.play("attack_right")
        else:
            animated_sprite.play("attack_left")
    # Handle movement animations if not attacking
    elif attack_animation_finished:
        if input_direction.x != 0:
            if is_facing_right:
                animated_sprite.play("right_run")
            else:
                animated_sprite.play("left_run")
        else:
            if is_facing_right:
                animated_sprite.play("idle_right")
            else:
                animated_sprite.play("idle_left")

    # Move the character
    move_and_slide()

func _on_animated_sprite_2d_animation_finished():
    attack_animation_finished = true
