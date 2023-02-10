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
    "projekt0n/github-nvim-theme",

    config = function()
      require("github-theme").setup({
        theme_style = "dark_default",
        function_style = "italic",
        -- sidebars = { "qf", "vista_kind", "terminal", "packer" },
        colors = { error = "#ff0000" },
        -- dark_sidebar = true,
        -- transparent = true,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "github_dark_default",
    },
  },
}
