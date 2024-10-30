#extends Node
#
#var volume: float = 0  # Volumen inicial en decibelios
#var music_player: AudioStreamPlayer  # Variable para almacenar la referencia al AudioStreamPlayer
#
#func _ready():
	#var current_scene = get_tree().current_scene
	## Cambia esto por la ruta correcta al nodo AudioStreamPlayer en tu escena
	#music_player = current_scene.get_node("AudioStreamPlayer")  
	#if music_player:
		#print("AudioStreamPlayer encontrado.")
	#else:
		#print("AudioStreamPlayer no encontrado.")
#
#func set_volume_db(new_volume: float) -> void:
	## Actualiza el volumen en el AudioStreamPlayer y guarda el valor
	#volume = new_volume
	#if music_player:  # Asegúrate de que music_player no sea null
		#music_player.volume_db = volume

extends Node

var music_player: AudioStreamPlayer  # Variable para almacenar el AudioStreamPlayer
var volume: float = 0  # Volumen inicial en decibelios

func _ready() -> void:
	var current_scene = get_tree().current_scene
	music_player = current_scene.get_node("AudioStreamPlayer")  # Asegúrate de que esta ruta sea correcta

func set_volume_db(new_volume: float) -> void:
	if music_player:  # Verifica que music_player no sea null
		music_player.volume_db = new_volume
	else:
		print("AudioStreamPlayer no encontrado.")
