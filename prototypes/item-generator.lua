-- Jiteman's packing
-- item generation function set

-- universal functions
function generate_special_packed_item_for_modded( mod_name, item_name, pack_name )
	local packed_item_name = name_prefix .. item_name .. "-" .. pack_name
	
	return {
		type = "item",
		name = packed_item_name,
		icon = "__Jitemans-packing__/graphics/icons/" .. mod_name .. "/".. packed_item_name .. ".png",
		icon_size = 32,
		flags = { "goes-to-main-inventory" },
		subgroup = "intermediate-product",
		stack_size = 40
	}
end

function generate_special_packed_item_for( item_name, pack_name )
	local packed_item_name = name_prefix .. item_name .. "-" .. pack_name
	
	return {
		type = "item",
		name = packed_item_name,
		icon = "__Jitemans-packing__/graphics/icons/" .. packed_item_name .. ".png",
		icon_size = 32,
		flags = { "goes-to-main-inventory" },
		subgroup = "intermediate-product",
		stack_size = 40
	}
end

function generate_special_packed_pallet_item_for_modded( mod_name, item_name, pack_name )
	local packed_item_pallet_item_name = name_prefix .. item_name .. "-" .. pack_name .. "-pallet"
	
	return {
		type = "item",
		name = packed_item_pallet_item_name,
		icon = "__Jitemans-packing__/graphics/icons/" .. mod_name .. "/".. packed_item_pallet_item_name .. ".png",
		icon_size = 32,
		flags = { "goes-to-main-inventory" },
		subgroup = "intermediate-product",
		stack_size = 10
	}
end

function generate_special_packed_pallet_item_for( item_name, pack_name )
	local packed_item_pallet_item_name = name_prefix .. item_name .. "-" .. pack_name .. "-pallet"
	
	return {
		type = "item",
		name = packed_item_pallet_item_name,
		icon = "__Jitemans-packing__/graphics/icons/" .. packed_item_pallet_item_name .. ".png",
		icon_size = 32,
		flags = { "goes-to-main-inventory" },
		subgroup = "intermediate-product",
		stack_size = 10
	}
end

-- end of universal function

-- concrete functions
function generate_stack_packed_item_for( item_name )
	return generate_special_packed_item_for( item_name, "stack" )
end

function generate_stack_packed_pallet_item_for( item_name )
	return generate_special_packed_pallet_item_for( item_name, "stack" )
end

function generate_box_packed_item_for( item_name )
	return generate_special_packed_item_for( item_name, "wooden-box" )
end

function generate_box_packed_pallet_item_for( item_name )
	return generate_special_packed_pallet_item_for( item_name, "wooden-box" )
end

function generate_barrel_packed_pallet_item_for( item_name )
	return generate_special_packed_pallet_item_for( item_name, "barrel" )
end

-- end of concrete functions
