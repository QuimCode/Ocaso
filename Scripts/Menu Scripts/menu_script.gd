extends Control

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/pre_inicio.tscn")


func _on_cargar_bt_pressed() -> void:
	pass # Replace with function body.


func _on_opciones_bt_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/opciones_menu.tscn")


func _on_salir_bt_pressed() -> void:
	get_tree().quit()



func _on_volver_bt_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/menú.tscn")
