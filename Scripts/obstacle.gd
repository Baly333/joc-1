extends Area2D
var gravetat := Vector2.DOWN * 400
var direccio := Vector2.ZERO
var caiguda := true
#func _ready() -> void:
	#position = Vector2(38, -41)
func _process(delta: float) -> void:
	if caiguda == true:
		position += gravetat*delta


func _on_body_entered(body: Node2D) -> void:
	$Sprite2D.visible  = false
	position = Vector2(37, -45)
	$Timer.start()
	caiguda = false


func _on_timer_timeout() -> void:
	$Sprite2D.visible = true
	caiguda = true
