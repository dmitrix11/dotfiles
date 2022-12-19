local set = vim.opt

set.termguicolors = true
set.guifont={"MesloLGLDZ Nerd Font", ":h16"}
set.scrolloff = 10
set.relativenumber = true
set.confirm = true
set.undofile = true
set.backup = true
set.backupdir:remove('.')

-- notify activate
vim.notify = require("notify")
