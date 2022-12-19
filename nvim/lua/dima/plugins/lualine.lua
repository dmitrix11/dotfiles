-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

require('lualine').setup {
    options = {
        theme = "catppuccin"
        -- ... the rest of your lualine config
    }
}
