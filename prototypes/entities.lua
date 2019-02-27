data:extend( {
	{
		type = "assembling-machine",
		name = name_prefix .. "packing-assembler",
		icon = "__Jitemans-packing__/graphics/icons/" .. name_prefix .. "packing-assembler.png", icon_size = 32,
		flags = { "placeable-neutral", "placeable-player", "player-creation" },
		minable = {
			hardness = 0.2,
			mining_time = 0.5,
			result = name_prefix .. "packing-assembler"
		},
		collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
		selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
		max_health = 250,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		fast_replaceable_group = name_prefix .. "packing-assemblers",
		crafting_categories = { name_prefix .. "-packing" },
		crafting_speed = 0.75,
		energy_source = { type = "electric", usage_priority = "secondary-input", drain = "3.33kW" },
		energy_usage = "100kW",
		ingredient_count = 3,
		resistances = { { type = "fire", percent = 70 } },
		module_specification = {
			module_slots = 2
		},
		allowed_effects = { "consumption", "speed", "pollution" },
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		animation = {
			filename = "__Jitemans-packing__/graphics/entity/" .. name_prefix .. "packing-assembler-animation.png",
			priority = "high",
			width = 113,
			height = 99,
			frame_count = 32,
			line_length = 8,
			shift = { 0.4, -0.06 }
		}
	},
		{
		type = "assembling-machine",
		name = name_prefix .. "unpacking-assembler",
		icon = "__Jitemans-packing__/graphics/icons/" .. name_prefix .. "unpacking-assembler.png", icon_size = 32,
		flags = { "placeable-neutral", "placeable-player", "player-creation" },
		minable = {
			hardness = 0.2,
			mining_time = 0.5,
			result = name_prefix .. "unpacking-assembler"
		},
		collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
		selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
		max_health = 250,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		fast_replaceable_group = name_prefix .. "unpacking-assemblers",
		crafting_categories = { name_prefix .. "-unpacking" },
		crafting_speed = 0.75,
		energy_source = { type = "electric", usage_priority = "secondary-input", drain = "3.33kW"
		},
		energy_usage = "100kW",
		ingredient_count = 3,
		resistances = { { type = "fire", percent = 70 } },
		module_specification = {
			module_slots = 2
		},
		allowed_effects = { "consumption", "speed", "pollution" },
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		animation = {
			filename = "__Jitemans-packing__/graphics/entity/" .. name_prefix .. "unpacking-assembler-animation.png",
			priority = "high",
			width = 113,
			height = 99,
			frame_count = 32,
			line_length = 8,
			shift = { 0.4, -0.06 }
		}
	},
	{
		type = "assembling-machine",
		name = name_prefix .. "packing-assembler-star",
		icon = "__Jitemans-packing__/graphics/icons/" .. name_prefix .. "packing-assembler-star.png", icon_size = 32,
		flags = { "placeable-neutral", "placeable-player", "player-creation" },
		minable = {
			hardness = 0.2,
			mining_time = 0.5,
			result = name_prefix .. "packing-assembler-star"
		},
		collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
		selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
		max_health = 250,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		fast_replaceable_group = name_prefix .. "packing-assemblers",
		crafting_categories = { name_prefix .. "-packing" },
		crafting_speed = 1.25,
		energy_source = { type = "electric", usage_priority = "secondary-input", drain = "4.67kW" },
		energy_usage = "140kW",
		ingredient_count = 3,
		resistances = { { type = "fire", percent = 70 } },
		module_specification = {
			module_slots = 2
		},
		allowed_effects = { "consumption", "speed", "pollution" },
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		animation = {
			filename = "__Jitemans-packing__/graphics/entity/" .. name_prefix .. "packing-assembler-star-animation.png",
			priority = "high",
			width = 113,
			height = 99,
			frame_count = 32,
			line_length = 8,
			shift = { 0.4, -0.06 }
		}
	},
		{
		type = "assembling-machine",
		name = name_prefix .. "unpacking-assembler-star",
		icon = "__Jitemans-packing__/graphics/icons/" .. name_prefix .. "unpacking-assembler-star.png", icon_size = 32,
		flags = { "placeable-neutral", "placeable-player", "player-creation" },
		minable = {
			hardness = 0.2,
			mining_time = 0.5,
			name_prefix .. "unpacking-assembler-star"
		},
		collision_box = { { -1.2, -1.2 }, { 1.2, 1.2 } },
		selection_box = { { -1.5, -1.5 }, { 1.5, 1.5 } },
		max_health = 250,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		fast_replaceable_group = name_prefix .. "unpacking-assemblers",
		crafting_categories = { name_prefix .. "-unpacking" },
		crafting_speed = 1.25,
		energy_source = { type = "electric", usage_priority = "secondary-input", drain = "4.67kW"
		},
		energy_usage = "140kW",
		ingredient_count = 3,
		resistances = { { type = "fire", percent = 70 } },
		module_specification = {
			module_slots = 2
		},
		allowed_effects = { "consumption", "speed", "pollution" },
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		animation = {
			filename = "__Jitemans-packing__/graphics/entity/" .. name_prefix .. "unpacking-assembler-star-animation.png",
			priority = "high",
			width = 113,
			height = 99,
			frame_count = 32,
			line_length = 8,
			shift = { 0.4, -0.06 }
		}
	}
} )

