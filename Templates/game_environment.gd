## Scene for managing game levels. Intended to be the main scene. 
extends Node

var level_scene:Resource
var level:Node

func start_level(path:String):
	level_scene = load(path)
	restart_level()

func restart_level():
	if level:
		level.queue_free()
	level = level_scene.instantiate()
	add_child(level)
