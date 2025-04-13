extends Area2D
var gravetat := Vector2.DOWN * 400
var direccio := Vector2.ZERO
var caiguda := false
func _ready() -> void:
	$Timer.start()
	#position = Vector2(38, -41)
func _process(delta: float) -> void:
	if caiguda == true:
		position += gravetat*delta
func _on_body_entered(body: Node2D) -> void:
	$Sprite2D.visible  = false
	position = Vector2(332, -47)
	caiguda = false
	$Timer.start()
	
func _on_timer_4_timeout() -> void:
	$Sprite2D.visible = true
	caiguda = true
	
