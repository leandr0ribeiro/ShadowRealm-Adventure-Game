extends Node2D

#func _process(delta):
#	if Input.is_action_just_pressed("attack"):
#		var GrassEffect = load("res://Effects/GrassEffect.tscn")
#		var grassEffect = GrassEffect.instance()
#		var world = get_tree().current_scene
#		world.add_child(grassEffect)
#		grassEffect.global_position = global_position
#		queue_free()

const GrassEffect = preload("res://Effects/GrassEffect.tscn")

func crete_grass_effect():
	var grassEffect = GrassEffect.instance()
	get_parent().add_child(grassEffect)
	grassEffect.global_position = global_position

func _on_Hurtbox_area_entered(area):
	crete_grass_effect()
	queue_free()
