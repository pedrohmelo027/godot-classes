extends Sprite2D
var velocidade = 400;
var velocidade_angular = PI;

func _process(delta): 
	var direcao = 0

	if Input.is_action_pressed("ui_left"):  # A
		direcao -= 1
	if Input.is_action_pressed("ui_right"):  # D
		direcao += 1
	rotation += velocidade_angular * delta * direcao
	
	var movimento = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		movimento = Vector2.UP.rotated(rotation) * velocidade
	if Input.is_action_pressed("ui_down"):  # S
		movimento = Vector2.DOWN.rotated(rotation) * velocidade

	position += movimento * delta
