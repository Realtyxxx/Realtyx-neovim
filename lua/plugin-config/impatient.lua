_G.__luacache_config = {
  chunks = {
    enable = true,
    path = vim.fn.stdpath("cache") .. "/luacache_chunks",
  },
  modpaths = {
    enable = true,
    path = vim.fn.stdpath("cache") .. "/luacache_modpaths",
  },
}
require("impatient").enable_profile()

--[[ 
Measured on a M1 MacBook Air.

Standard
Total resolve: 54.337ms, total load: 34.257ms

With cache
Total resolve: 6.357ms, total load: 6.796ms


:LuaCacheClear:

Remove the loaded cache and delete the cache file. A new cache file will be created the next time you load Neovim.

:LuaCacheLog:

View log of impatient.

:LuaCacheProfile:

View profiling data. To enable, Impatient must be setup with:

lua require'impatient'.enable_profile()
 ]]
