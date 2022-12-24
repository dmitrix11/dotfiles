local M = {}

M.treesitter = {
	ensure_installed = {
		"vim",
		"lua",
		"python",
		"php",
		"html",
		"css",
		"javascript",
		"typescript",
		"vue",
		"json",
		"yaml",
		"tsx",
	},
	autotag = {
		enable = true,
	},
}

M.mason = {
	ensure_installed = {
		-- lua stuff
		"lua-language-server",
		"stylua",

		-- web dev stuff
		"css-lsp",
		"html-lsp",
		"typescript-language-server",
		"prettierd",
	},
}

-- git support in nvimtree
M.nvimtree = {
	-- auto_close = true,

	diagnostics = {
		enable = true,
	},

	git = {
		enable = true,
	},

	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
}

return M
