extends Control

func _on_GarageButton_pressed():
	print("Garage button pressed")
	get_tree().change_scene_to_file("res://scenes/Garage.tscn")
