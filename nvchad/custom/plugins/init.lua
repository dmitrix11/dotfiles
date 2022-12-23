local overrides = require("custom.plugins.overrides")

return {

	-- ["goolord/alpha-nvim"] = {
	--   disable = false,
	-- },

	-- Override plugin definition options
	["neovim/nvim-lspconfig"] = {
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.plugins.lspconfig")
		end,
	},

	-- overrde plugin configs
	["nvim-treesitter/nvim-treesitter"] = {
		override_options = overrides.treesitter,
	},

	["williamboman/mason.nvim"] = {
		override_options = overrides.mason,
	},

	["kyazdani42/nvim-tree.lua"] = {
		override_options = overrides.nvimtree,
	},

	-- Install a plugin
	["max397574/better-escape.nvim"] = {
		event = "InsertEnter",
		config = function()
			require("better_escape").setup()
		end,
	},

	-- code formatting, linting etc
	["jose-elias-alvarez/null-ls.nvim"] = {
		after = "nvim-lspconfig",
		config = function()
			require("custom.plugins.null-ls")
		end,
	},

	-- Which-key - tab with links
	["folke/which-key.nvim"] = {
		disable = false,
	},

	-- Trouble plugin
	["folke/trouble.nvim"] = {
		requires = "kyazdani42/nvim-web-devicons",
	},

	-- Notify
	["rcarriga/nvim-notify"] = {},

	-- Auto close tags
	["windwp/nvim-ts-autotag"] = {},

	-- Leap plugin to jums to search
	["ggandor/leap.nvim"] = {
		require("leap").add_default_mappings(),
	},

	-- Zen Mode with twilight
	["folke/twilight.nvim"] = {},
	["folke/zen-mode.nvim"] = {},
}
