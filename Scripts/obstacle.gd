extends Area2D
var gravetat := Vector2.DOWN * 400
var direccio := Vector2.ZERO
#func _ready() -> void:
	#position = Vector2(38, -41)
func _process(delta: float) -> void:
	position += gravetat*delta


func _on_body_entered(body: Node2D) -> void:
	$Sprite2D.visible  = false
