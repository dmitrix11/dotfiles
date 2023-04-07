return {
  {
    "simrat39/rust-tools.nvim",

    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        ensure_installed = { "rust_analyzer" },
      },
    },

    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-lua/plenary.nvim",
    },

    -- cmd = {
    --   "rustup",
    --   "run",
    --   "stable",
    --   "rust_analyzer",
    -- },
  },
}
