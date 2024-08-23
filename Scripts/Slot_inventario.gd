extends Control

signal click_slot

func _on_button_pressed():
	click_slot.emit()
