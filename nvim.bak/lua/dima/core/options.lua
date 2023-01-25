local opt = vim.opt -- for conciseness

opt.guifont = "JetBrains Mono Slashed:h16"
-- vim.opt.linespace = 21

vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

vim.wo.number = true

opt.title = true
opt.laststatus = 2
opt.showcmd = true
opt.cmdheight = 1
opt.expandtab = true
opt.shell = "fish"
opt.backupskip = "/tmp/*,/private/tmp/*"
opt.inccommand = "split"
opt.breakindent = true
opt.si = true

-- line numbers
-- opt.relativenumber = true
opt.number = true
opt.relativenumber = true

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus")

--split windows
opt.splitright = true
opt.splitbelow = true

-- "-" is a part of the word
opt.iskeyword:append("-")
