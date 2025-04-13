extends Area2D
var gravetat := Vector2.DOWN * 400
var direccio := Vector2.ZERO
var caiguda := false
func _ready() -> void:
	$Timer.start()
	position = Vector2(576, -48)
func _on_timer_timeout() -> void:
	$Sprite2D.visible = true
	caiguda = true
	var seguent_espera = randf_range(0.4, 0.8) 
	$Timer.wait_time = seguent_espera
	$Timer.start()
func _process(delta: float) -> void:
	if caiguda == true:
		position += gravetat*delta


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Jugador": 
		get_tree().current_scene.perdre_vida()
	$Sprite2D.visible  = false
	position = Vector2(576, -48)
	$Timer.start()
	caiguda = false
