-- First read our docs (completely) then check the example_config repo

local M = {}
-- Plugins
M.plugins = require("custom.plugins")

-- Options
M.options = require("custom.options")

-- Mappings
M.mappings = require("custom.mappings")

M.ui = {
	-- theme = "ayu-dark",
	theme = "catppuccin",
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
