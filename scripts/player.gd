extends Node2D

var velocidade = 500

func _process(delta: float) -> void:
	var direcao = Vector2.ZERO
	if Input.is_action_pressed("cima"):
		direcao.y = -1
	if Input.is_action_pressed("baixo"):
		direcao.y = +1
	if Input.is_action_pressed("esquerda"):
		direcao.x = -1
	if Input.is_action_pressed("direita"):
		direcao.x = +1
	position += velocidade * direcao * delta
