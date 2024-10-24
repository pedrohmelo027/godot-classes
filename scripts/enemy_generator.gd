extends Node2D
@export var pre_inimigo: PackedScene = preload("res://scnes/enemy.tscn")
var intervalo = 1

func _process(delta):
	if intervalo > 0:
		intervalo -= delta;
	else:
		intervalo = randf_range(0.3, 1)
		var inimigo = pre_inimigo.instantiate()
		inimigo.position = Vector2(1131, randi_range(30, 551))
		get_node("../").add_child(inimigo)
