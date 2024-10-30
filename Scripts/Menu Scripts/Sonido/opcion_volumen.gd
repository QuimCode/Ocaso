extends HSlider

@export
var bus_name: String = "Musica"

func _ready() -> void:
	# Configura el valor del slider al volumen actual del Singleton
	value = GlobalMusMenu.volume
	# Conectar la señal value_changed al método
	value_changed.connect(_on_value_changed)

func _on_value_changed(new_value: float) -> void:
	# Convierte el valor del slider de 0-100 a -80 a 0 dB
	var db_value = lerp(-80, 0, new_value / 100.0)  # Usar new_value aquí
	if GlobalMusMenu:  # Verifica si GlobalMusMenu existe
		GlobalMusMenu.set_volume_db(db_value)  # Ajusta el volumen en el Singleton
	else:
		print("GlobalMusMenu no está disponible.")
