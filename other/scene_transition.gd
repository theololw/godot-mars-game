extends CanvasLayer

func change_scene(target: String) -> void:
	$transition.play("dissolve")
	await $transition.animation_finished
	get_tree().change_scene_to_file(target)
	$transition.play_backwards("dissolve")
