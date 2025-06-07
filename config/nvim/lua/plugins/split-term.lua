return {
   "vimlab/split-term.vim",
   config = function()
      vim.cmd("set splitright")
      vim.cmd("set splitbelow")
      function _G.toggle_term()
         local bufnr = vim.fn.bufnr("%")
         if vim.fn.getbufvar(bufnr, "&buftype") == "terminal" then
            vim.cmd("q")
         else
            vim.cmd("10Term")
         end
      end
      vim.keymap.set({"n", "i", "t"}, "<C-j>", "<cmd>lua toggle_term()<CR>", { noremap = true, silent = true})

      function Kill_terminal_if_last()
         local bufs = vim.api.nvim_list_bufs()
         if #bufs == 2 then
            for _, buf in ipairs(bufs) do
               if vim.fn.getbufvar(buf, "&buftype") == "terminal" then
                  vim.cmd("%bdelete")
               end
            end
         end
      end
      vim.cmd("autocmd QuitPre * lua Kill_terminal_if_last()")
   end,
}
