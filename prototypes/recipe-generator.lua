-- Jiteman's packing
-- recipe generation function set

-- universal functions
function generate_special_pack_packing_recipe_for_unprefixed( item_name, pack_name, items_per_pack )
	local packed_item_name = name_prefix .. item_name .. "-" .. pack_name
	local recipe_name = name_prefix .. item_name .. "-pack-packing"
	
	return {
		type = "recipe",
		name = recipe_name,
		category = name_prefix .. "-packing",
		main_product = packed_item_name,
		enabled = true,
		ingredients = {
			{ type = "item", name = name_prefix .. item_name, amount = items_per_pack },
			{ type = "item", name = "copper-cable", amount = 2 }
		},
		results = { { type == "item", name = packed_item_name, amount = 1 } }
	}
end

function generate_special_pack_packing_recipe_for( item_name, pack_name, items_per_pack )
	local packed_item_name = name_prefix .. item_name .. "-" .. pack_name
	local recipe_name = name_prefix .. item_name .. "-pack-packing"
	
	return {
		type = "recipe",
		name = recipe_name,
		category = name_prefix .. "-packing",
		main_product = packed_item_name,
		enabled = true,
		ingredients = {
			{ type = "item", name = item_name, amount = items_per_pack },
			{ type = "item", name = "copper-cable", amount = 2 }
		},
		results = { { type == "item", name = packed_item_name, amount = 1 } }
	}
end

function generate_special_pack_unpacking_recipe_for_unprefixed( item_name, pack_name, items_per_pack )
	local packed_item_name = name_prefix .. item_name .. "-" .. pack_name
	local recipe_name = name_prefix .. item_name .. "-pack-unpacking"
	
	return {
		type = "recipe",
		name = recipe_name,
		category = name_prefix .. "-unpacking",
		main_product = name_prefix .. item_name,
		enabled = true,
		ingredients = { { type = "item", name = packed_item_name, amount = 1 } },
		results = { { type = "item", name = name_prefix .. item_name, amount = items_per_pack } }
	}
end

function generate_special_pack_unpacking_recipe_for( item_name, pack_name, items_per_pack )
	local packed_item_name = name_prefix .. item_name .. "-" .. pack_name
	local recipe_name = name_prefix .. item_name .. "-pack-unpacking"
	
	return {
		type = "recipe",
		name = recipe_name,
		category = name_prefix .. "-unpacking",
		main_product = item_name,
		enabled = true,
		ingredients = { { type = "item", name = packed_item_name, amount = 1 } },
		results = { { type = "item", name = item_name, amount = items_per_pack } }
	}
end

function generate_universal_box_packing_recipe_for( item_name, items_per_pack )
	local packed_item_name = name_prefix .. item_name .. "-wooden-box"
	local recipe_name = name_prefix .. item_name .. "-pack-packing"
	
	return {
		type = "recipe",
		name = recipe_name,
		category = name_prefix .. "-packing",
		main_product = packed_item_name,
		enabled = true,
		ingredients = {			
			{ type = "item", name = item_name, amount = items_per_pack },
			{ type = "item", name = name_prefix .. "wooden-box", amount = 1 }
		},
		results = { { type == "item", name = packed_item_name, amount = 1 } }
	}
end

function generate_universal_box_unpacking_recipe_for( item_name, items_per_pack )
	local packed_item_name = name_prefix .. item_name .. "-wooden-box"
	local recipe_name = name_prefix .. item_name .. "-pack-unpacking"
	
	return {
		type = "recipe",
		name = recipe_name,
		category = name_prefix .. "-unpacking",
		main_product = item_name,
		enabled = true,
		ingredients = { { type = "item", name = packed_item_name, amount = 1 } },
		results = {
			{ type = "item", name = item_name, amount = items_per_pack },
			{ type = "item", name = name_prefix .. "wooden-box", probability = 0.9, amount_min = 1, amount_max = 1 }
		}
	}
end

local packed_items_per_pallet = 16

function generate_special_pallet_packing_recipe( item_name, pack_name )
	local packed_item_name = name_prefix .. item_name .. "-" .. pack_name
	local packed_pallet_item_name = name_prefix .. item_name .. "-" .. pack_name .. "-pallet"
	local recipe_name = name_prefix .. item_name .. "-pallet-packing"
	
	
	return {
		type = "recipe",
		name = recipe_name,
		category = name_prefix .. "-packing",
		main_product = packed_pallet_item_name,
		enabled = true,
		ingredients = {			
			{ type = "item", name = packed_item_name, amount = packed_items_per_pallet },
			{ type = "item", name = "copper-cable", amount = 8 },
			{ type = "item", name = name_prefix .. "wooden-pallet", amount = 1 }
		},
		results = { { type == "item", name = packed_pallet_item_name, amount = 1 } }
	}	
end

function generate_special_pallet_unpacking_recipe( item_name, pack_name )
	local packed_item_name = name_prefix .. item_name .. "-" .. pack_name
	local packed_pallet_item_name = name_prefix .. item_name .. "-" .. pack_name .. "-pallet"
	local recipe_name = name_prefix .. item_name .. "-pallet-unpacking"
	
	return {
		type = "recipe",
		name = recipe_name,
		category = name_prefix .. "-unpacking",
		main_product = packed_item_name,
		enabled = true,
		ingredients = { { type = "item", name = packed_pallet_item_name, amount = 1 } },
		results = {
			{ type = "item", name = packed_item_name, amount = packed_items_per_pallet },
			{ type = "item", name = name_prefix .. "wooden-pallet", probability = 0.95, amount_min = 1, amount_max = 1 }
		},
		allow_decomposition = false -- check if we need it
	}
