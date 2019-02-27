-- Jiteman's packing
-- modded items

-- aai-industry
if data.raw[ "item" ][ "stone-tablet" ] then
	data:extend( {
		generate_special_packed_item_for_modded( "aai-industry", "stone-tablet", "stack" ),
		generate_special_packed_pallet_item_for_modded( "aai-industry", "stone-tablet", "stack" )
	} )
end

if data.raw[ "item" ][ "motor" ] then
	data:extend( {
		generate_special_packed_item_for_modded( "aai-industry", "motor", "stack" ),
		generate_special_packed_pallet_item_for_modded( "aai-industry", "motor", "stack" )
	} )
end

if data.raw[ "item" ][ "electric-motor" ] then
	data:extend( {
		generate_special_packed_item_for_modded( "aai-industry", "electric-motor", "stack" ),
		generate_special_packed_pallet_item_for_modded( "aai-industry", "electric-motor", "stack" )
	} )
end

-- bio-industries
if data.raw[ "fluid" ][ "liquid-air" ] then
	data:extend( {
		generate_special_packed_pallet_item_for_modded( "bio-industries", "liquid-air", "barrel" )
	} )
end

if data.raw[ "fluid" ][ "nitrogen" ] then
	data:extend( {
		generate_special_packed_pallet_item_for_modded( "bio-industries", "nitrogen", "barrel" )
	} )
end

if data.raw[ "fluid" ][ "bi-biomass" ] then
	data:extend( {
		generate_special_packed_pallet_item_for_modded( "bio-industries", "bi-biomass", "barrel" )
	} )
end

if data.raw[ "item" ][ "bi-woodpulp" ] then
	data:extend( {
		generate_special_packed_item_for_modded( "bio-industries", "bi-woodpulp", "wooden-box" ),
		generate_special_packed_pallet_item_for_modded( "bio-industries", "bi-woodpulp", "wooden-box" )
	} )
end

if data.raw[ "item" ][ "bi-ash" ] then
	data:extend( {
		generate_special_packed_item_for_modded( "bio-industries", "bi-ash", "wooden-box" ),
		generate_special_packed_pallet_item_for_modded( "bio-industries", "bi-ash", "wooden-box" )
	} )
end

if data.raw[ "item" ][ "bi-coke-coal" ] then
	data:extend( {
		generate_special_packed_item_for_modded( "bio-industries", "bi-coke-coal", "wooden-box" ),
		generate_special_packed_pallet_item_for_modded( "bio-industries", "bi-coke-coal", "wooden-box" )
	} )
end

if data.raw[ "item" ][ "bi-cellulose" ] then
	data:extend( {
		generate_special_packed_item_for_modded( "bio-industries", "bi-cellulose", "wooden-box" ),
		generate_special_packed_pallet_item_for_modded( "bio-industries", "bi-cellulose", "wooden-box" )
	} )
end

