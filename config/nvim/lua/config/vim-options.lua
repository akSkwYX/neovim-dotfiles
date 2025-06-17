vim.cmd("set tabstop=3")
vim.cmd("set shiftwidth=3")
vim.cmd("set expandtab")
vim.cmd("set relativenumber")

vim.api.nvim_create_autocmd("UserGettingBored", { callback = function() vim.cmd("wqa") end, })
