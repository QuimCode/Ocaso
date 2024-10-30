extends AudioStreamPlayer

var music_tracks = {
	"menu": preload("res://Resources/Music/musica_menu01.mp3"),
	#"gameplay": preload("res://path/to/gameplay_music.ogg"),
	#"safe_zone": preload("res://path/to/safe_zone_music.ogg"),
	#"credits": preload("res://path/to/credits_music.ogg")
}

func play_music(track_name: String) -> void:
	if music_tracks.has(track_name):
		if self.stream != music_tracks[track_name]:
			self.stream = music_tracks[track_name]
			self.play()
		elif not self.playing:
			self.play()
	else:
		print("Track no encontrado:", track_name)

func set_volume(db: float) -> void:
	self.volume_db = db

func stop_music() -> void:
	print("Stopping music")  # Línea de prueba
	self.stop()              # Intenta detener la música
	self.seek(0)             # Reinicia la posición de la pista al inicio
