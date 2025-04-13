extends Node2D
var vides := 3  
var current_level := 0

func _ready() -> void:
	$TimerDemo.start()
	$GameOver.visible = false
	$Timerjoc.start()
	$Nivell.visible = false
	$Vides.visible = false
func _on_timer_demo_timeout() -> void:
	$Demo.visible = false
	$Vides.visible = true
	$Nivell.visible = true
	$TimerFirstLevel.start()
func _on_timer_first_level_timeout() -> void:
	$Nivell.visible = false
func perdre_vida():
	vides -= 1
	update_vides_label()
	print("Vides restants:", vides)
	if vides <= 0:
		game_over()
		
func update_vides_label():
	$Vides.text = "Vides: " + str(vides)
func game_over():
	get_tree().change_scene_to_file("res://Scenes/GameOver.tscn")



func _on_timerjoc_timeout() -> void:
	$Obstacle.gravetat *= 1.2
	$Obstacle2.gravetat *= 1.2
	$Obstacle3.gravetat *= 1.2
	$Obstacle4.gravetat *= 1.2
	$Obstacle5.gravetat *= 1.2
	$Obstacle6.gravetat *= 1.2
	$Obstacle7.gravetat *= 1.2
	current_level += 1
	$Nivell.text = "Level " + str(current_level)
	$Nivell.visible = true
	$TimerEtiqueta.start()

func _on_timer_etiqueta_timeout() -> void:
	$Nivell.visible = false
