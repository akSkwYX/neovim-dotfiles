return {
   {
      "neovim/nvim-lspconfig",
      config = function()
         local lspconfig = require 'lspconfig'

         vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
         lspconfig.lua_language_server.setup {}
         lspconfig.ocamllsp.setup {}
         lspconfig.harper_ls.setup {}
         lspconfig.java_language_server.setup {}
         lspconfig.haskell_language_server.setup {}
      end,
   },
}
