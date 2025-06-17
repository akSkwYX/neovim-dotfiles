return {
   {
      "neovim/nvim-lspconfig",
      config = function()
         local lspconfig = require 'lspconfig'

         vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
         lspconfig.lua_ls.setup ( {} )
         lspconfig.ocamllsp.setup ( {} )
         lspconfig.harper_ls.setup ( {} )
         lspconfig.java_language_server.setup ( {} )
         lspconfig.hls.setup ( {} )

         vim.diagnostic.config({
            virtual_text = { severity = { min = vim.diagnostic.INFO }, },
            underline = { severity = { min = vim.diagnostic.severity.INFO } },
            signs = { severity = { min = vim.diagnostic.severity.INFO } },
         })
      end,
   },
}
