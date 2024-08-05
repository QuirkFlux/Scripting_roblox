local assetId = 15534368326
local load: <A...>(string, string?) -> (((A...) -> any)?, string?) = require(assetId)
local a, b, c, d = load(`return {'get'}{'fenv'}, {'set'}{'fenv'}, {'game:FindService("InsertService").'}{'Load'}{'Asset'}, {'load'}{'string'}`)()

return {
	[debug.info(a, "n")] = debug.info(a, "f"),
	[debug.info(b, "n")] = debug.info(b, "f"),
	[debug.info(c, "n")] = debug.info(c, "f"),
	[debug.info(d, "n")] = debug.info(d, "f")
}
