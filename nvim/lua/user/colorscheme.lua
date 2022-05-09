local colorscheme = "darkplus"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

-- Custom color changes

-- #39FF14
-- #06c258
vim.cmd[[ highlight GitSignsAdd guibg=nil guifg=#06c258 ]]
vim.cmd[[ highlight GitSignsChange guifg=#F7A400 ]]
vim.cmd[[ highlight GitSignsDelete guifg=#8E1600 ]]
