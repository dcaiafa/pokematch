@tool
extends Node2D

@onready var sprite: Sprite2D = $PokemonSprite
@onready var name_label: Label = $NameLabel

var _pokemon_id: int = 1
@export var pokemon_id: int:
	get:
		return _pokemon_id
	set(value):
		_pokemon_id = value
		_update()


func _update():
	if not sprite:
		return
	
	var info = Pokedex.get_pokemon_info(pokemon_id)
	name_label.text = info.name.english
	
	var image_name = "res://pokedex/images/%03d.png" % pokemon_id
	sprite.texture = load(image_name)
	
	
func _ready():
	_update()
	
	
func _process(delta):
	pass
