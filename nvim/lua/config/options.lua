-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.opt.expandtab = true

-- vim.opt.shiftwidth = 2
-- vim.opt.tabstop = 2
-- vim.opt.softtabstop = 2

-- vim.opt.smartindent = true

vim.opt.wrap = true

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
vim.opt.whichwrap:append("<>[]hl")

-- vim.opt.fillchars = { eob = " " }
-- vim.opt.number = true
-- vim.opt.relativenumber = true

-- vim.opt.wildmode = 'longest:full,full' -- complete the longest common match, and allow tabbing the results to fully complete them

-- vim.opt.title = true
-- vim.opt.mouse = 'a'

vim.opt.termguicolors = true

-- vim.opt.spell = true

-- vim.opt.ignorecase = true
-- vim.opt.smartcase = true

-- vim.o.hlsearch = false

-- vim.opt.list = true
-- vim.opt.listchars = { tab = '󰍟 ', trail = '•' }
-- vim.opt.fillchars:append({ eob = ' ' }) -- remove the '~' from end of buffer

-- vim.opt.splitbelow = true
-- vim.opt.splitright = true

vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 10

vim.opt.clipboard = "unnamedplus" -- use system clipboard

-- vim.opt.confirm = true -- ask for confirmation instead of error

vim.opt.undofile = true -- persistent undo
vim.opt.backup = true -- Automatically save a backup file
vim.opt.backupdir:remove(".") -- keep backups out of current folder

-- Gui options / settings
-- vim.opt.guifont = "MesloLGLDZ_Nerd_Font:h16"
-- vim.opt.guifont = "Iosevka Nerd Font Mono:h18,Noto Color Emoji:h18"
vim.opt.guifont = "Anonymous Pro:h18,Noto Color Emoji:h18"

-- Neovide settings start
if vim.g.neovide then
  vim.g.neovide_refresh_rate = 30
  vim.g.neovide_refresh_rate_idle = 1

  -- vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_cursor_unfocused_outline_width = 0.05
  vim.g.neovide_cursor_vfx_mode = "railgun"
  -- vim.g.neovide_cursor_antialiasing = false

  vim.g.neovide_hide_mouse_when_typing = true

  vim.g.neovide_underline_automatic_scaling = true
  vim.g.neovide_scale_factor = 1.0
  -- Increase font size
  vim.keymap.set("n", "<C-=>", function()
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * 1.10
  end, {})
  -- Decrease font size
  vim.keymap.set("n", "<C-->", function()
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor / 1.10
  end, {})
  -- Reset font size
  vim.keymap.set("n", "<C-0>", function()
    vim.g.neovide_scale_factor = 1.0
  end, {})

  -- Helper function for transparency formatting
  local alpha = function()
    return string.format("%x", math.floor((255 * vim.g.transparency) or 0.8))
  end
  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  vim.g.neovide_transparency = 0.0
  vim.g.transparency = 0.98
  vim.g.neovide_background_color = "#0f1119" .. alpha()
  vim.g.neovide_floating_blur_amount_x = 20.0
  vim.g.neovide_floating_blur_amount_y = 20.0
end
