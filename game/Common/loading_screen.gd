extends CanvasLayer

func _ready() -> void:
	$Control.hide()

func load_scene(scene : String):
	if !$AnimationPlayer.is_playing():
		$Control.show()
		$AnimationPlayer.play("load_in")
		await get_tree().create_timer(1.5).timeout
		$AnimationPlayer.play("RESET")
		get_tree().change_scene_to_file(scene)
		$AnimationPlayer.play("load_out")
		await $AnimationPlayer.animation_finished
		$Control.hide()
