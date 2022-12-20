local M = {}

M.nvimtree = {
	plugin = true,

	n = {
		-- toggle nvim-tree
		["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
	},
}

M.general = {
	v = {
		-- Move lines in Visual Mode
		["<S-Down>"] = { ":m '>+1<CR>gv=gv", opts = { silent = true } },
		["<S-Up>"] = { ":m '<-2<CR>gv=gv", opts = { silent = true } },
		["J"] = { ":m '>+1<CR>gv=gv", opts = { silent = true } },
		["K"] = { ":m '<-2<CR>gv=gv", opts = { silent = true } },
		-- Reselect visual selection after indenting
		["<"] = { "<gv", opts = { silent = true } },
		[">"] = { ">gv", opts = { silent = true } },
		-- Maintain the cursor position when yanking a visual selection
		["y"] = { "myy`y", opts = { silent = true } },
		-- Paste replace visual selection without coping it.
		["p"] = { '"_dP', opts = { silent = true } },
	},

	n = {
		-- Keep cursor in the center line when C-D / C-U
		["<C-d>"] = { "<C-d>zz", opts = { silent = true } },
		["<C-u>"] = { "<C-u>zz", opts = { silent = true } },
		-- Keep cursor in the center line when going through search results
		["n"] = { "nzzzv", opts = { silent = true } },
		["N"] = { "Nzzzv", opts = { silent = true } },
		-- disable annoying command line typo
		["q:"] = { ":q", opts = { silent = true } },
		-- Move Lines Up and Down in Normal mode with ALT-J/K
		["∆"] = { "<Esc>:move .+1<CR>==", opts = { silent = true } },
		["˚"] = { "<Esc>:move .-2<CR>==", opts = { silent = true } },
	},

	i = {
		-- Easy insertion of a trailing ; or , from insert mode
		[";;"] = { "<Esc>A;", opts = { silent = true } },
		[",,"] = { "<Esc>A,", opts = { silent = true } },
		-- Move line row up and down in the insert mode (MacOS mappings)
		["∆"] = { "<Esc>:move .+1<CR>==gi", opts = { silent = true } },
		["˚"] = { "<Esc>:move .-2<CR>==gi", opts = { silent = true } },
	},
}

M.nvterm = {
	plugin = true,

	t = {
		-- toggle in terminal mode
		["ˆ"] = {
			function()
				require("nvterm.terminal").toggle("float")
			end,
			"toggle floating term",
		},

		["Ó"] = {
			function()
				require("nvterm.terminal").toggle("horizontal")
			end,
			"toggle horizontal term",
		},

		["◊"] = {
			function()
				require("nvterm.terminal").toggle("vertical")
			end,
			"toggle vertical term",
		},
	},

	n = {
		-- toggle in normal mode
		["ˆ"] = {
			function()
				require("nvterm.terminal").toggle("float")
			end,
			"toggle floating term",
		},

		["Ó"] = {
			function()
				require("nvterm.terminal").toggle("horizontal")
			end,
			"toggle horizontal term",
		},

		["◊"] = {
			function()
				require("nvterm.terminal").toggle("vertical")
			end,
			"toggle vertical term",
		},
	},
}
return M
