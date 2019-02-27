require( "prototypes.item-generator" )

-- basic constructing items
data:extend( {
	{
		type = "item", name = name_prefix .. "packing-assembler",
		icon = "__Jitemans-packing__/graphics/icons/" .. name_prefix .. "packing-assembler.png", icon_size = 32, flags = { "goes-to-main-inventory" },
		subgroup = name_prefix .. "-items", place_result = name_prefix .. "packing-assembler",
		stack_size = 50
	},
	{
		type = "item", name = name_prefix .. "unpacking-assembler",
		icon = "__Jitemans-packing__/graphics/icons/" .. name_prefix .. "unpacking-assembler.png", icon_size = 32, flags = { "goes-to-main-inventory" },
		subgroup = name_prefix .. "-items", place_result = name_prefix .. "unpacking-assembler",
		stack_size = 50
	},
	{
		type = "item", name = name_prefix .. "packing-assembler-star",
		icon = "__Jitemans-packing__/graphics/icons/" .. name_prefix .. "packing-assembler-star.png", icon_size = 32, flags = { "goes-to-main-inventory" },
		subgroup = name_prefix .. "-items", place_result = name_prefix .. "packing-assembler-star",
		stack_size = 50
	},
	{
		type = "item", name = name_prefix .. "unpacking-assembler-star",
		icon = "__Jitemans-packing__/graphics/icons/" .. name_prefix .. "unpacking-assembler-star.png", icon_size = 32, flags = { "goes-to-main-inventory" },
		subgroup = name_prefix .. "-items", place_result = name_prefix .. "unpacking-assembler-star",
		stack_size = 50
	}
} )

-- basic items
data:extend( {
	{
		type = "item", name = name_prefix .. "wooden-box",
		icon = "__Jitemans-packing__/graphics/icons/" .. name_prefix .. "wooden-box.png", icon_size = 32, flags = { "goes-to-main-inventory" },
		subgroup = "intermediate-product",
		stack_size = 50
	},
	{
		type = "item", name = name_prefix .. "wooden-pallet",
		icon = "__Jitemans-packing__/graphics/icons/" .. name_prefix .. "wooden-pallet.png", icon_size = 32, flags = { "goes-to-main-inventory" },
		subgroup = "intermediate-product",
		stack_size = 50
	}
} )


-- basic items stack and pallet
data:extend( {
--	generate_stack_packed_item_for( "wooden-box" ),
--	generate_stack_packed_pallet_item_for( "wooden-box" ),
	generate_special_packed_pallet_item_for( "wooden", "box" ),
	generate_stack_packed_item_for( "wooden-pallet" ),
--	generate_stack_packed_pallet_item_for( "wooden-pallet" )
} )

-- vanilla specially treated items stack and pallet
data:extend( {
	generate_special_packed_item_for( "copper-cable", "reel" ),
	generate_special_packed_pallet_item_for( "copper-cable", "reel" ),
	generate_special_packed_item_for( "raw-wood", "pack" ),
	generate_special_packed_pallet_item_for( "raw-wood", "pack" )
} )

-- vanilla stack packed items stack and pallet
data:extend( {
	generate_stack_packed_item_for( "iron-plate" ),
	generate_stack_packed_pallet_item_for( "iron-plate" ),
	generate_stack_packed_item_for( "copper-plate" ),
	generate_stack_packed_pallet_item_for( "copper-plate" ),
	generate_stack_packed_item_for( "steel-plate" ),
	generate_stack_packed_pallet_item_for( "steel-plate" ),
	generate_stack_packed_item_for( "wood" ),
	generate_stack_packed_pallet_item_for( "wood" ),
	generate_stack_packed_item_for( "iron-stick" ),
	generate_stack_packed_pallet_item_for( "iron-stick" ),
	generate_stack_packed_item_for( "iron-gear-wheel" ),
	generate_stack_packed_pallet_item_for( "iron-gear-wheel" ),
	generate_stack_packed_item_for( "solid-fuel" ),
	generate_stack_packed_pallet_item_for( "solid-fuel" ),
	generate_stack_packed_item_for( "plastic-bar" ),
	generate_stack_packed_pallet_item_for( "plastic-bar" ),
	generate_stack_packed_item_for( "electronic-circuit" ),
	generate_stack_packed_pallet_item_for( "electronic-circuit" ),
	generate_stack_packed_item_for( "advanced-circuit" ),
	generate_stack_packed_pallet_item_for( "advanced-circuit" ),
	generate_stack_packed_item_for( "processing-unit" ),
	generate_stack_packed_pallet_item_for( "processing-unit" )
--	generate_stack_packed_item_for( "" ),
--	generate_stack_packed_pallet_item_for( "" ),
	
} )

-- vanilla box packed items box and pallet
data:extend( {	
	generate_box_packed_item_for( "coal" ),
	generate_box_packed_pallet_item_for( "coal" ),
	generate_box_packed_item_for( "iron-ore" ),
	generate_box_packed_pallet_item_for( "iron-ore" ),
	generate_box_packed_item_for( "copper-ore" ),
	generate_box_packed_pallet_item_for( "copper-ore" ),
	generate_box_packed_item_for( "stone" ),
	generate_box_packed_pallet_item_for( "stone" ),
	generate_box_packed_item_for( "sulfur" ),
	generate_box_packed_pallet_item_for( "sulfur" ),
	generate_box_packed_item_for( "uranium-ore" ),
	generate_box_packed_pallet_item_for( "uranium-ore" ),
	generate_box_packed_item_for( "uranium-238" ),
	generate_box_packed_pallet_item_for( "uranium-238" ),
	generate_box_packed_item_for( "uranium-235" ),
	generate_box_packed_pallet_item_for( "uranium-235" )
--	generate_box_packed_item_for( "" ),
--	generate_box_packed_pallet_item_for( "" ),
} )

-- vanilla barrel packed fluids pallet
data:extend( {
	generate_barrel_packed_pallet_item_for( "empty" ),
	generate_barrel_packed_pallet_item_for( "crude-oil" ),
	generate_barrel_packed_pallet_item_for( "heavy-oil" ),
	generate_barrel_packed_pallet_item_for( "light-oil" ),
	generate_barrel_packed_pallet_item_for( "petroleum-gas" ),
	generate_barrel_packed_pallet_item_for( "lubricant" ),
	generate_barrel_packed_pallet_item_for( "sulfuric-acid" ),
	generate_barrel_packed_pallet_item_for( "water" )
--	generate_barrel_packed_pallet_item_for( "" ),
} )
