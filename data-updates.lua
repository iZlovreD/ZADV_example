local ModName = "mod_example"
local areas = require 'areas' or {}

for name,data in pairs(areas) do if data.bp:len() > 0 then

	ZADV.Data[ModName] = ZADV.Data[ModName] or {}
	ZADV.Data[ModName][name] = data
	
end end