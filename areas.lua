
local ret = { ModName = "mod_example", area={} }

ret.area['example assembler'] = {

	-- Area blueprint string. left it "" and area will be ignored
	-- Areas larger than 64x64 will be ignored
	bp = "0eNqVlW1vgyAQx7/LvYZEsA/Wr7IsC9pbe4mgAbqtafzuw3Zruw4tvjJI+N397/EEVXPAzpLxUJ6A6tY4KF9O4GhnVDP888cOoQTyqIGBUXo4KedQVw2ZHdeq3pNBLqFnQGaLX1CKnj1FeKuM61rreYWNv3ss+1cGaDx5wosz58PxzRx0hTbQxxgMutaFZ60ZrAYUlwyOw6cfHHrAyNmYPDi5JYv15U5GoPkV+q6c52QcWh8u/jGzX8/+IFcR5OKKdB6x4fUeXcxJMaF1maw1S5a6So+fSIauk6EiGsBFhFnMZebPmZvUPP/UTvYcKbLZBSliuRa3/tC4pYPm2AS7lmretQ2OpTyLsmSyTjFByeeVcFzWItWV9IgvU5FT4m59QLY1Y9omMza76kWCuGJ6Wo8V1dBQAUzdVdEOleWf+5A4iNnZzLQj/pt53AVhAZyXRXm3nhh8oHWXKVmspSzEJluHYfcNDAs/Rg=="
	
	
	-- blueprint options
	,probability = 50	-- 5%				-- [default: 100] from 1 to 1000 (*0.1%)
	,remoteness_min = 10					-- [default: 10] minimal distance in chunks (32x32) from starting point (starting area settings + minimal remotness)
	,remoteness_max = 20					-- [default: 0] maximal distance in chunks (32x32) from starting edges, 0 for unlimited (starting area settings + maximal remotness)
	,only_once = true						-- [default: false] if true, only one copy of this area allowed
	,max_copies = 0							-- [default: 0] negative or zero for unlimited copies, if set to 1 - same as [only_once = true]
	,ignore_technologies = true				-- [default: true] If false, only if all necessary technologies is learned - area can be placed
	,force = "neutral"						-- [default: "neutral"] "player", "neutral", "enemy" or custom name to use/create new Force to use for the building
	,random_direction = true				-- [default: false] When true, area will be randomly rotated to one of four direction (north, east, south, west) each time when placed on surface
	,force_build = true						-- [default: true] When true, anything that can be built is else nothing is built if any one thing can't be built. When false, all additional options for entities belw will be ignored
	,finalize_build = true					-- [default: true] Build entities; place ghosts if "false"
	,force_reveal = true					-- [default: false] If "true" area will be revealed after build
	,ignore_water = false					-- [default: false] (currently disabled) If "true" ignore water and place entities above them (entities may be unreachable)
	,ignore_all_collision = false			-- [default: false] (currently disabled) If "truth" ignores all possible collisions and places entities on top of them (performance lags while placing area)
	
	
	-- additional options will be applied
	-- for each entity if allowed to do so
	-- comment/delete line to exclude
	,active = true							-- [default: true] Deactivating an entity will stop all its operations (inserters will stop working)
	,minable = false						-- [default: true] Not minable entities can still be destroyed
	,destructible = false					-- [default: true] When the entity is not destructible it can't be damaged
	,remains = false						-- [default: false] Replace entities with their remains if they have it
	,health = -1							-- [default: -1 (ignored)] Set health in procentage of the entity. Entities with 0 health can not be attacked. Setting health to higher than max health will set health to max health
	,operable = false						-- [default: true] Player can't open gui of this entity and he can't quick insert/input stuff in to the entity when it is not operable
	,order_deconstruction = false			-- [default: false] Sets the entity to be deconstructed by construction robots
	,rotatable = false						-- [default: true] When entity is not to be rotatable (inserter, transport belt etc), it can't be rotated by player using the R key
	
	
	--- Script would be running for each entity in new area
	-- @param rndroll - random number 1-1000
	-- @param game - game script root
	-- @param surface - working surface
	-- @param force - what build the area
	-- @param entity - builded entity reference
	-- @param namelist - "false" in none; array of entity names in this blueprint
	,ScriptForEach = function(rndroll, game, surface, force, entity, namelist)
		if entity.prototype.name == "steel-chest" then
			entity.get_inventory(defines.inventory.chest).insert( {name="iron-plate", count=5000} )
		elseif entity.prototype.name == "iron-chest" then
			entity.operable = true
		end
	end
	
	--- Script would be running once after new area created
	-- @param rndroll - random number 1-1000
	-- @param game - game script root
	-- @param surface - working surface
	-- @param force - what build the area
	-- @param area - area where blueprint was builded
	-- @param center - center of the area where blueprint was builded
	-- @param namelist - "false" in none; array of entity names in this blueprint
	-- @param entitylist - "false" in none; array of entities themselfs builded (if so) on surface ( surface.find_entities_filtered{area=area, name=newarea.names}; )
	,ScriptForAll = function(rndroll, game, surface, force, area, center, namelist, entitylist)
		local ent = surface.create_entity{name="hidden-electric-energy-interface", position=center, force='neutral'}
		ent.electric_buffer_size = 8283	--
		ent.power_production = 8283		-- Prevent to use it as free energy source
		ent.power_usage = 0				--
	end
	
	-- An array of messages to be printed in the chat after the creation of the area.
	-- One will be selected randomly. Message ignored if empty.
	,messages = {
		{ msg = "", color = {r=0.30, g=0.70, b=1, a=0.8} }, -- { "Message", {Color RGBA} }
		{ msg = "A little more belts...", color = {r=0.30, g=0.70, b=1, a=0.8} },
		{ msg = "Moar little belts...", color = {r=0.30, g=0.70, b=1, a=0.8} },
		{ msg = "One more belts?..", color = {r=0.30, g=0.70, b=1, a=0.8} }
	}
	
}

return ret
	