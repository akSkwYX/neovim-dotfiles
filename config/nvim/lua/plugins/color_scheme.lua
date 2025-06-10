return {
   'ellisonleao/gruvbox.nvim',
   'catppuccin/nvim',
   config = function()
      require("gruvbox").setup({
         contrast="hard"
      })

      vim.cmd.colorscheme "gruvbox"
      -- local hr = tonumber(os.date('%H', os.time()))
      -- if hr > 6 and hr < 19 then
      --    vim.cmd("set background=light")
      -- else
      --    vim.cmd("set background=dark")
      -- end
   end
}
