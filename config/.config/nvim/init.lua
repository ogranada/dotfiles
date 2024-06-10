
local function isempty(s)
  return s == nil or s == ''
end

local function requireerrorhandler( err )
  mod = os.getenv("NVIM_SETUP_MODULE")
  if isempty(mod) then
    mod = 'base'
  end
  print('Error importing module "' .. mod .. '". Change or remove env var NVIM_SETUP_MODULE.')
  print(err)
end

local function loadModule()
  pkg_path = os.getenv("LUA_USER_PATH")
    print(package.path)
  if not isempty(pkg_path) then
    package.path = pkg_path .. '/?;' .. package.path
    package.path = pkg_path .. '/?.lua;' .. package.path
    package.path = pkg_path .. '/?/init.lua;' .. package.path
    print(package.path)
  else
    -- nothing to do...
    print('no lua user path')
  end
  mod = os.getenv("NVIM_SETUP_MODULE")
  if isempty(mod) then
    mod = 'base'
  end
  require(mod)
end

xpcall(loadModule, requireerrorhandler)

