local data = require 'areas' or {}
debug(2, "Requesting [%s] areas", data.ModName)


ZADV.Data[data.ModName] = ZADV.Data[data.ModName] or {}

for name,area in pairs(data.area) do if area.bp:len() > 0 then

	ZADV.Data[data.ModName][name] = area
	
end end


ZADV.Data.Replacements = ZADV.Data.Replacements or {}

if data.replacements then for ori,new in pairs(data.replacements) do

	ZADV.Data.Replacements[ori] = ZADV.Data.Replacements[ori] or {}
	table.insert(ZADV.Data.Replacements[ori], new)
	
end end