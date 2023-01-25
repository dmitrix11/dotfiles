-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- When text is wrapped, move by terminal rows unless a count is provivded
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true })

-- Reselect visual indentation
-- vim.keymap.set( 'v', '<', '<gv' )
-- vim.keymap.set( 'v', '>', '>gv' )

-- Maintain cursor position when yanking a visual selection
-- vim.keymap.set( 'v', 'y', 'myy`y' )

-- Disable annoying command line typo
-- vim.keymap.set( 'n', 'q:', ':q' )

-- Paste replace visual selection without coping it
vim.keymap.set("v", "p", '"_dP')

--Easy insertion of a trailing ';' or ',' from insert mode
vim.keymap.set("i", ";;", "<Esc>A;")
vim.keymap.set("i", ",,", "<Esc>A,")

-- Move lines up and down with Alt-j/k or Shift-Down/Up
vim.keymap.set("i", "∆", "<Esc>:move .+1<CR>==gi")
vim.keymap.set("i", "˚", "<Esc>:move .-2<CR>==gi")
vim.keymap.set("i", "<S-Down>", "<Esc>:move .+1<CR>==gi")
vim.keymap.set("i", "<S-Up>", "<Esc>:move .-2<CR>==gi")
vim.keymap.set("n", "∆", ":move .+1<CR>==")
vim.keymap.set("n", "˚", ":move .-2<CR>==")
vim.keymap.set("n", "<S-Down>", ":move .+1<CR>==")
vim.keymap.set("n", "<S-Up>", ":move .-2<CR>==")
vim.keymap.set("v", "∆", ":move '>+1<CR>gv=gv")
vim.keymap.set("v", "˚", ":move '<-2<CR>gv=gv")
vim.keymap.set("v", "<S-Down>", ":move '>+1<CR>gv=gv")
vim.keymap.set("v", "<S-Up>", ":move '<-2<CR>gv=gv")
