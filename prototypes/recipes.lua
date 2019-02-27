require("prototypes.recipe-generator")

-- basic constructing items
data:extend( {
	{
		type = "recipe",
		name = name_prefix .. "packing-assembler",
		normal = {
			enabled = true,
			ingredients = {
				{ type = "item", name = "iron-plate", amount = 9 },
				{ type = "item", name = "electronic-circuit", amount = 3 },
				{ type = "item", name = "iron-gear-wheel", amount = 5 }
			},
			result = name_prefix .. "packing-assembler"
		},
		expensive = {
			enabled = true,
			ingredients = {
				{ type = "item", name = "iron-plate", amount = 20 },
				{ type = "item", name = "electronic-circuit", amount = 5 },
				{ type = "item", name = "iron-gear-wheel", amount = 10 }
			},
			result = name_prefix .. "packing-assembler"
		}
	},
	{
		type = "recipe",
		name = name_prefix .. "unpacking-assembler",
		normal = {
			enabled = true,
			ingredients = {
				{ type = "item", name = "iron-plate", amount = 9 },
				{ type = "item", name = "electronic-circuit", amount = 3 },
				{ type = "item", name = "iron-gear-wheel", amount = 5 }
			},
			result = name_prefix .. "unpacking-assembler"
		},
		expensive = {
			enabled = true,
			ingredients = {
				{ type = "item", name = "iron-plate", amount = 20 },
				{ type = "item", name = "electronic-circuit", amount = 5 },
				{ type = "item", name = "iron-gear-wheel", amount = 10 }
			},
			result = name_prefix .. "unpacking-assembler"
		}
	},
	{
		type = "recipe",
		name = name_prefix .. "packing-assembler-star",
		enabled = true,
		ingredients = {			
			{ type = "item", name = name_prefix .. "packing-assembler", amount = 1 },
			{ type = "item", name = "speed-module", amount = 4 }
		},
		result = name_prefix .. "packing-assembler-star"
	},
	{
		type = "recipe",
		name = name_prefix .. "unpacking-assembler-star",
		enabled = true,
		ingredients = {			
			{ type = "item", name = name_prefix .. "unpacking-assembler", amount = 1 },
			{ type = "item", name = "speed-module", amount = 4 }
		},
		result = name_prefix .. "unpacking-assembler-star"
	}
} )

-- basic items
data:extend( {
	-- wooden box  
	{
		type = "recipe",
		name = name_prefix .. "wooden-box",		
		normal = {
			enabled = true,
			energy_required = 1,
			ingredients = {
				{ type = "item", name = "wood", amount = 4 },
				{ type = "item", name = "iron-stick", amount = 1 }
			},
			result = name_prefix .. "wooden-box"
		},
		expensive = {
			enabled = true,
			energy_required = 1,
			ingredients = {
				{ type = "item", name = "wood", amount = 8 },
				{ type = "item", name = "iron-stick", amount = 2 }
			},
			result = name_prefix .. "wooden-box"
		}
	},
	{
		type = "recipe",
		name = name_prefix .. "wooden-pallet",
		energy_required = 1,
		normal = {
			enabled = true,
			energy_required = 1,
			ingredients = {
				{ type = "item", name = "wood", amount = 8 },
				{ type = "item", name = "iron-stick", amount = 4 }
			},
			result = name_prefix .. "wooden-pallet",
		},
		expensive = {
			enabled = true,
			energy_required = 1,
			ingredients = {
				{ type = "item", name = "wood", amount = 16 },
				{ type = "item", name = "iron-stick", amount = 8 }				
			},
			result = name_prefix .. "wooden-pallet",
		}
	}	
} )

-- basic items stack and pallet
data:extend( {
--	generate_special_pack_packing_recipe_for_unprefixed( "wooden-box", "stack", 10 ),
--	generate_special_pack_unpacking_recipe_for_unprefixed( "wooden-box", "stack", 10 ),
--	generate_universal_pallet_packing_recipe_for_stack_packed( "wooden-box" ),
	generate_special_pallet_packing_recipe( "wooden", "box" ),
--	generate_universal_pallet_unpacking_recipe_for_stack_packed( "wooden-box" ),
	generate_special_pallet_unpacking_recipe( "wooden", "box" ),


	generate_special_pack_packing_recipe_for_unprefixed( "wooden-pallet", "stack", 10 ),
	generate_special_pack_unpacking_recipe_for_unprefixed( "wooden-pallet", "stack", 10 ),
--	generate_universal_pallet_packing_recipe_for_stack_packed( "wooden-pallet" ),
--	generate_universal_pallet_unpacking_recipe_for_stack_packed( "wooden-pallet" )
} )


