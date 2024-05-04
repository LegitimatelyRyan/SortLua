--[[
    SortLua
    Different Sorting Algorithms in LUA

    LegitimatelyRyan
    May 4th, 2024
    SortLua
]]

function binarySearch(Array, Item)
	local Length = #Array
	local CurrentIndex = 1
	if Length < 2 then
		return "Array too short"
	end

	while CurrentIndex <= Length do
		local temp = math.floor((CurrentIndex + Length) / 2)
		print("Checking " .. temp)
		if Array[temp] < Item then
			CurrentIndex = temp + 1
		elseif Array[temp] > Item then
			Length = temp - 1
		else
			return temp
		end
	end
	return "Unable to find value in table"
end
