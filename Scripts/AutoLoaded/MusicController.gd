extends Node
var music = load("res://Audio/Music/questionably_good.ogg")
var playing=false
func _on_ready():
	pass
func Play_Music():
	if (!playing):
		$AudioStreamPlayer.stream = music
		$AudioStreamPlayer.play()
		playing=true

func _on_audio_stream_player_finished():
	playing=false