-- vanilla specially treated items stack and pallet
data:extend( {
--	generate_special_pack_packing_recipe_for( "copper-cable", "reel", 40 ),
	{
		type = "recipe",
		name = name_prefix .. "copper-cable-pack-packing",
		category = name_prefix .. "-packing",
		main_product = name_prefix .. "copper-cable-reel",
		enabled = true,
		ingredients = {
--			{ type = "item", name = "copper-cable", amount = 40 },
--			{ type = "item", name = "copper-cable", amount = 2 }
			{ type = "item", name = "copper-cable", amount = 42 }
		},
		results = { { type == "item", name = name_prefix .. "copper-cable-reel", amount = 1 } }
	},	
	generate_special_pack_unpacking_recipe_for( "copper-cable", "reel", 40 ),
	generate_special_pallet_packing_recipe( "copper-cable", "reel" ),
	generate_special_pallet_unpacking_recipe( "copper-cable", "reel" ),

	generate_special_pack_packing_recipe_for( "raw-wood", "pack", 20 ),
	generate_special_pack_unpacking_recipe_for( "raw-wood", "pack", 20 ),
	generate_special_pallet_packing_recipe( "raw-wood", "pack" ),
	generate_special_pallet_unpacking_recipe( "raw-wood", "pack" )
} )

-- vanilla stack packed items stack and pallet
data:extend( {
	generate_stack_packing_20_recipe_for( "iron-plate" ),
	generate_stack_unpacking_20_recipe_for( "iron-plate" ),
	generate_universal_pallet_packing_recipe_for_stack_packed( "iron-plate" ),
	generate_universal_pallet_unpacking_recipe_for_stack_packed( "iron-plate" ),
	
	generate_stack_packing_20_recipe_for( "copper-plate" ),
	generate_stack_unpacking_20_recipe_for( "copper-plate" ),
	generate_universal_pallet_packing_recipe_for_stack_packed( "copper-plate" ),
	generate_universal_pallet_unpacking_recipe_for_stack_packed( "copper-plate" ),
	
	generate_stack_packing_20_recipe_for( "steel-plate" ),
	generate_stack_unpacking_20_recipe_for( "steel-plate" ),
	generate_universal_pallet_packing_recipe_for_stack_packed( "steel-plate" ),
	generate_universal_pallet_unpacking_recipe_for_stack_packed( "steel-plate" ),
	
	generate_stack_packing_10_recipe_for( "wood" ),
	generate_stack_unpacking_10_recipe_for( "wood" ),
	generate_universal_pallet_packing_recipe_for_stack_packed( "wood" ),
	generate_universal_pallet_unpacking_recipe_for_stack_packed( "wood" ),
	
	generate_stack_packing_20_recipe_for( "iron-stick" ),
	generate_stack_unpacking_20_recipe_for( "iron-stick" ),
	generate_universal_pallet_packing_recipe_for_stack_packed( "iron-stick" ),
	generate_universal_pallet_unpacking_recipe_for_stack_packed( "iron-stick" ),
	
	generate_stack_packing_20_recipe_for( "iron-gear-wheel" ),
	generate_stack_unpacking_20_recipe_for( "iron-gear-wheel" ),
	generate_universal_pallet_packing_recipe_for_stack_packed( "iron-gear-wheel" ),
	generate_universal_pallet_unpacking_recipe_for_stack_packed( "iron-gear-wheel" ),
	
	generate_stack_packing_10_recipe_for( "solid-fuel" ),
	generate_stack_unpacking_10_recipe_for( "solid-fuel" ),
	generate_universal_pallet_packing_recipe_for_stack_packed( "solid-fuel" ),
	generate_universal_pallet_unpacking_recipe_for_stack_packed( "solid-fuel" ),
	
	generate_stack_packing_20_recipe_for( "plastic-bar" ),
	generate_stack_unpacking_20_recipe_for( "plastic-bar" ),
	generate_universal_pallet_packing_recipe_for_stack_packed( "plastic-bar" ),
	generate_universal_pallet_unpacking_recipe_for_stack_packed( "plastic-bar" ),
	
	generate_stack_packing_40_recipe_for( "electronic-circuit" ),
	generate_stack_unpacking_40_recipe_for( "electronic-circuit" ),
	generate_universal_pallet_packing_recipe_for_stack_packed( "electronic-circuit" ),
	generate_universal_pallet_unpacking_recipe_for_stack_packed( "electronic-circuit" ),
	
	generate_stack_packing_40_recipe_for( "advanced-circuit" ),
	generate_stack_unpacking_40_recipe_for( "advanced-circuit" ),
	generate_universal_pallet_packing_recipe_for_stack_packed( "advanced-circuit" ),
	generate_universal_pallet_unpacking_recipe_for_stack_packed( "advanced-circuit" ),
	
	generate_stack_packing_40_recipe_for( "processing-unit" ),
	generate_stack_unpacking_40_recipe_for( "processing-unit" ),
	generate_universal_pallet_packing_recipe_for_stack_packed( "processing-unit" ),
	generate_universal_pallet_unpacking_recipe_for_stack_packed( "processing-unit" )
} )

