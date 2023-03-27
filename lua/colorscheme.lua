local colorscheme = "tokyonight-moon" -- moon storm nignt day
-- local colorscheme = "gruvbox"
-- local colorscheme = "habamax"
-- local colorscheme = "lunaperche"
-- local colorscheme = "duskfox" -- duskfox dawnfox
-- local colorscheme = "carbonfox"
-- local colorscheme = "molokai"
-- local colorscheme = "onedark"
-- tokyonight
-- OceanicNext
-- gruvbox
-- zephyr
-- nord
-- onedark
-- nightfox
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme: " .. colorscheme .. " 没有找到！")
  return
end
