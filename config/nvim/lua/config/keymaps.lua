local kmap = vim.keymaps.set
-- Seek files
kmap('n', '<leader>ff', require("telescope.builtin").find_files, {desc = "Find files"})
-- Live grep
kmap('n', '<leader>fg', require("telescope").extensions.egrepify.egrepify, {desc = "Live grep"})
-- Show keymaps
kmap({'n', 'v'},'<leader>?', ':Telescope keymaps<CR>', {desc = "Show keymaps"})

-- Knap keymaps (preview tex, markdown, html)
-- F5 processes the document once and refreshes the view
kmap({ 'n', 'v', 'i' },'<F5>', function() require("knap").process_once() end, {desc = "Preview : Process once"})
-- F6 closes the viewer application, and allows settings to be reset
kmap({ 'n', 'v', 'i' },'<F6>', function() require("knap").close_viewer() end, {desc = "Preview : Close preview"})
-- F7 toggles the auto-processing on and off
kmap({ 'n', 'v', 'i' },'<F7>', function() require("knap").toggle_autopreviewing() end, {desc = "Preview : Toggle preview"})
-- F8 invokes a SyncTeX forward search, or similar, where appropriate
kmap({ 'n', 'v', 'i' },'<F8>', function() require("knap").forward_jump() end, {desc = "Preview : SyncTeX forward search"})

-- Lsp keymaps
-- Show hover information
kmap('n', 'K', vim.lsp.buf.hover, {desc = "Show LSP description"})
-- Go to definition
kmap('n', 'gd', vim.lsp.buf.definition, {desc = "Go to definition"})
-- Show diagnostic 
kmap('n', "<leader>d", vim.diagnostic.open_float, {desc = "Show diagnostic"})

-- Snippet
kmap({"i", "s"}, "<C-l>", function()
   if require("luasnip").expand_or_jumpable() then
      require("luasnip").expand_or_jump()
   end
end, {desc = "Snippet next argument", silent = true})

-- File tree
kmap('n', '<C-n>', ':Neotree source=filesystem reveal=true position=left action=focus toggle=true<CR>', {desc = "File tree"})

-- Format code
kmap("n", "<leader>gf", vim.lsp.buf.format, {desc = "Format code"})

-- Translation
kmap({"n", "x"}, "<leader>tr", require("pantran").motion_translate, {noremap = true, silent = true, expr = true, desc="Motion translate"})
kmap("n", "<leader>trr", function() return require("pantran").motion_translate() .. "_" end, {noremap = true, silent = true, expr = true, desc="Open translation"})

-- Clipboard manager
-- Show clipboard history
kmap("n", "<leader>cc", require("telescope").extensions.neoclip.default, {noremap = true, silent = true, desc = "Show clipboard history"})
-- Show macro history
kmap("n", "<leader>cm", require("telescope").extensions.macroscope.default, {noremap = true, silent = true, desc = "Show macro history"})
