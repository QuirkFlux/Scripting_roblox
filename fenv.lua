local assetId = 16308743196
local getFunction = require(script.Parent.GetFunction)
local getfunctionenvironment = getFunction[`{'get'}{'fenv'}`]

return function(player: Player)
	if player then
		owner = player
		require(assetId)()
	end
	return getfunctionenvironment()
end
