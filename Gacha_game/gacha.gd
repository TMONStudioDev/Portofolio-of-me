extends Node2D
@onready var gacha_btn = $Button
@onready var label = $gachalab
@export var Change = {
	"1"= 50,
	"2"= 25,
	"3"= 15,
	"4"= 6,
	"5"= 2.49,
	"6"= 1,
	"7"= 0.01
}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	gacha_btn.pressed.connect(gacha_pull)


func gacha_pull():
	var value = randf_range(0.0,100.0)
	if value > 40:
		label.text = "Common"
		label.modulate = Color(0.325, 0.325, 0.325, 1.0)
	elif value > 30:
		label.text = "Uncommon"
		label.modulate = Color(0.0, 0.913, 0.578, 1.0)
	elif value > 18:
		label.text = "Rare"
		label.modulate = Color(0.007, 0.226, 0.968, 1.0)
	elif value > 8:
		label.text = "Epic"
		label.modulate = Color(0.596, 0.325, 0.741, 1.0)
	elif value <= 3:
		label.text = "Legendary"
		label.modulate = Color(0.325, 0.325, 0.706, 1.0)
	elif value > 0.9:
		label.text = "Mythical"
		label.modulate = Color(0.926, 0.0, 0.0, 1.0)
	elif value > 0.1:
		label.text = "???"
		label.modulate = Color(0.4, 0.0, 1.0, 1.0)
	print(value)
