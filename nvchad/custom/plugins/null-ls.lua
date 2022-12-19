local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt,
  b.formatting.prettierd.with { filetypes = { "html", "markdown", "css", "tsserver" } },

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },

  -- cpp
  -- b.formatting.clang_format,
  -- b.formatting.rustfmt,
}

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format {
    filter = function(client)
      -- apply whatever logic you want (in this example, we'll only use null-ls)
      return client.name == "null-ls"
    end,
    bufnr = bufnr,
  }
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup {
  debug = true,
  sources = sources,
  -- on_attach = function(client)
  --        if client.server_capabilities.documentFormattingProvider then
  --           vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
  --        end
  --     end,
  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          lsp_formatting(bufnr)
        end,
      })
    end
  end,
}
-- -------------------------------
-- local null_ls = require("null-ls")
-- local b = null_ls.builtins
--
--
-- local sources = {
--   b.formatting.prettierd,
--   b.code_actions.eslint_d,
-- }
--
-- local M = {}
--
-- M.setup = function()
--    null_ls.setup {
--       debug = true,
--       sources = sources,
--
--       -- format on save
--       on_attach = function(client)
--          if client.server_capabilities.document_formatting then
--             vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
--          end
--       end,
--    }
-- end
--
-- return M
