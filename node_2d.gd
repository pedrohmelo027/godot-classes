extends Node2D
var velocidade = 260;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direcao = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		direcao.y -= 1
	if Input.is_action_pressed("ui_down"):
		direcao.y += 1
	if Input.is_action_pressed("ui_left"):
		direcao.x -= 1
	if Input.is_action_pressed("ui_right"):
		direcao.x += 1
	position += direcao * velocidade * delta
