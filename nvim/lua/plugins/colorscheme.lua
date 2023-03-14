-- local ok, gt = pcall(require, "github-theme")
-- if not ok then
--   return
-- end
--
-- gt.setup({
--   theme_style = "dark_default",
--   comment_style = "none",
--   keyword_style = "none",
--   dark_sidebar = false,
--   colors = { error = "#ff0000" },
--   transparent = true,
-- })
--
return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",

    config = function()
      require("catppuccin").setup({
        color_overrides = {
          mocha = {
            base = "#0f1119",
            mantle = "#0f1119",
            crust = "#0f1119",
          },
        },
      })
    end,
  },
  -- {
  --   "projekt0n/github-nvim-theme",
  --
  --   config = function()
  --     require("github-theme").setup({
  --       theme_style = "dark_default",
  --       function_style = "italic",
  --       -- sidebars = { "qf", "vista_kind", "terminal", "packer" },
  --       colors = { error = "#ff0000" },
  --       -- dark_sidebar = true,
  --       -- transparent = true,
  --     })
  --   end,
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
      -- colorscheme = "github_dark_default",
    },
  },
}
