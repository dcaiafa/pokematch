extends Node2D

const NX = 7
const NY = 3
const MARGIN_TOP = 100
const MARGIN_BOTTOM = 0
const MARGIN_LEFT = 100
const MARGIN_RIGHT = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	var card_res: PackedScene = preload("res://card.tscn")

	var viewr: Rect2 = get_viewport_rect()
	var h_space = (viewr.size.x - MARGIN_LEFT - MARGIN_RIGHT) / NX
	var v_space = (viewr.size.y - MARGIN_TOP - MARGIN_BOTTOM) / NY
	
	for i in range(NX):
		for j in range(NY):
			var card = card_res.instantiate()
			card.position = Vector2(
				viewr.position.x + MARGIN_LEFT + (i * h_space), 
				viewr.position.y + MARGIN_TOP + (j * v_space))
			add_child(card)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
