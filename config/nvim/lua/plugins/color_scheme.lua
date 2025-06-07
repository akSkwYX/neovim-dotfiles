return {
   'catppuccin/nvim',
   config = function()
      local hr = tonumber(os.date('%H', os.time()))
      if hr > 6 and hr < 19 then
         vim.cmd.colorscheme "catppuccin-latte"
      else
         vim.cmd.colorscheme "cattpuccin-mocha"
      end
   end
}
