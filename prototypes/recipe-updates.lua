-- Jiteman's packing
-- modded item recipes

-- aai-industry
if data.raw[ "item" ][ "stone-tablet" ] then
	data:extend( {
		generate_stack_packing_20_recipe_for( "stone-tablet" ),
		generate_stack_unpacking_20_recipe_for( "stone-tablet" ),
		generate_universal_pallet_packing_recipe_for_stack_packed( "stone-tablet" ),
		generate_universal_pallet_unpacking_recipe_for_stack_packed( "stone-tablet" ),
	} )
end

if data.raw[ "item" ][ "motor" ] then
	data:extend( {
		generate_stack_packing_10_recipe_for( "motor" ),
		generate_stack_unpacking_10_recipe_for( "motor" ),
		generate_universal_pallet_packing_recipe_for_stack_packed( "motor" ),
		generate_universal_pallet_unpacking_recipe_for_stack_packed( "motor" ),
	} )
end

if data.raw[ "item" ][ "electric-motor" ] then
	data:extend( {
		generate_stack_packing_10_recipe_for( "electric-motor" ),
		generate_stack_unpacking_10_recipe_for( "electric-motor" ),
		generate_universal_pallet_packing_recipe_for_stack_packed( "electric-motor" ),
		generate_universal_pallet_unpacking_recipe_for_stack_packed( "electric-motor" ),
	} )
end

-- bio-industries
if data.raw[ "fluid" ][ "liquid-air" ] then
	data:extend( {
		generate_universal_pallet_packing_recipe_for_barrel_packed( "liquid-air" ),
		generate_universal_pallet_unpacking_recipe_for_barrel_packed( "liquid-air" ),
	} )
end

if data.raw[ "fluid" ][ "nitrogen" ] then
	data:extend( {
		generate_universal_pallet_packing_recipe_for_barrel_packed( "nitrogen" ),
		generate_universal_pallet_unpacking_recipe_for_barrel_packed( "nitrogen" ),
	} )
end

if data.raw[ "fluid" ][ "bi-biomass" ] then
	data:extend( {
		generate_universal_pallet_packing_recipe_for_barrel_packed( "bi-biomass" ),
		generate_universal_pallet_unpacking_recipe_for_barrel_packed( "bi-biomass" ),
	} )
end

if data.raw[ "item" ][ "bi-woodpulp" ] then
	data:extend( {
		generate_box_packing_40_recipe_for( "bi-woodpulp" ),
		generate_box_unpacking_40_recipe_for( "bi-woodpulp" ),
		generate_universal_pallet_packing_recipe_for_box_packed( "bi-woodpulp" ),
		generate_universal_pallet_unpacking_recipe_for_box_packed( "bi-woodpulp" ),
	} )
end

if data.raw[ "item" ][ "bi-ash" ] then
	data:extend( {
		generate_box_packing_40_recipe_for( "bi-ash" ),
		generate_box_unpacking_40_recipe_for( "bi-ash" ),
		generate_universal_pallet_packing_recipe_for_box_packed( "bi-ash" ),
		generate_universal_pallet_unpacking_recipe_for_box_packed( "bi-ash" ),
	} )
end

if data.raw[ "item" ][ "bi-coke-coal" ] then
	data:extend( {
		generate_box_packing_10_recipe_for( "bi-coke-coal" ),
		generate_box_unpacking_10_recipe_for( "bi-coke-coal" ),
		generate_universal_pallet_packing_recipe_for_box_packed( "bi-coke-coal" ),
		generate_universal_pallet_unpacking_recipe_for_box_packed( "bi-coke-coal" ),
	} )
end

if data.raw[ "item" ][ "bi-cellulose" ] then
	data:extend( {
		generate_box_packing_40_recipe_for( "bi-cellulose" ),
		generate_box_unpacking_40_recipe_for( "bi-cellulose" ),
		generate_universal_pallet_packing_recipe_for_box_packed( "bi-cellulose" ),
		generate_universal_pallet_unpacking_recipe_for_box_packed( "bi-cellulose" ),
	} )
end
