local M = {}

M.nvimtree = {
  plugin = true,

  n = {
    -- toggle nvim-tree
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" }
  }
}

M.general = {
  v = {
  -- Move lines in Visual Mode
    ["<S-Down>"] = { ":m '>+1<CR>gv=gv", opts = { silent = true } },
    ["<S-Up>"] = { ":m '<-2<CR>gv=gv", opts = { silent = true } },
    ["J"] = { ":m '>+1<CR>gv=gv", opts = { silent = true } },
    ["K"] = { ":m '<-2<CR>gv=gv", opts = { silent = true } }
  },

  n = {
    ["<C-d>"] = { "<C-d>zz", opts = { silent = true } },
    ["<C-u>"] = { "<C-u>zz", opts = { silent = true } },
    ["n"] = { "nzzzv", opts = { silent = true } },
    ["N"] = { "Nzzzv", opts = { silent = true } }
  }
}

return M
