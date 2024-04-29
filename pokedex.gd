@tool
extends Node

const POKEDEX_JSON = "res://pokedex/pokedex.json"

var _pokedex

# Called when the node enters the scene tree for the first time.
func _ready():
	var json_str = FileAccess.get_file_as_string("res://pokedex/pokedex.json")
	var json = JSON.parse_string(json_str)
	
	_pokedex = {}
	
	for p in json:
		_pokedex[int(p["id"])] = p


func get_pokemon_info(id: int) -> Dictionary:
	var pokemon = _pokedex[id]
	return pokemon
