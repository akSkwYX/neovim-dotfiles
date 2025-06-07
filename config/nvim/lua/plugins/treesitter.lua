return {
   -- Tree-Sitter
	"nvim-treesitter/nvim-treesitter", build = ":TSUpdate",

   -- Configure Treesitter
   config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
         auto_install = true,
         highlight = { enable = true },
         indent = { enable = true },
      })
      local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
      parser_config.latex = {
         install_info = {
            url = "~/.config/nvim/tree-sitter-parser/tree-sitter-latex",
            files = { "src/parser.c", "src/scanner.c" },
            branch = "main"
         },
         filetype = "tex"
      }
   end,
}
