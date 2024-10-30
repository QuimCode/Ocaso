extends Control

func _ready() -> void:
	# Llama al método play_music en el Singleton GlobalMusMenu al cargar la escena
	if self.is_class("Control"):
		GlobalMusMenu.play_music("menu")
	

# ================================= BUTTONS CONTROLS
	# ================================= MENU

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu/pre_inicio.tscn")

func _on_cargar_bt_pressed() -> void:
	pass # Replace with function body.

func _on_opciones_bt_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu/opciones_menu.tscn")

func _on_salir_bt_pressed() -> void:
	get_tree().quit()

# ================================= BUTTONS CONTROLS
	# ================================= OPTIONS

func _on_volver_bt_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Menu/menú.tscn")

# ================================= BUTTONS CONTROLS
	# ================================= PRE-INIT

func _on_comenzar_bt_pressed() -> void:
	GlobalMusMenu.stop_music()
	get_tree().change_scene_to_file("res://Scenes/Juego/Base/base.tscn")
