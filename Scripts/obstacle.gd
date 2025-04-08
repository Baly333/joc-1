extends Area2D
var gravetat := Vector2.DOWN * 400
var direccio := Vector2.ZERO
func _ready() -> void:
	position = Vector2(-347, -161.0)
func _process(delta: float) -> void:
	position += gravetat * delta
func _disapear() -> void:
	print("1")
	visible = false
