extends Node

class_name Interactable

@export var dialog_scene: PackedScene

func get_interaction_text():
	return "Interact"

func interact():
	print("Interacted with %s" %name)
