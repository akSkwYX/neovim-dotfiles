return {
   {
      "neovim/nvim-lspconfig",
      config = function()
         local lspconfig = require 'lspconfig'

         vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
         lspconfig.lua_ls.setup {}
         lspconfig.ocamllsp.setup {}
         lspconfig.harper_ls.setup {}
      end,
   },
}
