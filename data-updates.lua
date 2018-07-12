local data = require 'areas' or {}

for name,area in pairs(data.area) do if area.bp:len() > 0 then

	ZADV.Data[data.ModName] = ZADV.Data[data.ModName] or {}
	ZADV.Data[data.ModName][name] = area
	
end end