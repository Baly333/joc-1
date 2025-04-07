extends CharacterBody2D
var gravetat := Vector2.DOWN * 980
func _ready() -> void:
	position = Vector2(-347, -161.0)
func _process(delta: float) -> void:
	velocity += gravetat * delta
	move_and_slide()
