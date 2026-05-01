extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_id_pressed() -> void:
	TranslationServer.set_locale("id")
	print("indo")


func _on_in_pressed() -> void:
	TranslationServer.set_locale("en")
	print("inggris")


func _on_ja_pressed() -> void:
	TranslationServer.set_locale("ja")
	print("jepang")
