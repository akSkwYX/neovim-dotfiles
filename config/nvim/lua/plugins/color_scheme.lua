return {
   'ellisonleao/gruvbox.nvim',
   config = function()
      require("gruvbox").setup({
         contrast="hard",
      })

      vim.cmd.colorscheme "gruvbox"
      local hr = tonumber(os.date('%H', os.time()))
      if hr > 6 and hr < 19 then
         vim.o.background "light"
      else
         vim.o.background "dark"
      end
   end
}