-- vanilla box packed items box and pallet
data:extend( {
	generate_box_packing_10_recipe_for( "coal" ),
	generate_box_unpacking_10_recipe_for( "coal" ),
	generate_universal_pallet_packing_recipe_for_box_packed( "coal" ),
	generate_universal_pallet_unpacking_recipe_for_box_packed( "coal" ),

	generate_box_packing_10_recipe_for( "iron-ore" ),
	generate_box_unpacking_10_recipe_for( "iron-ore" ),
	generate_universal_pallet_packing_recipe_for_box_packed( "iron-ore" ),
	generate_universal_pallet_unpacking_recipe_for_box_packed( "iron-ore" ),
	
	generate_box_packing_10_recipe_for( "copper-ore" ),
	generate_box_unpacking_10_recipe_for( "copper-ore" ),
	generate_universal_pallet_packing_recipe_for_box_packed( "copper-ore" ),
	generate_universal_pallet_unpacking_recipe_for_box_packed( "copper-ore" ),
	
	generate_box_packing_10_recipe_for( "coal" ),
	generate_box_unpacking_10_recipe_for( "coal" ),
	generate_universal_pallet_packing_recipe_for_box_packed( "coal" ),
	generate_universal_pallet_unpacking_recipe_for_box_packed( "coal" ),

	generate_box_packing_10_recipe_for( "stone" ),
	generate_box_unpacking_10_recipe_for( "stone" ),
	generate_universal_pallet_packing_recipe_for_box_packed( "stone" ),
	generate_universal_pallet_unpacking_recipe_for_box_packed( "stone" ),

	generate_box_packing_10_recipe_for( "sulfur" ),
	generate_box_unpacking_10_recipe_for( "sulfur" ),
	generate_universal_pallet_packing_recipe_for_box_packed( "sulfur" ),
	generate_universal_pallet_unpacking_recipe_for_box_packed( "sulfur" ),
	
	generate_box_packing_10_recipe_for( "uranium-ore" ),
	generate_box_unpacking_10_recipe_for( "uranium-ore" ),
	generate_universal_pallet_packing_recipe_for_box_packed( "uranium-ore" ),
	generate_universal_pallet_unpacking_recipe_for_box_packed( "uranium-ore" ),

	generate_box_packing_20_recipe_for( "uranium-238" ),
	generate_box_unpacking_20_recipe_for( "uranium-238" ),
	generate_universal_pallet_packing_recipe_for_box_packed( "uranium-238" ),
	generate_universal_pallet_unpacking_recipe_for_box_packed( "uranium-238" ),

	generate_box_packing_20_recipe_for( "uranium-235" ),
	generate_box_unpacking_20_recipe_for( "uranium-235" ),
	generate_universal_pallet_packing_recipe_for_box_packed( "uranium-235" ),
	generate_universal_pallet_unpacking_recipe_for_box_packed( "uranium-235" )

} )

-- vanilla barrel packed fluids pallet
data:extend( {
	generate_universal_pallet_packing_recipe_for_barrel_packed( "empty" ),
	generate_universal_pallet_unpacking_recipe_for_barrel_packed( "empty" ),
	
	generate_universal_pallet_packing_recipe_for_barrel_packed( "crude-oil" ),
	generate_universal_pallet_unpacking_recipe_for_barrel_packed( "crude-oil" ),
	
	generate_universal_pallet_packing_recipe_for_barrel_packed( "heavy-oil" ),
	generate_universal_pallet_unpacking_recipe_for_barrel_packed( "heavy-oil" ),
	
	generate_universal_pallet_packing_recipe_for_barrel_packed( "light-oil" ),
	generate_universal_pallet_unpacking_recipe_for_barrel_packed( "light-oil" ),
	
	generate_universal_pallet_packing_recipe_for_barrel_packed( "petroleum-gas" ),
	generate_universal_pallet_unpacking_recipe_for_barrel_packed( "petroleum-gas" ),
	
	generate_universal_pallet_packing_recipe_for_barrel_packed( "lubricant" ),
	generate_universal_pallet_unpacking_recipe_for_barrel_packed( "lubricant" ),
	
	generate_universal_pallet_packing_recipe_for_barrel_packed( "sulfuric-acid" ),
	generate_universal_pallet_unpacking_recipe_for_barrel_packed( "sulfuric-acid" ),
	
	generate_universal_pallet_packing_recipe_for_barrel_packed( "water" ),
	generate_universal_pallet_unpacking_recipe_for_barrel_packed( "water" ),
} )
