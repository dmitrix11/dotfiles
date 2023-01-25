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
vim.opt.guifont = "MesloLGLDZ_Nerd_Font:h16"
