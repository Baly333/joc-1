extends CharacterBody2D
var velocitat := 400
var direccio := 0
var vides : int = 3
func _ready() -> void:
	position = Vector2(-76, 389)
func _process(delta: float) -> void:
	direccio = Input.get_axis("moure_esquerra","moure_dreta")
	velocity = Vector2 (direccio * velocitat, 0)
	move_and_slide()
