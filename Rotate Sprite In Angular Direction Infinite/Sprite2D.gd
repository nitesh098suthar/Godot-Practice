extends Sprite2D

func _ready():
	position = get_viewport_rect().size / 2  # Set sprite position to center# Set pivot to sprite center

var angular_speed = PI
var speed = 400

func _process(delta):
	rotation += angular_speed * delta #use + or - to change the direction
	var velocity = Vector2.UP.rotated(rotation)
	position += speed * velocity * delta # Update position correctly


func _on_button_pressed():
	set_process(not is_processing()) # Replace with function body.
