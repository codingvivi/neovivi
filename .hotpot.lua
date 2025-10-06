-- ~/.config/nvim/.hotpot.lua

-- Define a list of globals that are allowed for regular modules.
local allowed_globals = {"hs"}
for key, _ in pairs(_G) do
  table.insert(allowed_globals, key)
end

return {
  build = {
    {atomic = true, verbose = true},
    {"fnl/**/*macro*.fnl", false},
    {"fnl/**/*.fnl", function(path)
      return string.gsub(path, "/fnl/", "/.compiled/lua/")
    end},
    {"init.fnl", true}
  },
  clean = {{".compiled/lua/**/*.lua", true}},
  compiler = {
    modules = {
      allowedGlobals = allowed_globals
    },
    -- This configuration is from the author of Hotpot and is the correct
    -- way to solve sandbox issues with third-party macro libraries.
    macros = {
      env = "_COMPILER",
      compilerEnv = _G,
      allowGlobals = false
    }
  }
}
