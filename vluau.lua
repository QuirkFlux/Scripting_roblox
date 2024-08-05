local fiu = require(script.Interpreter)
local luau = require(script.Compiler)
local getFunction = require(script.Parent.GetFunction)

local getfunctionenvironment = getFunction[`{'get'}{'fenv'}`]

local function compile(source)
	return luau.luau_compile(source)
end

local function load(bytecode, env, settings)
	return fiu.luau_load(bytecode, env, settings or fiu.luau_newsettings())
end

local function run(source: string, env)
	return load(compile(source), env or getfunctionenvironment(2))
end

return run
