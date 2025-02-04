extends Sprite2D
var speed = 500
var angular_speed = PI
func _process(delta):
	if Input.is_action_pressed("ui_left"):
		rotation += angular_speed * -1 * delta
	if Input.is_action_pressed("ui_right"):
		rotation += angular_speed * 1 * delta
		
	if Input.is_action_pressed("ui_up"):
		position += Vector2.UP.rotated(rotation) * speed * delta
	if Input.is_action_pressed("ui_down"):
		position += Vector2.DOWN.rotated(rotation) * speed  * delta
