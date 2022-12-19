-- First read our docs (completely) then check the example_config repo

local M = {}

-- Mappings
M.mappings = require "custom.mappings"

-- Options
M.options = require "custom.options"

-- Plugins
M.plugins = require "custom.plugins"

M.ui = {
  -- theme = "ayu-dark",
  theme = "rosepine",
  hl_override = {
    Comment = { italic = true },
    Conditional = { italic = true },
    Function = { italic = true },
    NvimTreeOpenedFolderName = { fg = "green", bold = true, italic = true },
    NvimTreeOpenedFile = { fg = "teal", bold = true, italic = true },
  },
  hl_add = {},
}

return M