end

function generate_special_pallet_packing_recipe_for_unprefixed( item_name, pack_name )
	local packed_item_name = item_name .. "-" .. pack_name
	local packed_pallet_item_name = name_prefix .. item_name .. "-" .. pack_name .. "-pallet"
	local recipe_name = name_prefix .. item_name .. "-pallet-packing"
	
	
	return {
		type = "recipe",
		name = recipe_name,
		category = name_prefix .. "-packing",
		main_product = packed_pallet_item_name,
		enabled = true,
		ingredients = {			
			{ type = "item", name = packed_item_name, amount = packed_items_per_pallet },
			{ type = "item", name = "copper-cable", amount = 8 },
			{ type = "item", name = name_prefix .. "wooden-pallet", amount = 1 }
		},
		results = { { type == "item", name = packed_pallet_item_name, amount = 1 } }
	}	
end

function generate_special_pallet_unpacking_recipe_for_unprefixed( item_name, pack_name )
	local packed_item_name = item_name .. "-" .. pack_name
	local packed_pallet_item_name = name_prefix .. item_name .. "-" .. pack_name .. "-pallet"
	local recipe_name = name_prefix .. item_name .. "-pallet-unpacking"
	
	return {
		type = "recipe",
		name = recipe_name,
		category = name_prefix .. "-unpacking",
		main_product = packed_item_name,
		enabled = true,
		ingredients = { { type = "item", name = packed_pallet_item_name, amount = 1 } },
		results = {
			{ type = "item", name = packed_item_name, amount = packed_items_per_pallet },
			{ type = "item", name = name_prefix .. "wooden-pallet", probability = 0.95, amount_min = 1, amount_max = 1 }
		},
		allow_decomposition = false -- check if we need it
	}
end

-- end of universal function

-- concrete functions
-- stack packing
function generate_universal_stack_packing_recipe_for( item_name, items_per_pack )
	return generate_special_pack_packing_recipe_for( item_name, "stack", items_per_pack )
end

function generate_stack_packing_4_recipe_for( item_name )
	return generate_universal_stack_packing_recipe_for( item_name, 4 )
end

function generate_stack_packing_10_recipe_for( item_name )
	return generate_universal_stack_packing_recipe_for( item_name, 10 )
end

function generate_stack_packing_20_recipe_for( item_name )
	return generate_universal_stack_packing_recipe_for( item_name, 20 )
end

function generate_stack_packing_40_recipe_for( item_name )
	return generate_universal_stack_packing_recipe_for( item_name, 40 )
end

-- stack unpacking
function generate_universal_stack_unpacking_recipe_for( item_name, items_per_stack )
	return generate_special_pack_unpacking_recipe_for( item_name, "stack", items_per_stack )
end

function generate_stack_unpacking_4_recipe_for( item_name )
	return generate_universal_stack_unpacking_recipe_for( item_name, 4 )
end

function generate_stack_unpacking_10_recipe_for( item_name )
	return generate_universal_stack_unpacking_recipe_for( item_name, 10 )
end

function generate_stack_unpacking_20_recipe_for( item_name )
	return generate_universal_stack_unpacking_recipe_for( item_name, 20 )
end

function generate_stack_unpacking_40_recipe_for( item_name )
	return generate_universal_stack_unpacking_recipe_for( item_name, 40 )
end

-- box packing
function generate_box_packing_10_recipe_for( item_name )
	return generate_universal_box_packing_recipe_for( item_name, 10 )
end

function generate_box_unpacking_10_recipe_for( item_name )
	return generate_universal_box_unpacking_recipe_for( item_name, 10 )
end

function generate_box_packing_20_recipe_for( item_name )
	return generate_universal_box_packing_recipe_for( item_name, 20 )
end

function generate_box_unpacking_20_recipe_for( item_name )
	return generate_universal_box_unpacking_recipe_for( item_name, 20 )
end

function generate_box_packing_40_recipe_for( item_name )
	return generate_universal_box_packing_recipe_for( item_name, 40 )
end

function generate_box_unpacking_40_recipe_for( item_name )
	return generate_universal_box_unpacking_recipe_for( item_name, 40 )
end

-- box unpacking

-- pallet packing
function generate_universal_pallet_packing_recipe_for_stack_packed( item_name )
	return generate_special_pallet_packing_recipe( item_name, "stack" )
end

function generate_universal_pallet_unpacking_recipe_for_stack_packed( item_name )
	return generate_special_pallet_unpacking_recipe( item_name, "stack" )
end

function generate_universal_pallet_packing_recipe_for_box_packed( item_name )
	return generate_special_pallet_packing_recipe( item_name, "wooden-box" )
end

function generate_universal_pallet_unpacking_recipe_for_box_packed( item_name )
	return generate_special_pallet_unpacking_recipe( item_name, "wooden-box" )
end

function generate_universal_pallet_packing_recipe_for_barrel_packed( fluid_name )
	return generate_special_pallet_packing_recipe_for_unprefixed( fluid_name, "barrel" )
end

function generate_universal_pallet_unpacking_recipe_for_barrel_packed( fluid_name )
	return generate_special_pallet_unpacking_recipe_for_unprefixed( fluid_name, "barrel" )
end

-- pallet unpacking


-- end of concrete functions
