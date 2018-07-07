
local areas = {}

areas['example'] = {

	-- Area blueprint string.
	-- Areas larger than 32x32 will be ignored (temporarily)
	bp = "0eNqtnd1u3EYMhd9F1zYgHkqjkV+lyIWTbJIFnI2x3hRNA7977dq7KNCmiQ6/qyA/PA6HZzijI5L6Pry9+7q7P+4Pp+Hm+7B/9+XwMNz89n142H883N49/9np2/1uuBn2p93n4Wo43H5+/t1x92F/2L2//nT75+3x/fWT2bvj7rQbHq+G/eH97o/hJh7fXA2n/d3uBe/+y8P+tP9yeEZ8+tvrnK+Gb0+/So8/A70+7j9+Oj1B/xglln+j/OP/9D+G+fMff7f78JOfjvjQTRcAD2IEHIjZcyDWugMiHNC01YEJ4fDkcngyiTMBxJkI4kwmcSYzXonEK914pRmvBOKVRLzSjFea8RISL7nxkhkvAfESES+Z8ZIZr0DiFW68zobNNZxdQ3el/uv68WuGcg3DNRxNw9W066ZdadsFse3C3HavdiZ93f0S5kKHGViZRJLJXJlbRebe3J42RyRtjgD9R4D+Wgl3zigVd14xiu50xJ0OuNMJdxbEnQVwZyHcaYg7Z5RAUBCPfuWx+BdQOoKyICgNQZkRlAlBSQRFlV3Ufnyv2w4yAiArgNEBjAXAaADGDGBMAEbWMZBcHUSSDSLfI9sXySRIUkPyK5LqkVMHOQAFZDQBqVVAjhewgwVkEgEZTUBmVSnDn98/bX3Kuxh6dlsfmnV+xzCZhuHZbRUFdNbWZ89w9My2ah46S8q1DHVGad6PD8+stP9fICbA7c1OB7LmUV+DANZgRJw5oywISgNQSofcC4TqEFmHIMI7AxiloMRK0OyCsiAohEcBYAjASABjAjBmAKMWl44wrQOr2oFVXRBvFvN8fzUMzyyB/zOxepu9bubd79Vw9My23v1iNq/SZ8Pw7LZepWMyH00uhp7d1keTQMppLiiBoIwESk16uKB0BGVBUBqCMiMoE4KSCArC3UC4Gwh3EeoizEWIi/AWoS3CWoK0CE8QyiK7B9nISE5B0huSaZGkj5w/yFGInMrIBQG5q4hgrAjGimCsCMYWJQak0jdEJFmi8jaQStgIwh+ipDGQErUYCX+IGjWkRG0FvCEq1JACtW4WXXez5rqbJdfdrLjuZsF1N+utu1lu3c1q6+4VW3ev1roD1O8Y9U0SmZw1t0h4axxeROXxRx5d5e0OeZtxs36HlLwuZoJcvB22ADuMKLBdvB22eJFCqnmbGanmRaoBkSLK65oXqeZFCmnfdru3zY7pGYgU0TBt9kubXcpIk7LbozwRYu1EaLVms/QEcIbolTZbpSdAxJkADcft2EY6o9x+UoK7CdT4u33jAHWRtnGzHRKgbtaLgM3edUTQcjvXzcZ1Qj4j1DOzbd3sWmekOjNSZq8zIgwSuqAXKa9RltAgRy9OoxUmQO4ExM7RitFohYjYS+ZWMoc/mKMfzMEP5tgHc+iDOfLBHPjgjXvwEiCQ/4D052U/b8qDN+PBm/DgzXfwpjt4sx28yQ7eXAfvsCLuf8B9DLiOEc9gwKMI8CRCKCGAHgDIAYT6BqhhgBhGKL7E9AZidgMxuYGY20BMbSBmNhATG4h5DcS0hgZokA2oFm1ArWirV4q2ep1oq1eJtnqNaKtXiLZ6fSjwDqlRuRigJ7BLgM0K5AwgdQEZFEjkwHkCHGvA6Qoc8sBdQ3V2qs5O1dmpOjtLlZ+L1+q0WI1Oi9Pm1L2msW61jHWnYWz1uu9Wp/dudTrvguiZj9HryYzRacmMsdyRGfV29Bidfswg5i1E1BegPm4hiHEdF5CFAGl1kKhDqA5RGLUQoiI71yFKAUmCX0nwKwl+ZZ1fWedX1lNH1gmWdYJlnWATQbCpvqBTfUFnwpXZPMVn6xSf6ws3Uwu31WNzqII3U8EbqXCZkzF5dmGZbX2b1b1njIudZbb15RnRkXQBCQJkBEBKmsEFpBMgCwHSCJCZAJkIkCRACMYGwdggGEsQluArQVeCrQRZCa4CVCX4QRCV2DHE1iVyCJHMiKxKpHfinCEOPOLkJa4AxF1EAE8F8FQATwXwtKQRiKiAFVCVKqAsVUStqIBCQAGVgELKvYh6L6DgS0TFl4CSLwE1XyKKvmS2v13smmk3m3aTaZemnUy7MO1Gz271zLpnlnXGEdQ3SWRy1twi4a1xeBGVxx95dJW3O+Rtxs2FykQtqcxObnmd3AJqVwUUr8rr5JbXyY1860zmdAR50xEEVLYRHx+SNx1B3nQE5CN7MieOyJs4ImDiCPFJP3kTR+RNHEG+7ihzeJY6oMOqAzqsvDlQAuZAEV+1lDcHSr2u2ajXNRt5c42QD61qNblLvEPQWp+OoNWjLqArE9+X1epRF5AbtZanI2i1mIt88TjNXu70mrkT0M2I7yun18+dXkN3Eipdmi3d5pfgExAFiQ/Bm9+BNz8jnoQEmebEkfQmjiSgeCbR4upNHElv4kgiHbXmVKNMT5LM9CTJTE+SzPQkyUxPksz0JMlMT5LMtCTJ9GZBJdGADajx6c2CyrQkyUxLksy0JMlMS5LMtCTJTEuSzLQkyUxLkkxveFYS72wSUOFzswr/5mrYn3afn/7h27uvu/vj/nAarobfd8eHv1FbX6Qe67jo8fEvcc0dMw=="
	
	
	-- blueprint options
	,propability = 25.0						-- [default: 25.0] from 1.0 to 100.0
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
	,damage = 0								-- [default: 0] Damages the entity (if it have health). Will be used "neutral" Force as source and fire as damage type
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
	