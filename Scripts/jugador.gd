extends CharacterBody2D
var velocitat := 200
var direccio := Vector2.ZERO
func _ready() -> void:
	position = Vector2(-105,412)
func _process(delta: float) -> void:
	direccio = Input.get_vector("moure_esquerra","moure_dreta","moure_amunt","moure_avall")
	velocity = direccio * velocitat
	move_and_slide()
