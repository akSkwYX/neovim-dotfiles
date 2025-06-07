-- Seek files
vim.keymap.set('n', '<leader>ff', require("telescope.builtin").find_files, {})
-- Live grep
vim.keymap.set('n', '<leader>fg', require("telescope").extensions.egrepify.egrepify, {})
-- Show keymaps
vim.keymap.set({'n', 'v'},'<leader>?', ':Telescope keymaps<CR>')

-- Knap keymaps (preview tex, markdown, html)
local kmap = vim.keymap.set
-- F5 processes the document once and refreshes the view
kmap({ 'n', 'v', 'i' },'<F5>', function() require("knap").process_once() end)
-- F6 closes the viewer application, and allows settings to be reset
kmap({ 'n', 'v', 'i' },'<F6>', function() require("knap").close_viewer() end)
-- F7 toggles the auto-processing on and off
kmap({ 'n', 'v', 'i' },'<F7>', function() require("knap").toggle_autopreviewing() end)
-- F8 invokes a SyncTeX forward search, or similar, where appropriate
kmap({ 'n', 'v', 'i' },'<F8>', function() require("knap").forward_jump() end)

-- Lsp keymaps
-- Show hover information
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
-- Go to definition
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
-- Show diagnostic 
vim.keymap.set('n', "<leader>d", vim.diagnostic.open_float, {})

-- File tree
vim.keymap.set('n', '<C-n>', ':Neotree source=filesystem reveal=true position=left action=focus toggle=true<CR>')

-- Format code
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})

-- Translation
vim.keymap.set("n", "<leader>tr", require("pantran").motion_translate, {noremap = true, silent = true, expr = true})
vim.keymap.set("n", "<leader>trr", function() return require("pantran").motion_translate() .. "_" end, {noremap = true, silent = true, expr = true})
vim.keymap.set("x", "<leader>tr", require("pantran").motion_translate, {noremap = true, silent = true, expr = true})

-- Clipboard manager
-- Show clipboard history
vim.keymap.set("n", "<leader>cc", require("telescope").extensions.neoclip.default, {noremap = true, silent = true})
-- Show macro history
vim.keymap.set("n", "<leader>cm", require("telescope").extensions.macroscope.default, {noremap = true, silent = true})
