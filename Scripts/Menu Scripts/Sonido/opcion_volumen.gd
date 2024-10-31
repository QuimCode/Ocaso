extends HSlider

func _ready() -> void:
	# Establece el valor del slider en función del volumen guardado
	value = int(lerp(0, 100, (GlobalMusMenu.volume_db + 50) / 50.0))

func _on_slider_value_changed(value: int) -> void:
	# Calcula el volumen en dB; 0 en el slider será -80 dB, y 100 será 0 dB
	var db = lerp(-50, 0, value / 100.0)
	GlobalMusMenu.volume_db = db  # Guarda el valor en el Singleton
	GlobalMusMenu.set_volume(db)

func _on_value_changed(value: float) -> void:
	_on_slider_value_changed(int(value))
