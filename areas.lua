
local areas = {}

areas['example'] = {

	-- Area blueprint string.
	-- Areas larger than 32x32 will be ignored (temporarily)
	bp = "0eNqtms1u2zAQhN+FZxkQyeWP/CpFDm7MJAQc2ZCVoqmhd68dyUUOlSXu7Clwgvk4Q63FZciL+nn4SKcut73aXlR+PrZntf1xUef82u4Ot9/1n6ektir36V1Vqt293z516SW3ab952/3ZdfvNVfbcpT6poVK53affaquHp0r1+ZBG3ul4zn0+tjfi9a8b7Sv1+fVzWIJuDumlv5IfQJwEhHCItsuMLr++PYaQBMRBECfxdJyEE5JwQvOP+Fvpzgr/91hX6bDodnJdPPoo1KZUZ6YBmUKtS3V6GpAp1HWprp4GrJFqmiCNACMKMIIAwwswnACDBBhWgGEEGBpn1ND7Y2RoAYYRYFgBBgkwnADDCzCCACMKMBqE0Qi8TxvcRhSwEXEbQcBGwG14ARset+EEbLjZpeXhOu9mV5M1MsuTGZ5Ms2Q1S8UbixeMN4tQxZFAxRGv4mhufVqhgjJbgcyWl9myMls8sxHIbHiZDSuzwTNriZ0LL7Ne3c8u2cfNE8s7MvMFW8YlRuHE4/sIfBdRc2Z9dWM551sLzDmv2FlVptG8RiAv74XGep8ZNK8VyMtbtFhrlkXzkkBeXmNCrE6YWI0wsfpgYrXBxOmCidMEE6cHJk4LzOohCa1NJ1CbDjXhBUx41EQQMBFQE1HARERNNAImmtX/JV9CRBwRcITHEQ5HEI6wOMLgCA0jarS+NQowKMCiAEIBDgV4FBBQQEQByEal5p1g3s9mChuYfwemhqUrdml4J9D38+BSl3b9Wf/8ts/yzvrvh+aWJwO+RyVXHOZjE+7DSfhw66/kLEMIh2gLzwhyM6jgEsyIeKrGq1bbbzezKvUrdecvqI/BmKibOphh+AtXOInE"
	
	-- blueprint options
	,probability = 25						-- [default: 25] from 1 to 250 (0.1% - 25%)
	,force = "neutral"						-- [default: "neutral"] "player", "neutral", "enemy" or custom name to use/create new Force to use for the building
	,force_build = true						-- [default: true] When true, anything that can be built is else nothing is built if any one thing can't be built
	,finalize_build = true					-- [default: true] Build entities; place ghosts if "false"
	,direction = defines.direction.north	-- [default: defines.direction.north] The direction to use when building
	,ignore_water = false					-- [default: false] If "true" ignore water and place entities above them (entities may be unreachable)
	,ignore_all_collision = false			-- [default: false] If "truth" ignores all possible collisions and places entities on top of them (performance lags while placing area)

	
	-- additional options will be applied
	-- for each entity if allowed to do so
	-- comment/delete line to exclude
	,active = true							-- [default: true] Deactivating an entity will stop all its operations (inserters will stop working)
	,armed = true							-- [default: true] If this land mine is armed
	,consumption_modifier = 1.0				-- [default: 1.0] Multiplies the energy consumption
	,destructible = true					-- [default: true] When the entity is not destructible it can't be damaged
	,remains = false						-- [default: false] Replace entities with their remains if they have it
	,energy_stored = 0.0					-- [default: 0.0] Energy stored in the entity (heat in furnace, energy stored in electrical devices etc
	,health = 100							-- [default: 100] Set health in procentage of the entity. Entities with 0 health can not be attacked. Setting health to higher than max health will set health to max health
	,operable = true						-- [default: true] Player can't open gui of this entity and he can't quick insert/input stuff in to the entity when it is not operable
	,order_deconstruction = false			-- [default: false] Sets the entity to be deconstructed by construction robots
	,rotatable = true						-- [default: true] When entity is not to be rotatable (inserter, transport belt etc), it can't be rotated by player using the R key

	
	-- events after creating area
	,message = ""							-- [default: ""] print message to the chat; ignored if ""
	,script = function(self)				-- Script would be running once after area created
		local data = self
	end
}

return areas
	