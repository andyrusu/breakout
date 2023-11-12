extends StaticBody2D
class_name Block


enum BlockType {
	BLUE,
	GREEN,
	PURPLE,
	RED,
	YELLOW,
	GREY
}

@export var type : BlockType = BlockType.BLUE

var sprites : Array[String] = [
	"res://Assets/element_blue_rectangle_glossy.png",
	"res://Assets/element_green_rectangle_glossy.png",
	"res://Assets/element_purple_rectangle_glossy.png",
	"res://Assets/element_red_rectangle_glossy.png",
	"res://Assets/element_yellow_rectangle_glossy.png",
	"res://Assets/element_grey_rectangle_glossy.png"
]

@onready var sprite : Sprite2D = $Sprite2D

# Called when the node enters the scene tree for the first time.
func _ready():
	sprite.texture = load(sprites[type])
