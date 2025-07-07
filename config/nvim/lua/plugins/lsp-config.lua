return {
   {
      "neovim/nvim-lspconfig",
      config = function()
         local lspconfig = require 'lspconfig'

         vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})

         vim.lsp.enable("lua_ls")
         vim.lsp.config("lua_ls")
         vim.lsp.enable("ocamllsp")
         vim.lsp.config("ocamllsp")
         vim.lsp.enable("harper_ls")
         vim.lsp.config("harper_ls")
         vim.lsp.enable("java_language_server")
         vim.lsp.config("java_language_server")
         vim.lsp.enable("hls")
         vim.lsp.config("hls")

         vim.diagnostic.config({
            virtual_text = { severity = { min = vim.diagnostic.INFO }, },
            underline = { severity = { min = vim.diagnostic.severity.INFO } },
            signs = { severity = { min = vim.diagnostic.severity.INFO } },
         })
      end,
   },
}
